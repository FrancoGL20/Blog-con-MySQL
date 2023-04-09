USE blog;

-- 1. NO POSIBLE: Obtener la cantidad de posts por mes y por estado (activos o inactivos) que tengan más de 1 post
SELECT MONTHNAME(fecha_publicacion) AS post_month,status, COUNT(*) AS post_quantity
FROM posts
-- WHERE post_quantity > 1 -- No funciona porque WHERE filtra los resultados de la consulta, no de un GROUP BY
GROUP BY status, post_month
ORDER BY post_month ASC;

-- 2. Obtener la cantidad de posts por mes y por estado (activos o inactivos) que tengan más de 1 post
SELECT MONTHNAME(fecha_publicacion) AS post_month,status, COUNT(*) AS post_quantity
FROM posts
GROUP BY status, post_month
HAVING post_quantity > 1 -- HAVING = filtrar los resultados de un GROUP BY
ORDER BY post_month ASC;