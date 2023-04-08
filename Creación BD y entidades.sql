CREATE DATABASE blog;

USE blog;

CREATE TABLE blog.categorias(
    -- id de la categoria (PK) (INT) (NOT NULL) (AUTO_INCREMENT)
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(30) NOT NULL
);

CREATE TABLE blog.etiquetas (
    -- id de la etiqueta (PK) (INT) (NOT NULL) (AUTO_INCREMENT)
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_etiqueta VARCHAR(30) NOT NULL
);

CREATE TABLE blog.usuarios (
    -- id del usuario (PK) (INT) (NOT NULL) (AUTO_INCREMENT)
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(30) NOT NULL,
    password VARCHAR(32) NOT NULL,
    nickname VARCHAR(40) NOT NULL,
    -- UNIQUE es para que no se repita el correo
    email VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE blog.posts (
    -- id del post (PK) (INT) (NOT NULL) (AUTO_INCREMENT)
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(130) NOT NULL,
    -- fecha de publicacion (TIMESTAMP) (NOT NULL)
    fecha_publicacion TIMESTAMP,
    contenido TEXT NOT NULL,
    status CHAR(8) DEFAULT 'activo',
    id_usuario INT NOT NULL,
    id_categoria INT NOT NULL,
    -- FOREIGN KEY es para indicar que es una FK y que hace referencia a la PK de otra tabla
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) on update cascade on delete no action,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id) on update no action on delete no action
);

CREATE TABLE blog.comentarios(
    -- id del comentario (PK) (INT) (NOT NULL) (AUTO_INCREMENT)
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cuerpo_comentario TEXT NOT NULL,
    id_usuario INT NOT NULL,
    id_post INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) on update no action on delete no action,
    FOREIGN KEY (id_post) REFERENCES posts(id) on update no action on delete no action
);

CREATE TABLE blog.posts_etiquetas(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -- id del post (PK) (INT) (NOT NULL)
    id_post INT NOT NULL,
    -- id de la etiqueta (PK) (INT) (NOT NULL)
    id_etiqueta INT NOT NULL,
    -- FOREIGN KEY es para indicar que es una FK y que hace referencia a la PK de otra tabla
    FOREIGN KEY (id_post) REFERENCES posts(id) on update no action on delete no action,
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas(id) on update no action on delete no action
);

-- DROP DATABASE blog;