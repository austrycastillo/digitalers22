/*
SQL
-DDL: CREATE, ALTER, DROP
-DML: INSERT, SELECT, UPDATE, DELETE
*/
#DDL CREATE
CREATE DATABASE empresa;
SHOW DATABASES;
DROP DATABASE empresa;
USE empresa;
CREATE TABLE empleados (
	cedula int(8) not null,
    nombre varchar(10),
    apellido varchar(15),
    cargo varchar (15),
    tiempo_servicio smallint,
    PRIMARY KEY(cedula)
);
DESCRIBE empleados;
#DML INSERT
#query 1 del insert
INSERT INTO empleados 
	(cedula,nombre,apellido,cargo,tiempo_servicio)
VALUES
	(20345666,"Mario","Perez","Administrador",4);
#query 2 del insert
INSERT INTO empleados 
	(cedula,nombre,apellido,cargo,tiempo_servicio)
VALUES
	(126785287,"María","Perez","Secretaria",10);
#query 3 del insert
INSERT INTO empleados 
	(cedula,nombre,apellido,cargo,tiempo_servicio)
VALUES
	(17675823,"Diego","Rodríguez","Vendedor",2);
#DDL: ALTER---->ALTER TABLE ___ OPERACIONES
#OPERACIONES: DROP, CHANGE, MODIFY, ADD, RENAME
ALTER TABLE empleados DROP COLUMN tiempo_servicio;
DESCRIBE empleados;
ALTER TABLE empleados CHANGE cargo_empleado cargo varchar(30);
ALTER TABLE empleados MODIFY cargo varchar(30);
ALTER TABLE empleados ADD COLUMN direccion varchar(50);
ALTER TABLE empleados DROP COLUMN direccion2;
ALTER TABLE empleados RENAME empleaditos;
SHOW TABLES;
ALTER TABLE empleaditos RENAME empleados;
#DML: SELECT
SELECT *FROM empleados;
SELECT nombre FROM empleados;
SELECT nombre,apellido FROM empleados;
#CLAUSULA WHERE
SELECT *FROM empleados WHERE nombre = "María";
SELECT cedula,nombre FROM empleados WHERE nombre = "María";
#OPERADORES RELACIONALES = < <= > >= <> !=
SELECT *FROM empleados WHERE cedula <> 17675823;
#CLAUSULA ORDER BY
SELECT *FROM empleados ORDER BY nombre ASC;
SELECT *FROM empleados ORDER BY nombre DESC;
#OPERADORES LOGICOS AND OR NOT
SELECT apellido FROM empleados WHERE cedula = 17675823 AND nombre = "Diego";
SELECT *FROM empleados WHERE  NOT nombre = "Diego";
#CLAVE PRIMARIA, CLAVE FORANEA
#NORMALIZACIÓN(EVITAR LA REDUNDANCIA DE DATOS).
#EJERCICIO TIENDA DE INFORMÁTICA
CREATE DATABASE tiendaInfo;
SHOW DATABASES;
USE tiendainfo;
CREATE TABLE fabricantes(
	codigo int,
    nombre varchar(30),
    PRIMARY KEY (codigo)
);
SHOW TABLES;
DESCRIBE fabricantes;
CREATE TABLE articulos(
	codigo int,
    nombre varchar(40),
    precio int,
    fabricante int,
    PRIMARY KEY(codigo),
    FOREIGN KEY(fabricante) REFERENCES fabricantes(codigo)
);
DESCRIBE articulos;
INSERT INTO fabricantes 
VALUES 
	(123,"Uno"),
    (456,"Dos"),
    (789,"Tres"),
    (321,"Cuatro");
SELECT *FROM fabricantes;
INSERT INTO articulos
VALUES 
	(111,"articulo 1",150,123),
	(222,"articulo 2",800,123),
    (333,"articulo 3",560,321),
    (444,"articulo 4",250,456),
    (555,"articulo 5",11,123),
    (666,"articulo 6",990,321);
SELECT *FROM articulos;













