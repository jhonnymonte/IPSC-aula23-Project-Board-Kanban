CREATE DATABASE PELUQUERIA_CANINA;

USE PELUQUERIA_CANINA;

CREATE TABLE DUENO(
DNI INT NOT NULL,
NOMBRE VARCHAR(25) NOT NULL,
APELLIDO VARCHAR(25) NOT NULL,
TELEFONO INT DEFAULT NULL,
DIRECCION VARCHAR(225) DEFAULT NULL,
PRIMARY KEY(DNI)
);

CREATE TABLE PERRO (
ID_PERRO INT NOT NULL auto_increment,
NOMBRE VARCHAR(225) DEFAULT NULL,
FECHA_NAC date,
SEXO VARCHAR(30) default NULL,
DNI_DUENO INT NOT NULL,
PRIMARY KEY(ID_PERRO),
FOREIGN KEY(DNI_DUENO) REFERENCES DUENO(DNI),
INDEX IDX_NOMPERRO(NOMBRE)
);

CREATE TABLE HISTORIAL (
ID_HISTORIAL INT NOT NULL AUTO_INCREMENT,
FECHA DATE,
PERRO VARCHAR(225) DEFAULT NULL,
DESCRIPCION VARCHAR(500) DEFAULT NULL,
MONTO INT DEFAULT NULL,
PRIMARY KEY (ID_HISTORIAL),
FOREIGN KEY (PERRO) REFERENCES PERRO(NOMBRE)
);

INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (19023456, "PEDRO", "PICAPIEDRA", 112345678, "CALLE ROCA N° 123, PIEDRADURA");
INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (19234654, "PABLO", "MARMOL", 115467890, "CALLE PEÑAZCO N° 300, PIEDRADURA");
INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (21346974, "PEDRO", "PEREZ", 112334578, "CALLE PASEO N° 53, SALEM");
INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (30247041, "JOSE", "ALONZO", 115347890, "CALLE PIEDRA N° 2300, CABA");

INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("DYNO", "2018-03-23", "MACHO", 19023456 );
INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("RETXY", "2016-05-30", "HEMBRA", 19234654 );
INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("LIZ", "2020-11-20", "HEMBRA", 21346974 );
INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("BLACK", "2021-09-11", "MACHO", 30247041 );

INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2012-01-30", "DYNO", "CANICHE", 3500 );
INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2005-11-15", "RETXY", "PITBULL", 5600 );
INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2022-05-10", "LIZ", "DOBERMAN", 7000 );
INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2005-11-15", "BLACK", "MESTIZO", 1200 );
