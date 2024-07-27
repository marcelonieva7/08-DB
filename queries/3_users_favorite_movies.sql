SELECT
  u.id as "ID",
  u.username as "Username",
  ARRAY_AGG(fm.movie_id) AS "Favorite movie IDs"
FROM
  "User" u
  LEFT JOIN
  "FavoriteMovie" fm
  ON u.id = fm.user_id
GROUP BY
  u.id
ORDER BY
  u.id;
