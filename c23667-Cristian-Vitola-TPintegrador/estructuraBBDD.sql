CREATE DATABASE  IF NOT EXISTS `netflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `netflix`;

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `id_content` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title_content` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `director` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cast` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_added` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `rating` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `listed_in` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_content`)
);

DROP TABLE IF EXISTS `production`;

CREATE TABLE `production` (
  `id_production` int NOT NULL AUTO_INCREMENT,
  `id_content` int DEFAULT NULL,
  `title_production` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `genre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `premiere` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `runtime` int DEFAULT NULL,
  `imdb_score` double DEFAULT NULL,
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_production`)
  );

DROP TABLE IF EXISTS `oscar`;

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