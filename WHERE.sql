USE blog;

-- 1. Obtener todos los posts que tengan un id menor a 50
SELECT *
FROM posts
WHERE id<50; -- id menor a 50 (se puede usar el símbolo de menor o igual <=)

-- 2. Obtener todos los posts que tengan un id mayor a 50
SELECT *
FROM posts
WHERE id>50; -- id mayor a 50 (se puede usar el símbolo de mayor o igual >=)

-- 3. Obtener todos los posts cuyo status sea igual a activo
SELECT *
FROM posts
WHERE status='activo'; -- status igual a activo (se puede usar el símbolo de diferente !=)

-- 4. Obtener todos los posts cuyo titulo empiece con la letra a
SELECT *
FROM posts
WHERE titulo LIKE 'a%'; -- titulo que empieza con a

-- 5. Obtener todos los posts cuyo titulo termine con la palabra roja
SELECT *
FROM posts
WHERE titulo LIKE '%roja'; -- titulo que termina con roja

-- 6. Obtener todos los posts cuyo titulo contenga la palabra nuevo
SELECT *
FROM posts
WHERE titulo LIKE '%nuevo%'; -- titulo que contiene nuevo

-- 7. Obtener todos los posts cuya fecha de publicación sea menor o igual a 2019-01-01
SELECT *
FROM posts
WHERE fecha_publicacion<='2019-01-01'; -- fecha_publicacion menor o igual a 2019-01-01

-- 8. Obtener todos los posts cuya fecha de publicación esté entre 2022-01-01 y 2023-12-31
SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN '2022-01-01' AND '2023-12-31'; -- fecha_publicacion entre 2022-01-01 y 2023-12-31

-- 9. Obtener todos los posts cuyo id esté entre 40 y 50
SELECT *
FROM posts
WHERE id BETWEEN 40 AND 50; -- id entre 40 y 50

-- 10. Obtener todos los posts cuya fecha de publicación sea en el año 2022
SELECT *
FROM posts
WHERE YEAR(fecha_publicacion)=2022; -- fecha_publicacion en el año 2022

-- 11. Obtener todos los posts cuya fecha de publicación sea en el mes 12   
SELECT *
FROM posts
WHERE MONTH(fecha_publicacion)=04; -- fecha_publicacion en el mes 12

-- 12. Obtener todos los posts cuya fecha de publicación sea en el día 22
SELECT *
FROM posts
WHERE DAY(fecha_publicacion)=22; -- fecha_publicacion en el día 22