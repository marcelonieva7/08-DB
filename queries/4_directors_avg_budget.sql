SELECT
  p.id as "ID",
  CONCAT(p.first_name, ' ', p.last_name) AS "Director name",
  TO_CHAR(AVG(m.budget), 'FM$999,999,999.00') AS "Average budget"
FROM
  "Person" p
  JOIN
  "Movie" m
  ON p.id = m.director_id
GROUP BY
  p.id
ORDER BY
  "Average budget" DESC;
