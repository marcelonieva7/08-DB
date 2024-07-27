SELECT
  m.id AS "ID",
  m.title AS "Title",
  COUNT(c.person_id) + COUNT(mp.person_id) AS "Actors count"
FROM
  "Movie" m
  LEFT JOIN "Character" c
  ON m.id = c.movie_id
  LEFT JOIN "MovieParticipation" mp
  ON m.id = mp.movie_id
WHERE
  m.release_date >= CURRENT_DATE - INTERVAL '5 years'
GROUP BY
  m.id
ORDER BY
  "Actors count" DESC;
