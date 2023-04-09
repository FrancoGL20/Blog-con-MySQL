USE blog;

-- 1. LEFT JOIN (con intersección)
SELECT *
FROM usuarios
LEFT JOIN posts
ON usuarios.id = posts.id_usuario;
-- Se muestran todos los usuarios, aunque no tengan posts

-- 2. LEFT JOIN (sin intersección)
SELECT *
FROM usuarios
LEFT JOIN posts
ON usuarios.id = posts.id_usuario
WHERE posts.id_usuario IS NULL;
-- Se muestran todos los usuarios que no tienen posts

-- 3. RIGHT JOIN (con intersección)
SELECT *
FROM usuarios
RIGHT JOIN posts
ON usuarios.id = posts.id_usuario;
-- Se muestran todos los posts, aunque no tengan usuarios

-- 4. RIGHT JOIN (sin intersección)
SELECT *
FROM usuarios
RIGHT JOIN posts
ON usuarios.id = posts.id_usuario
WHERE usuarios.id IS NULL;
-- Se muestran todos los posts que no tienen usuarios

-- 5. INNER JOIN
SELECT *
FROM usuarios
INNER JOIN posts
ON usuarios.id = posts.id_usuario;
-- Se muestran todos los usuarios que sí tienen posts asociados

-- -- 6. FULL OUTER JOIN (no existe en MySQL, se simula con UNION)
-- SELECT *
-- FROM usuarios
-- FULL OUTER JOIN posts
-- ON usuarios.id = posts.id_usuario;
-- -- Se muestran todos los usuarios y posts sin importar si tienen o no intersección

-- 7. FULL OUTER JOIN (con UNION)
SELECT *
FROM usuarios
LEFT JOIN posts
ON usuarios.id = posts.id_usuario
UNION
SELECT *
FROM usuarios
RIGHT JOIN posts
ON usuarios.id = posts.id_usuario
WHERE usuarios.id IS NULL;
-- Se muestran todos los usuarios y posts sin importar si tienen o no intersección

-- 8. OUTER JOIN
SELECT *
FROM usuarios
LEFT JOIN posts
ON usuarios.id = posts.id_usuario
WHERE posts.id_usuario IS NULL;
UNION
SELECT *
FROM usuarios
RIGHT JOIN posts
ON usuarios.id = posts.id_usuario
WHERE usuarios.id IS NULL;
-- Se muestran los usuarios sin posts y los posts sin usuarios