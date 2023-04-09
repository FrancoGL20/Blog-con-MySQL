USE blog;

-- 1. Obtener los posts que no tengan un id de usuario
SELECT * FROM posts WHERE id_usuario IS NULL;

-- 2. Obtener los posts que tengan un id de usuario
SELECT * FROM posts WHERE id_usuario IS NOT NULL; -- id_usuario no es nulo

-- 3. Obtener los posts que tengan un id de usuario y que el status sea igual a activo
SELECT *
FROM posts
WHERE
    id_usuario IS NOT NULL
    AND status = 'activo';

-- 4. Obtener los posts que tengan un id de usuario y que el año de publicación sea 2023
SELECT *
FROM posts
WHERE
    id_usuario IS NOT NULL
    AND YEAR(fecha_publicacion) = 2023;

