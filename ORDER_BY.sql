USE blog;

-- 1. Obtener los posts ordenados por fecha de publicación de forma descendente
SELECT * 
FROM posts 
ORDER BY fecha_publicacion DESC; -- DESC = descendente, ASC = ascendente

-- 2. Obtener los posts ordenados por fecha de publicación de forma ascendente
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC; -- ASC = ascendente, DESC = descendente

-- 3. Obtener los posts ordenados por título de forma descendente
SELECT *
FROM posts
ORDER BY titulo ASC;

-- 4. Obtener los posts ordenados por id de forma descendente
SELECT *
FROM posts
ORDER BY id DESC;

-- 5. Obtener los 6 primeros posts ordenados por id de forma ascendente
SELECT *
FROM posts
ORDER BY id ASC
LIMIT 6; -- LIMIT = limitar la cantidad de resultados