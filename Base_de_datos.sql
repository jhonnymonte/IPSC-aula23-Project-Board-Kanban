CREATE DATABASE PELUQUERIA_CANINA;
USE PELUQUERIA_CANINA;
CREATE TABLE DUENO(
DNI INT NOT NULL,
NOMBRE VARCHAR(25) NOT NULL,
APELLIDO VARCHAR(25) NOT NULL,
TELEFONO INT DEFAULT NULL,
DIRECCION VARCHAR(50) DEFAULT NULL,
PRIMARY KEY(DNI)
);
CREATE TABLE PERRO (
ID_PERRO INT NOT NULL auto_increment,
NOMBRE VARCHAR(25) DEFAULT NULL,
FECHA_NAC date,
SEXO VARCHAR(10) default NULL,
DNI_DUENO INT NOT NULL,
PRIMARY KEY(ID_PERRO),
FOREIGN KEY(DNI_DUENO) REFERENCES DUENO(DNI),
INDEX IDX_NOMPERRO(NOMBRE)
);
 CREATE TABLE HISTORIAL (
 ID_HISTORIAL INT NOT NULL AUTO_INCREMENT,
 FECHA DATE,
 PERRO VARCHAR(20) DEFAULT NULL,
 DESCRIPCION VARCHAR(200) DEFAULT NULL,
 MONTO INT DEFAULT NULL,
 PRIMARY KEY (ID_HISTORIAL),
 FOREIGN KEY (PERRO) REFERENCES PERRO(NOMBRE)
);

INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (20025556, "Carlos", "Paez", 2914603345, "Mitre 456, Bahia Blanca");
INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (19234654, "Pedro", "Marques", 2914558954, "Soler 300, Bahia Blanca");
INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (31343974, "Alberto", "Rodriguez", 2914567754, "Chiclana 45, Cerri");
INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (29430412, "Cesar", "Martinez", 2932565543, "Adrian veres 2450, Punta alta ");

INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("DYNO", "2018-03-23", "MACHO", 20025556 );
INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("RETXY", "2016-05-30", "HEMBRA", 19234654 );
INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("LIZ", "2020-11-20", "HEMBRA", 31343974 );
INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("BLACK", "2021-09-11", "MACHO", 29430412 );

INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2012-01-30", "DYNO", "CANICHE", 3500 );
INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2005-11-15", "RETXY", "PITBULL", 5600 );
INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2022-05-10", "LIZ", "DOBERMAN", 7000 );
INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2005-11-15", "BLACK", "MESTIZO", 1200 );



#EJERCICIO 11#
SELECT DNI_DUENO FROM PERRO where date(FECHA_NAC) >= '2017-01-01';