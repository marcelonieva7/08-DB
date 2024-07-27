SELECT
  m.id AS "ID",
  m.title AS "Title",
  m.release_date AS "Release date",
  m.duration AS "Duration",
  m.description AS "Description",
  json_build_object(
    'id', f.id,
    'file_name', f.file_name,
    'mime_type', f.mime_type,
    'url', f.url
  ) AS "Poster",
  json_build_object(
    'id', d.id,
    'first_name', d.first_name,
    'last_name', d.last_name,
    'photo', json_build_object(
      'id', pf.id,
      'file_name', pf.file_name,
      'mime_type', pf.mime_type,
      'url', pf.url
    )
  ) AS "Director",
  json_agg(
    DISTINCT jsonb_build_object(
      'id', actors.id,
      'first_name', actors.first_name,
      'last_name', actors.last_name,
      'photo', json_build_object(
        'id', actors.id,
        'file_name', actors.file_name,
        'mime_type', actors.mime_type,
        'url', actors.url
      )
    )
  ) AS "Actors",
  json_agg(
    DISTINCT jsonb_build_object(
      'id', g.id,
      'name', g.name
    )
  ) AS "Genres"
FROM
  "Movie" m
  JOIN "File" f ON m.poster_file_id = f.id
  JOIN "Person" d ON m.director_id = d.id
  LEFT JOIN "File" pf ON d.primary_photo_file_id = pf.id
  LEFT JOIN (
    SELECT
      p.id,
      p.first_name,
      p.last_name,
      pp.id AS photo_id,
      pp.file_name,
      pp.mime_type,
      pp.url
    FROM "Person" p
    LEFT JOIN "File" pp ON p.primary_photo_file_id = pp.id
    LEFT JOIN "Character" c ON p.id = c.person_id
    LEFT JOIN "MovieParticipation" mp ON p.id = mp.person_id
    WHERE c.movie_id = 1 OR mp.movie_id = 1
    GROUP BY p.id, pp.id
  ) AS actors ON m.id = 1
  LEFT JOIN "MovieGenre" mg ON m.id = mg.movie_id
  LEFT JOIN "Genre" g ON mg.genre_id = g.id
WHERE
  m.id = 1
GROUP BY
  m.id, f.id, d.id, pf.id;
