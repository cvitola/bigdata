USE netflix;
# Creacion tabla OSCAR
CREATE TABLE IF NOT EXISTS oscar (
	id_oscar INT NOT NULL AUTO_INCREMENT,
	id_inf INT DEFAULT NULL,
	id_res INT DEFAULT NULL,
	id_content INT DEFAULT NULL,
	title_oscar VARCHAR(128)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    year_ceremony INT DEFAULT NULL,
	category VARCHAR(256)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
	name VARCHAR(256)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
	winner TINYINT DEFAULT NULL,
	directed_by VARCHAR(128)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
	based_on VARCHAR(512)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
	starring VARCHAR(512)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
	distributed_by VARCHAR(256)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
	budget VARCHAR(128)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
	budget_x_million DOUBLE DEFAULT NULL,
	box_office VARCHAR(128)  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
	box_office_x_million DOUBLE DEFAULT NULL,
	imdb DOUBLE DEFAULT NULL,
	metascore INT DEFAULT NULL,
	rotten_tomatoes INT DEFAULT NULL,
    PRIMARY KEY (id_oscar)
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\oscar.csv'
INTO TABLE oscar
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

# consigna de nulos no nuilos wet

use netflix;
SELECT
    "id_oscar" as "Campos",
    COUNT(CASE WHEN id_oscar IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN id_oscar = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN id_oscar IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT id_oscar) AS distintos
FROM oscar
UNION
(SELECT
    "id_inf",
    COUNT(CASE WHEN id_inf IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN id_inf = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN id_inf IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT id_inf) AS distintos
FROM oscar)
UNION
(SELECT
    "id_res",
    COUNT(CASE WHEN id_res IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN id_res = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN id_res IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT id_res) AS distintos
FROM oscar)
UNION
(SELECT "id_content",
    COUNT(CASE WHEN id_content IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN id_content = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN id_content IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT id_content) AS distintos
FROM oscar)
UNION
(SELECT
    "title_oscar",
    COUNT(CASE WHEN title_oscar IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN title_oscar = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN title_oscar IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT title_oscar) AS distintos
FROM oscar)
UNION
(SELECT
    "year_ceremony",
    COUNT(CASE WHEN year_ceremony IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN year_ceremony = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN year_ceremony IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT year_ceremony) AS distintos
FROM oscar)
UNION
(SELECT
    "category",
    COUNT(CASE WHEN category IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN category = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN category IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT category) AS distintos
FROM oscar)
UNION
(SELECT
    "name",
    COUNT(CASE WHEN name IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN name = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN name IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT name) AS distintos
FROM oscar)
UNION
(SELECT
    "winner",
    COUNT(CASE WHEN winner IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN winner = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN winner IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT winner) AS distintos
FROM oscar)
UNION
(SELECT
    "directed_by",
    COUNT(CASE WHEN directed_by IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN directed_by = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN directed_by IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT directed_by) AS distintos
FROM oscar)
UNION
(SELECT
    "based_on",
    COUNT(CASE WHEN based_on IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN based_on = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN based_on IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT based_on) AS distintos
FROM oscar)
UNION
(SELECT
    "starring",
    COUNT(CASE WHEN starring IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN starring = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN starring IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT starring) AS distintos
FROM oscar)
UNION
(SELECT
    "distributed_by",
    COUNT(CASE WHEN distributed_by IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN distributed_by = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN distributed_by IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT distributed_by) AS distintos
FROM oscar)
UNION
(SELECT
    "budget",
    COUNT(CASE WHEN budget IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN budget = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN budget IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT budget) AS distintos
FROM oscar)
UNION
(SELECT
    "budget_x_million",
    COUNT(CASE WHEN budget_x_million IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN budget_x_million = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN budget_x_million IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT budget_x_million) AS distintos
FROM oscar)
UNION
(SELECT
    "box_office",
    COUNT(CASE WHEN box_office IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN box_office = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN box_office IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT box_office) AS distintos
FROM oscar)
UNION
(SELECT
    "box_office_x_million",
    COUNT(CASE WHEN box_office_x_million IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN box_office_x_million = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN box_office_x_million IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT box_office_x_million) AS distintos
FROM oscar)
UNION
(SELECT
    "imdb",
    COUNT(CASE WHEN imdb IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN imdb = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN imdb IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT imdb) AS distintos
FROM oscar)
UNION
(SELECT
    "metascore",
    COUNT(CASE WHEN metascore IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN metascore = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN metascore IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT metascore) AS distintos
FROM oscar)
UNION
(SELECT
    "rotten_tomatoes" ,
    COUNT(CASE WHEN rotten_tomatoes IS NOT NULL THEN 1 END) AS no_nulos,
    COUNT(CASE WHEN rotten_tomatoes = '' THEN 1 END) AS vacios,
    COUNT(CASE WHEN rotten_tomatoes IS NULL THEN 1 END) AS nulos,
    COUNT(DISTINCT rotten_tomatoes) AS distintos
FROM oscar);

#5A_ Seleccionar los títulos con runtime superior a 90 y lenguaje Francés. Incluir el tipo de contenido. Ordenar los títulos de menor a mayor.
SELECT o.title_oscar as "Título", c.type as "Tipo de Contenido"
FROM oscar o 
INNER JOIN production p	ON o.id_content = p.id_content
INNER JOIN content c ON c.id_content = o.id_content
WHERE p.runtime > 90 
AND p.language LIKE "French"
ORDER BY o.title_oscar ASC;

#5B_ Seleccionar aquellos títulos que posean director y país de origen. Filtrar por aquellas que tengan un Runtime mayor a 70. Ordenar los títulos de manera ascendente.

SELECT o.title_oscar as "Título"
FROM oscar o 
INNER JOIN production p	ON o.id_content = p.id_content
INNER JOIN content c ON c.id_content = o.id_content
WHERE p.runtime > 70 
AND c.director != ""
AND c.country != ""
ORDER BY o.title_oscar ASC;

#5C_ Sume el Runtime de las películas que tengan como único país de origen United States, India, Japan, Spain y Mexico, discriminando y ordenando por país. Incluya la columna género.

SELECT c.country AS "Pais de Origen",  p.genre AS "Género", SUM(p.runtime) AS "Sumatoria RUNTIME"
FROM production p
INNER JOIN content c ON p.id_content = c.id_content
WHERE c.country IN ("Mexico","Spain","India","Japan","United States")
GROUP BY c.country, p.genre
ORDER BY c.country;

#5D_ Mostrar las películas clasificadas como drama por netflix, que hayan ganado el Oscar entre 2010 y 2020 y que estén en esta plataforma

SELECT p.title_production as "Título"
FROM production p
INNER JOIN content c ON p.id_content = c.id_content
INNER JOIN oscar o ON p.id_content = o.id_content
WHERE p.genre LIKE "drama"
AND o.winner = 1 
AND o.year_ceremony BETWEEN 2010 AND 2020;

#5E_ Seleccionar el título y el género de las películas puntuadas por IMDB entre 7 y 9. Obtener los títulos en idioma inglés.

SELECT title_production as "Título", genre as "Genero"
FROM production 
WHERE imdb_score BETWEEN 7 AND 9;

#5F_ Cuente la cantidad de títulos de cada género de la tabla productions. Ordene de manera descendente por las cantidades y ascendente por el género.

SELECT genre as "Género", COUNT(*) as "Cantidad"
FROM production
GROUP BY genre
ORDER BY genre ASC, COUNT(*) DESC;

#5G_ Analizar la relación entre Budget y Box Office. Calcular el ratio Budget/Box Office para las peliculas con un puntaje IMDB entre 7 y 9, sin mostrar nulos y no repetidos.

SELECT DISTINCT p.title_production as "Título", o.budget_x_million/o.box_office_x_million as "Relacion"
FROM oscar o
INNER JOIN production p ON p.id_content = o.id_content
WHERE o.budget_x_million IS NOT NULL 
AND o.box_office_x_million IS NOT NULL
AND p.imdb_score BETWEEN 7 AND 9;

#5H_ Obtener las películas que ganaron el Oscar a Best Picture, ordenadas de manera descendente por año ganador.

SELECT title_oscar as "Película", year_ceremony AS "Año en que ganó"
FROM oscar
WHERE category LIKE "Best Picture"
AND winner = 1
ORDER BY year_ceremony DESC;

#5I_ Mostrar el título y el año de ceremonia de los oscar para las peliculas puntuadas por IMDB entre 7 y 9. Ordenarlos alfabéticamente por títulos y de mayor a menor por año de ceremonia.

SELECT o.title_oscar AS "Título", o.year_ceremony AS "Año Ceremonia"
FROM oscar o 
INNER JOIN production p ON p.id_content = o.id_content
WHERE p.imdb_score BETWEEN 7 AND 9
ORDER BY o.title_oscar, o.year_ceremony;

#5J_ Mostrar una lista de las películas originales de netflix ganadoras del oscar (si las hubiera) mostrando las columnas title, category, genre runtime, el imdb_score, la premiere y el año de la ceremonia.

SELECT p.title_production as "Titulo", o.category as "Categoria", p.genre as "Genero", p.runtime AS "Duracion", p.imdb_score as "Puntaje", p.premiere AS "Premiere", o.year_ceremony AS "Año de Ceremonia"
FROM production p
INNER JOIN oscar o ON o.id_content = p.id_content
WHERE o.winner = 1;

#5K_  Mostrar una lista de las nominaciones al oscar de películas originales de netflix (si las hubiera) que no fueron ganadoras del premio,mostrando las columnas título, category y año de la ceremonia.

SELECT p.title_production as "Titulo", o.category as "Categoria", o.year_ceremony AS "Año de Ceremonia"
FROM production p
INNER JOIN oscar o ON o.id_content = p.id_content
WHERE o.winner = 0;