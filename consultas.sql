use ejemplo;


-- select aall
SELECT * FROM Estudiante;

-- CONSULTA CON COLUMNAS ELEGIDAS POR EL USUARIO
SELECT nombre_completo,carrera FROM Estudiante;

SELECT * FROM Estudiante WHERE carrera = 'Ingeniería Industrial';

SELECT * FROM SALON ORDER BY capacidad;


-- where con condiciones logicas


select * from Inscripcion;

SELECT * FROM Inscripcion WHERE estado_inscripcion='Inscrito' AND id_curso=1;