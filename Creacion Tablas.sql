USE db_escuelas;
CREATE TABLE escuelas (
 id int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(45) DEFAULT NULL,
  localidad varchar(45) DEFAULT NULL,
  provincia varchar(45) DEFAULT NULL,
  capacidad int(11) DEFAULT NULL,
  PRIMARY KEY (id));

CREATE TABLE alumnos (
    id int(11) NOT NULL auto_increment,
    id_escuela int(11)  NULL,
    legajo int(11)  NULL,
    nombre varchar(45)  NULL,
    nota decimal(10,0)  NULL,
    grado int(11)  NULL,
    email varchar(45)  NULL,
    primary key (id)
);