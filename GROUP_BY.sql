use blog;

-- 1. Obtener el número de posts por status (activo, inactivo)
SELECT status,COUNT(*) AS post_number -- Cuenta el número de posts por status
FROM posts
WHERE id_usuario IS NOT NULL -- id_usuario no es nulo
GROUP BY status;

-- 2. Obtener el número de posts por cada año
SELECT YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_quantity
FROM posts
WHERE id_usuario IS NOT NULL
GROUP BY post_year;

-- 3. Obtener el número de posts por cada mes
SELECT MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM posts
WHERE id_usuario IS NOT NULL
GROUP BY post_month;

-- 4. Obtener el número de posts por cada mes y por cada status
SELECT status,MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM posts
WHERE id_usuario IS NOT NULL
GROUP BY status,post_month;
