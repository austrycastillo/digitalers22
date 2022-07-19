#LABORATORIO ETAPA 1 DEL ALUMNI
show databases;
CREATE DATABASE laboratorio;
USE laboratorio;
CREATE TABLE articulos (
	articuloID integer,
    nombre varchar(50),
    precio double,
    stock integer,
    PRIMARY KEY(articuloID)
);
CREATE TABLE clientes(
	clienteID integer,
    nombre varchar(25),
    apellido varchar(25),
    cuit char(16),
    direccion varchar(50),
    comentarios varchar(50),
    PRIMARY KEY (clienteID)
); 
CREATE TABLE facturas(
	letra char,
    numero integer,
    clienteID integer,
    articuloID integer,
    fecha date,
    monto double,
    PRIMARY KEY(letra,numero),
    FOREIGN KEY(clienteID) REFERENCES clientes(clienteID),
    FOREIGN KEY(articuloID) REFERENCES articulos(articuloID)
);
SHOW TABLES;
DESCRIBE clientes;
DESCRIBE articulos;
DESCRIBE facturas;
INSERT INTO articulos VALUES
	(95,"Webcam con micrófono plug & play",513.35,39),
    (157,"Apple airpods pro",979.75,152),
    (335,"Lavasecarropas automático samsung",1589.50,12),
    (411,"Gloria Trevi / Gloria / CD+DVD",2385.70,2);
INSERT INTO clientes VALUES
	(5,"Santiago","González",'23-24582359-9',"Uriburu 588 -7ºA","VIP");
SELECT *FROM articulos;
SELECT *FROM clientes;
INSERT INTO clientes VALUES
	(14,"Gloria","Fernández",'23-35965852-5',"Constitución 323","GBA"),
    (17,"Gonzalo","López",'23-33587416-0',"Arias 2624","GBA"),
    (26,"Carlos","García",'23-4232130-9',"Pasteur 322-2ºC","VIP"),
    (50,"Micaela","Altieri",'23-22885566-5',"Santamarina 1255","GBA");
INSERT INTO facturas VALUES
	("A",28,14,335,'2021-03-18',1589.50);
SELECT *FROM facturas;
INSERT INTO facturas VALUES
	('A',39,26,157,'2021-04-12',979.75),
    ('B',8,17,95,'2021-04-25',513.35),
    ('B',12,5,411,'2021-05-03',2385.70),
    ('B',19,50,157,'2021-05-26',979.75);
SHOW DATABASES;
SELECT *,(monto + 100) /2 as 'TOTAL CALCULO LOCO' FROM facturas;
SELECT *,(monto + 100) /2 as 'TOTAL CALCULO LOCO' FROM facturas LIMIT 3 OFFSET 2;
SELECT monto, round(monto)  as 'TOTAL CALCULO LOCO' FROM facturas;
SELECT  nombre, upper(nombre)  as 'COLUMNA LOCA' FROM clientes;
SELECT  nombre, apellido, direccion, concat('nombre: ',nombre,', apellido: ',apellido)  as 'COLUMNA LOCA' FROM clientes;
SELECT  nombre, char_length(nombre)  as 'COLUMNA LOCA' FROM clientes;
SELECT count(*)FROM facturas;
SELECT sum(monto)FROM facturas;
SELECT max(monto)FROM facturas;
SELECT *FROM clientes as c 
	INNER JOIN facturas as f 
    ON c.clienteID = f.clienteID;
SELECT *FROM articulos a 
	INNER JOIN facturas f 
    ON a.articuloID = f.articuloID
    WHERE f.letra = 'A';
SELECT *FROM articulos a 
	RIGHT JOIN facturas f 
    ON a.articuloID = f.articuloID;
#DELETE
SHOW DATABASES;
USE tiendainfo;
SHOW TABLES;
DESCRIBE articulos;
SELECT *FROM articulos;
DESCRIBE fabricantes;
SELECT *FROM fabricantes;
DELETE FROM fabricantes WHERE codigo = 123;
UPDATE fabricantes SET nombre = "otro nombre" WHERE codigo = 123;





