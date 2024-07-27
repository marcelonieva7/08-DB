SELECT
  p.id as "ID",
  p.first_name as "First name",
  p.last_name as "Last name",
  TO_CHAR(SUM(m.budget), 'FM$999,999,999.00') AS "Total movies budget"
FROM
  "Person" p
  JOIN "Character" c
  ON p.id = c.person_id
  JOIN "Movie" m
  ON c.movie_id = m.id
GROUP BY
  p.id
UNION
SELECT
  p.id as "ID",
  p.first_name as "First name",
  p.last_name as "Last name",
  TO_CHAR(SUM(m.budget), 'FM$999,999,999.00') AS "Total movies budget"
FROM
  "Person" p
  JOIN "MovieParticipation" mp
  ON p.id = mp.person_id
  JOIN "Movie" m
  ON mp.movie_id = m.id
GROUP BY
  p.id