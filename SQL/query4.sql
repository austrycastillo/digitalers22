show databases;
use world;
show tables;
describe city;
describe country;
describe countrylanguage;
select *from city;
select *from country;
select *from countrylanguage;
/*1) Listar código, nombre, continente y población de 
todos los países*/
SELECT Code, Name,Continent, Population FROM country;
/*
Listar el nombre, el GNP como 'Producto Bruto Nacional',
el GNPOld como 'Producto Bruto Nacional Anterior' y 
la diferencia entre estos como 'Diferencia', para todos 
los países.
*/
SELECT name,gnp as 'Producto Bruto Nacional',
	gnpold as 'Producto Bruto Nacional Anterior',
    gnp - gnpold as Diferencia FROM country;
/*
Listar toda la información de los países, ordenados por 
población de manera ascendente.
*/
SELECT *FROM country ORDER BY population ASC;
#EDITAR-->DML
UPDATE country SET population = 99999 WHERE population = 0;
UPDATE country SET localname = 'cualquier cosa',population = 1, lifeexpectancy = 50
	WHERE code = 'PCN';
#DELETE -->DML
SELECT *FROM city WHERE countrycode = 'PCN';
DELETE FROM city WHERE countrycode = 'PCN';
SELECT *FROM country WHERE code = 'PCN';
SELECT *FROM countrylanguage WHERE countrycode='PCN';
DELETE FROM countrylanguage WHERE countrycode='PCN';
DELETE FROM country WHERE code = 'PCN';




###########PRACTICA PIEZAS Y PROVEEDORES
CREATE DATABASE piepro;
USE piepro;
CREATE TABLE piezas(
	codigo int auto_increment,
    nombre varchar(100),
    PRIMARY KEY(codigo)
);
CREATE TABLE proveedores(
	id char(4),
    nombre varchar(100),
    PRIMARY KEY(id)
);
DROP TABLE suministra;
CREATE TABLE suministra(
	codigopieza int,
    idproveedor char(4),
    precio int,
    PRIMARY KEY(codigopieza,idproveedor),
    FOREIGN KEY(codigopieza) REFERENCES piezas(codigo),
    FOREIGN KEY(idproveedor) REFERENCES proveedores(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);
SHOW TABLES;
DESCRIBE piezas;
DESCRIBE proveedores;
DESCRIBE suministra;
INSERT INTO piezas VALUES 
	(1,"silla"),
    (2,"sofa"),
    (3,"cama"),
    (4,"mesa");
SELECT *FROM piezas;
INSERT INTO proveedores VALUES 
	('1A','Maximuebles'),
    ('2A','El Gran Mueble'),
    ('2B','Digitalers'),
    ('3X','Che');
SELECT *FROM proveedores;
INSERT INTO suministra VALUES
	(1,'3X',150),
    (2,'1A',999),
    (3,'3X',250);
SELECT *FROM suministra;
DELETE FROM piezas WHERE codigo = 4;
#***UPDATE piezas SET codigo = 11 WHERE codigo=1;***
#obtener el precio medio al que se nos sumnistra las piezas
SELECT codigopieza, AVG(precio) FROM suministra;
#obtener los nombres de los proveedores que sumnistran la pieza 1
SELECT p.nombre FROM proveedores as p
	INNER JOIN suministra as s
    ON p.id = s.idproveedor
    AND s.codigopieza = 1;
DROP TABLE suministra;
SELECT *FROM piezas;
DROP TABLE piezas;
 INSERT INTO piezas (nombre) VALUES 
	("silla"),
    ("sofa"),
    ("cama"),
    ("mesa");
DELETE FROM piezas;
TRUNCATE TABLE piezas;
 