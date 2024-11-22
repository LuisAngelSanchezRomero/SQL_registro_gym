/**** Creación de la base de datos ***/
CREATE DATABASE IF NOT EXISTS bdregistro;

/*** Ponemos en uso la base de datos ***/
USE bdregistro;

/*** Creación de la tabla 'miembros' ***/
CREATE TABLE IF NOT EXISTS miembros (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    correo_electronico VARCHAR(50),
    telefono VARCHAR(15),
    fecha_nacimiento DATE
);

/*** Creación de la tabla 'reservas' ***/
CREATE TABLE IF NOT EXISTS reservas (
    reserva_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    miembro_id INT,
    clase_id INT,
    fecha_reserva DATE,
    FOREIGN KEY (miembro_id) REFERENCES miembros(id),
    FOREIGN KEY (clase_id) REFERENCES clases(clase_id)
);

/*** Creación de la tabla 'clases' ***/
CREATE TABLE IF NOT EXISTS clases (
    clase_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_clase VARCHAR(50),
    dia DATE,
    hora TIME,
    entrenador_id INT,
    FOREIGN KEY (entrenador_id) REFERENCES entrenadores(entrenador_id)
);

/*** Creación de la tabla 'entrenadores' ***/
CREATE TABLE IF NOT EXISTS entrenadores (
    entrenador_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(250),
    especialidad VARCHAR(250),
    telefono VARCHAR(15)
);

/*** Listar datos en la tabla 'miembros' ***/
SELECT * FROM miembros;

/*** Insertar datos en la tabla 'miembros' ***/
INSERT INTO miembros (nombre, correo_electronico, telefono, fecha_nacimiento) 
VALUES 
('juanito', 'juanito12@gmail.com', '915251233', '2000-04-20'),
('michell', 'michellangel@gmail.com', '915881021', '2002-06-10'),
('fabrizio', 'fabriziort@gmail.com', '910921023', '2005-09-8'),
('laura', 'lauratre@gmail.com', '914225018', '2001-04-12'),
('franc', 'german15@gmail.com', '994225014', '2006-08-22');

/*** Actualizar datos en la tabla 'miembros' ***/
UPDATE miembros 
SET nombre = 'fabiola', correo_electronico = 'fabiolagg21@gmail.com', telefono = '915991031' 
WHERE id = 1;

/*** Eliminar datos de la tabla 'miembros' ***/
DELETE FROM miembros WHERE id = 3;
