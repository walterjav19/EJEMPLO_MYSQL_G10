drop database ejemplo;
create database ejemplo;
use ejemplo;


CREATE TABLE Estudiante (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    direccion VARCHAR(200),
    carrera VARCHAR(50) NOT NULL
);


CREATE TABLE Profesor (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    departamento VARCHAR(50),
    especialidad VARCHAR(50)
);


CREATE TABLE Materia (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre_materia VARCHAR(100) NOT NULL,
    descripcion TEXT,
    creditos INT NOT NULL,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor)
);


CREATE TABLE Salon (
    id_salon INT PRIMARY KEY AUTO_INCREMENT,
    nombre_salon VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL,
    ubicacion VARCHAR(100)
);


CREATE TABLE Curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    id_materia INT,
    id_profesor INT,
    periodo_academico VARCHAR(20) NOT NULL,
    cupo_maximo INT NOT NULL,
    horario VARCHAR(50) NOT NULL,
    id_salon INT,
    FOREIGN KEY (id_materia) REFERENCES Materia(id_materia),
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor),
    FOREIGN KEY (id_salon) REFERENCES Salon(id_salon)
);


CREATE TABLE Inscripcion (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATE NOT NULL,
    estado_inscripcion VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiante(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

INSERT INTO Estudiante (nombre_completo, fecha_nacimiento, correo, telefono, direccion, carrera) 
VALUES 
('Juan Pérez', '2000-05-10', 'juan.perez@example.com', '555-1234', 'Calle 123, Ciudad', 'Ingeniería en Sistemas'),
('Ana Gómez', '1999-11-22', 'ana.gomez@example.com', '555-5678', 'Avenida Siempre Viva, Ciudad', 'Derecho'),
('Carlos Ramírez', '2001-03-15', 'carlos.ramirez@example.com', '555-8765', 'Calle Los Pinos, Ciudad', 'Medicina'),
('María López', '2000-01-30', 'maria.lopez@example.com', '555-4321', 'Avenida Central, Ciudad', 'Ingeniería Industrial'),
('Sofía Fernández', '1998-12-12', 'sofia.fernandez@example.com', '555-1122', 'Calle Las Flores, Ciudad', 'Arquitectura');

INSERT INTO Profesor (nombre_completo, correo, telefono, departamento, especialidad)
VALUES 
('Dr. Jorge Martínez', 'jorge.martinez@example.com', '555-4322', 'Ingeniería', 'Redes de Computadoras'),
('Dra. Laura Sánchez', 'laura.sanchez@example.com', '555-3344', 'Ciencias de la Salud', 'Cardiología'),
('Mtro. Pedro Hernández', 'pedro.hernandez@example.com', '555-2233', 'Ciencias Sociales', 'Derecho Internacional'),
('Ing. Lucía Torres', 'lucia.torres@example.com', '555-7766', 'Arquitectura', 'Diseño Urbano'),
('Dra. Patricia Díaz', 'patricia.diaz@example.com', '555-6655', 'Ciencias Naturales', 'Biología Molecular');


INSERT INTO Materia (nombre_materia, descripcion, creditos, id_profesor)
VALUES 
('Redes de Computadoras', 'Estudio de las redes y comunicaciones entre computadoras', 46, 1),
('Derecho Internacional', 'Estudio de las leyes que rigen entre países', 34, 3),
('Biología Molecular', 'Estudio de los organismos a nivel celular', 5, 5),
('Diseño Urbano', 'Conceptos y prácticas del diseño de ciudades y urbanización', 14, 4),
('Cardiología Avanzada', 'Estudio de enfermedades del corazón y su tratamiento', 106, 2);

INSERT INTO Salon (nombre_salon, capacidad, ubicacion)
VALUES 
('Aula 101', 30, 'Edificio A, Planta Baja'),
('Aula 202', 25, 'Edificio B, Primer Piso'),
('Laboratorio 303', 20, 'Edificio C, Segundo Piso'),
('Auditorio 1', 100, 'Edificio D, Planta Baja'),
('Aula 204', 35, 'Edificio B, Primer Piso');


INSERT INTO Curso (id_materia, id_profesor, periodo_academico, cupo_maximo, horario, id_salon)
VALUES 
(1, 1, '2024-1', 25, 'Lunes 8:00-10:00', 1),
(2, 3, '2024-1', 20, 'Martes 10:00-12:00', 2),
(3, 5, '2024-1', 15, 'Miércoles 14:00-16:00', 3),
(4, 4, '2024-1', 30, 'Jueves 9:00-11:00', 4),
(5, 2, '2024-1', 10, 'Viernes 13:00-15:00', 5);


INSERT INTO Inscripcion (id_estudiante, id_curso, fecha_inscripcion, estado_inscripcion)
VALUES 
(1, 1, '2024-01-15', 'Inscrito'),
(2, 2, '2024-01-16', 'Inscrito'),
(3, 3, '2024-01-17', 'Inscrito'),
(4, 4, '2024-01-18', 'Inscrito'),
(5, 5, '2024-01-19', 'Inscrito'),
(1, 2, '2024-01-20', 'Pendiente'),
(2, 3, '2024-01-21', 'Pendiente'),
(3, 4, '2024-01-22', 'Pendiente'),
(4, 5, '2024-01-23', 'Pendiente'),
(5, 1, '2024-01-24', 'Inscrito');





/*
SELECT columna1, columna2 FROM nombre_tabla;


SELECT * FROM nombre_tabla;

SELECT columna1, columna2 FROM nombre_tabla WHERE condición;

SELECT columna1, columna2 FROM nombre_tabla LIMIT número;

SELECT columna1, columna2 FROM nombre_tabla WHERE condición1 AND condición2;*/

