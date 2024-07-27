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
    'last_name', d.last_name
  ) AS "Director"
FROM
  "Movie" m
  JOIN "Country" c ON m.country_id = c.id
  JOIN "File" f ON m.poster_file_id = f.id
  JOIN "Person" d ON m.director_id = d.id
  JOIN "MovieGenre" mg ON m.id = mg.movie_id
  JOIN "Genre" g ON mg.genre_id = g.id
WHERE
  c.id = 1
  AND m.release_date >= '2022-01-01'
  AND m.duration > 135
  AND (g.name = 'Action' OR g.name = 'Drama')
GROUP BY
  m.id, f.id, d.id;
