/*SQL: DDL lenguaje de definición de datos:
       create, alter, drop*/
CREATE DATABASE comercioit;#crear una bd
SHOW DATABASES;#mostrar las bd
DROP DATABASE comercioit;#borrar bd
USE comercioit;#selecciono la bd a usar
CREATE TABLE clientes (
	dni int,
    nombre varchar(20),
    apellido varchar(20)
);
DESCRIBE clientes;#nos muestra la estructura de la tabla
DROP TABLE clientes;#borra la tabla
SHOW TABLES;#mostrar las tablas dentro de la bd seleccionada
CREATE TABLE proveedor (
	id int auto_increment not null,
    ciudad varchar(40) default "Buenos Aires",
    nombre varchar(20),
    apellido varchar(20),
    PRIMARY KEY(id)
);
#restricciones: clave primaria, clave única, clave foránea
DESCRIBE proveedor;
/**************************
********PRACTICA 1*******
***************************/
CREATE DATABASE practica1;
SHOW DATABASES;
USE practica1;
SHOW TABLES;
CREATE TABLE pub(
	cod_pub int auto_increment not null,
    nombre varchar(20),
    licencia_fiscal int(15),
    domicilio varchar(50),
    fecha_apertura date,
    horario varchar(20),
    cod_localidad varchar(3),
    PRIMARY KEY(cod_pub)
);
DESCRIBE pub;
CREATE TABLE titular (
	dni_titular int not null,
    nombre varchar(30) not null,
    domicilio varchar(40),
    cod_pub int,
    PRIMARY KEY (dni_titular)
);
DESCRIBE titular;
CREATE TABLE empleado(
	dni_empleado int not null,
    nombre varchar(30) not null,
    domicilio varchar(40),
    PRIMARY KEY(dni_empleado)
);
DESCRIBE empleado;
/*SQL -> DML lenguaje de manipulación de datos
         insert, delete, update, select */
USE comercioit;#seleciono la bd a usar
INSERT INTO clientes #guardo un dato en la tabla
	(dni, nombre,apellido)
VALUES 
    (123456,"Fulano","Perez");
SELECT *FROM clientes; #muestro los datos guardados en la tabla
INSERT INTO clientes #guardo tres dato en la tabla
	(dni, nombre,apellido)
VALUES 
    (987654,"Ana","Gomez"),
    (456321,"José","Rojas"),
    (885236,"Daniel","Garcia");
INSERT INTO clientes #guardo un solo campo de un dato en la tabla
	(dni)
VALUES 
    (8858582);
INSERT INTO clientes #guardo un dato en la tabla
VALUES 
    (111111,"Fulano","Segundo");




