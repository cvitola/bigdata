USE db_escuelas;
/* 1. Obtener todos los datos de la tabla Alumnos  */
SELECT *
FROM alumnos;

/*2. Seleccionar el legajo y el nombre de la tabla Alumnos  */
SELECT legajo as LEGAJO, nombre as NOMBRE
FROM alumnos;

/*3. MNostrar todos los datos de quellos alumnos aprobados */

SELECT *
FROM alumnos
WHERE nota >= 7;

/*4. Mostrar ID y Nombre de las escuelas cuya capacidad sea inferior a 200  */
SELECT id, nombre
FROM escuelas
WHERE capacidad < 200;

/*4. Nombre y nota de auqellos alumnos cuya nota sea entre 7 y 10  */
SELECT nombre, nota
FROM alumnos
/*WHERE nota >=7 and nota <=10;*/
WHERE nota BETWEEN 7 and 10;

/* Nombre Loc y pcia de aquellas escuelas q esten en BA o JUjuY */
SELECT nombre, localidad, provincia
FROM escuelas
WHERE Provincia = "Buenos Aires" or provincia ="Jujuy";

/* 8) Mostrar todos los datos de los alumnos llamados Minna Klauber. */
SELECT *
FROM alumnos
where nombre ="Minna Klauber"; /* where nombre like "xcxcxc" */

/* 9) Repetir el ejercicio anterior, pero con aquellos que no se llamen Minna Klauber. */
SELECT *
FROM alumnos
where nombre != "Minna Klauber"; /* where nombre not like "xcxcxc" */

#10) Mostrar todos los datos de los alumnos cuyo nombre comience con “Ma”.
SELECT *
FROM alumnos
WHERE nombre LIKE "Ma%";
#11) Mostrar todos los datos de los alumnos cuyo nombre termine con “er”.
SELECT *
FROM alumnos
WHERE nombre LIKE "%er";
#12) Mostrar todos los datos de los alumnos cuyo nombre contenga “tt”.
SELECT *
FROM alumnos
WHERE nombre LIKE "%tt%";

#USOS DE JOIN Y ALIAS PARA TABLAS Y CAMPOS
#13) Mostrar el legajo, el nombre del alumno y el nombre de la escuela de todos los alumnos.
USE db_escuelas;
SELECT alumnos.legajo, alumnos.nombre, escuelas.nombre
FROM alumnos INNER JOIN escuelas
    ON alumnos.id_escuela = escuelas.id;
#14) Modificar el ejercicio anterior utilizando alias de tablas y columnas.

SELECT a.legajo AS "Legajo Alumno", a.nombre as "Nombre Alumno", e.nombre AS "Nombre Escuela"
FROM alumnos a INNER JOIN escuelas e
    ON a.id_escuela = e.id;
    
#15) Mostrar todos los alumnos, tengan o no escuela asignada.
SELECT a.legajo AS "Legajo Alumno", a.nombre as "Nombre Alumno", e.nombre AS "Nombre Escuela"
FROM alumnos a LEFT JOIN escuelas e
	ON a.id_escuela = e.id;
#16) Mostrar todas las escuelas con el nombre de cada alumno (aunque no tengan escuela asignada).
SELECT e.* , a.nombre as "Nombre Alumno"
FROM escuelas e RIGHT JOIN alumnos a
	ON a.id_escuela = e.id;

#USO DE IS NULL / IS NOT NULL
#17) Mostrar todos los datos de los alumnos que tengan notas.
#18) Mostrar todos los datos de los alumnos que no tengan notas.
#19) Mostrar legajo, nombre y nota de los alumnos que no tengan escuela.
