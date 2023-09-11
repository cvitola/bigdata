USE netflix;
#Visualizar columnas de cada tabla
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "content";

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "production";

#Contar columnas de cada tabla
SELECT count(*)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "content";

SELECT count(*)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "production";

#contar registros de cada tabla
SELECT COUNT(*)
FROM content;

SELECT COUNT(*)
FROM production;

#Ver Primary Key de cada Tabla
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "content"
AND column_key = "PRI";

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "production"
AND column_key = "PRI";

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "production"
AND column_key = "PRI";

#Ver clave forania de cada tabla
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "production"
AND column_key = "MUL";

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "content"
AND column_key = "PRI";


#Consultas de cada campo para ver los NO NULOS
SELECT COUNT(*)
FROM content
WHERE cast IS NOT NULL; 

#Consultas de cada campo para ver los VACIOS
SELECT COUNT(*)
FROM content
WHERE duration LIKE ""; 

#Consultas de cada campo para ver los NULOS
SELECT COUNT(*)
FROM content
WHERE rating IS NULL; 

#Consultas de cada campo para ver los DISTINTOS
SELECT COUNT( distinct type)
FROM content;

#Consultas de cada campo para ver los NO NULOS
SELECT COUNT(*)
FROM production
WHERE title_production IS NOT NULL; 

#Consultas de cada campo para ver los VACIOS
SELECT COUNT(*)
FROM production
WHERE title_production LIKE ""; 

#Consultas de cada campo para ver los NULOS
SELECT COUNT(*)
FROM production
WHERE title_production IS NULL; 

#Consultas de cada campo para ver los DISTINTOS
SELECT COUNT( distinct title_production)
FROM production;

#4.a Listar todos los registros de la tabla, visualizando las columnas type, 
     #title_content, country, rating, duration, listed_in. 

SELECT type as "Tipo", title_content as "Título", country as "País", rating as "Clasificación", duration as "Duración", listed_in "Listado en"
FROM content;

#B.  Mostrar todas las filas de la tabla, presentando las columnas id_content, title_production, 
#genre, runtime, imdb_Score.

SELECT id_content as "ID Contenido", title_production as "Producción Titulo", genre as "Genero", runtime "Tiempo de Ejecución" , imdb_Score as "Puntaje imdb"
FROM production;

#C.  Generar un listado de todas las películas en las que participe Argentina, mostrando las columnas id_content, 
# type, title_content, director, cast, rating, duration, listed_in.

SELECT id_content as "ID Contenido", type as "Tipo", title_content as "Contenido Titulo", director as "Director", cast as "Elenco", rating as "Clasificación", listed_in as "Listado en"
FROM content
WHERE country like "Argentina";

# D.  Presentar un listado con las columnas id_production, title_production, genre, language, 
# imdb_score de los registros de la tabla en las que el imdb_score sea superior a 7.5.

SELECT id_production as "Produccion ID", title_production as "Producción Titulo", genre as "Genero", language as "Idioma", imdb_score as "Puntaje imdb"
FROM production
WHERE imdb_score > 7.5;

#E.  Mostrar las columnas id_content, type, title_content, listed_in de los registros en los que el 
# rating público general o admitido para todas las edades.

SELECT id_content as "ID Contenido", type as "Tipo", title_content as "Contenido Titulo", listed_in as "Listado en"
FROM content
WHERE rating LIKE "PG%";

# F.  Obtener una lista con las columnas id_production, title_production, genre de los registros en que duration sea 
# menor o igual a 105 minutos pero que además tenga una duración de al menos 60 minutos.

SELECT p.id_production as "ID Produccion", p.title_production as "Produccion Titulo", p.genre as "Genero"
FROM production p INNER JOIN content c
ON p.id_content = c.id_content
WHERE c.duration > 60 and c.duration <= 105;

# G.  Obtener la cantidad de registros discriminando por type y rating, ordenados alfabéticamente por rating y por type.

SELECT type as "Tipo", rating as "Clasificacion" , count(*) as "Cantidad"
FROM content
GROUP BY type, rating
ORDER BY type, rating;

 # H.  Mostrar la cantidad  de películas en los idiomas portugués, francés, alemán, italiano y español, 
 # ordenados por cantidad, de mayor a menor.
 
 SELECT language as "Idioma", count(*) as "Cantidad"
 FROM production
 WHERE language IN ("French","German","Spanish","Italian","Portuguese")
 GROUP BY language
 ORDER BY count(*);
