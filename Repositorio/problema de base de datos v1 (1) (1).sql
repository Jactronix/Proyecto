Create database problema; #Se crea la base de datos "problema".
use problema; #Se usa la base de datos "problema".
show databases; #se usa "show tables" para enseñar las tablas.

CREATE TABLE TBL_Comunidad ( #Se crea una tabla llamada "TBL_Comunidad ".
  id_Comunidad INT NOT NULL, #Se introduce el valor  id_Comunidad a la tabla.
  Nombre  VARCHAR(50), # Se introduce el valor Nombre a la tabla.
  km_inicio VARCHAR(20), # Se introduce el valor  km_inicio  a la tabla.
  km_fin VARCHAR(20), # Se introduce el valor km_fin a la tabla.
  PRIMARY KEY(id_Comunidad) # Se establece la clave primaria "(id_Comunidad)".
);

ALTER TABLE TBL_Comunidad MODIFY COLUMN id_Comunidad int auto_increment; #Se modifica la tabla "TBL_Comunidad".
SHOW CREATE TABLE TBL_Comunidad; #Se analiza la tabla "TBL_Comunidad" para generar la consulta.

CREATE TABLE `tbl_comunidad` ( 
  `id_Comunidad` int NOT NULL AUTO_INCREMENT, 
  `Nombre` varchar(50) DEFAULT NULL,
  `km_inicio` varchar(20) DEFAULT NULL,
  `km_fin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_Comunidad`)
);

INSERT INTO TBL_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr7Road','1KM', '2'); #Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr8Road','1KM', '2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr9Road','1KM', '2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr10Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr11Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr12Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr13Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr14Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr15Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr16Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr17Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBl_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr18Road','1KM','2');#Se agrega un registro a la tabla "TBL_Comunidad" y se retorna, se borran los valores duplicados y retornan los valores unicos.

CREATE TABLE TBL_Carretera ( #Se crea la tabla llamada "TBL_Carretera".
  id_Carretera INT NOT NULL, #Se introduce en la tabla el valor "id_Carretera".
  Nombre VARCHAR(20), #Se introduce en la tabla el valor "Nombre".
  Categoría VARCHAR(20), #Se introduce en la tabla el valor "Categoría".
PRIMARY KEY(id_Carretera) #Se usa la clave primaria llamada "(id_Carretera)".
);

ALTER TABLE TBL_Carretera MODIFY COLUMN id_Carretera int auto_increment; #Se modifica la tabla "TBL_Carretera".
SHOW CREATE TABLE TBL_Carretera; #Se hace el analisis de la tabla "TBL_Carretera"  para comenzar una consulta.

CREATE TABLE `tbl_carretera` (
  `id_Carretera` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) DEFAULT NULL,
  `Categoría` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_Carretera`)
);

INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('longway', 'autopista'); #Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('shortway', 'convencional');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('middleway', 'ciclovia');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('WorldCup', 'autopista');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('BounceThatAss', 'convencional');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('MilkShake', 'ciclovia');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('ActingWat', 'autopista');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('LonelyGod', 'convencional');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('GoodSoup', 'ciclovia');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('RouteAlter', 'autopista');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('Skilltag', 'convencional');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('TheOne', 'ciclovia');#Se agrega un registro a la tabla "TBL_Carretera" y se retorna, se borran los valores duplicados y retornan los valores unicos.

CREATE TABLE TBL_Tramo ( #Se crea la tabla "TBL_Tramo ".
  id_Tramo INT   NOT NULL, #Se añade el registro llamado "id_Tramo".
  TBL_Carretera_id_Carretera INT NOT NULL , #Se añade el registro llamado TBL_Carretera_id_Carretera".
  Inicio_carretera VARCHAR(20),#Se añade el registro llamado " Inicio_carretera".
  fin_carretera  VARCHAR(20),#Se añade el registro llamado " fin_carretera ".
PRIMARY KEY(id_Tramo), #Se usa la clave primaria "(id_Tramo)".
  FOREIGN KEY(TBL_Carretera_id_Carretera) #Se introduce la clave foranea "(TBL_Carretera_id_Carretera)".
  REFERENCES TBL_Carretera(id_Carretera) #Se usa como referencia "TBL_Carretera(id_Carretera)".
  );
  
  CREATE TABLE TBL_Comunidad_has_Tramo ( #Se crea la tabla "TBL_Comunidad_has_Tramo".
  TBL_Comunidad_id_Comunidad  INT   NOT NULL , #Se añade el registro "TBL_Comunidad_id_Comunidad " a la tabla.
  TBL_Tramo_id_Tramo INT   NOT NULL   , #Se añade el registro "TBL_Tramo_id_Tramo " a la tabla.
PRIMARY KEY(TBL_Comunidad_id_Comunidad , TBL_Tramo_id_Tramo)    ,  #Se usa la clave primaria "(TBL_Comunidad_id_Comunidad , TBL_Tramo_id_Tramo) ".
  FOREIGN KEY(TBL_Comunidad_id_Comunidad ) #Se usa la clave foranea "(TBL_Comunidad_id_Comunidad )", debido a la union de las tablas.
    REFERENCES TBL_Comunidad (id_Comunidad ), #Se referencia la tabla BL_Comunidad (id_Comunidad ) con su clave primaria.
  FOREIGN KEY(TBL_Tramo_id_Tramo)  #Se usa la clave foranea "TBL_Comunidad (id_Comunidad )".
  REFERENCES TBL_Tramo(id_Tramo) #Se referencia la tabla TBL_Tramo(id_Tramo) con su respectiva clave primaria.
  );

SELECT * FROM tbl_comunidad; #Se usa una consulta para recuperar todas las filas de la tabla "tbl_comunidad".
SELECT * FROM tbl_carretera;#Se usa una consulta para recuperar todas las filas de la tabla "tbl_carretera".
SELECT * FROM tbl_carretera WHERE Categoría ='autopista'; #Se recupera los registros de la tabla "tbl_carretera" en una columna en especifico "categoría".
SELECT * FROM tbl_Carretera WHERE id_carretera > 5;#Se recupera los registros de la tabla "tbl_carretera" en una columna en especifico "id_carretera".
SELECT * FROM tbl_comunidad limit 5;#Se usa para recuperar columnas en la tabla llamada "tbl comunidad y se restringen los registros que retornan poniendoles un limite.
SELECT * FROM tbl_comunidad limit 19; #Se usa para recuperar columnas en la tabla llamada "tbl_comunidad" y se restringen los registros que retornan poniendoles un limite.
UPDATE tbl_comunidad SET Nombre = 'shortbich' LIMIT 1;#Se realiza una actualización a toda la tabla llamada "tbl_comunidad".
UPDATE tbl_carretera SET Nombre='hola?' LIMIT 2; #Se realiza una actualización a toda la tabla llamada "tbl_carretera".
DELETE FROM tbl_comunidad WHERE km_inicio = 2 LIMIT 3; #Se usa la consulta para borrar algunas columnas de la tabla "tbl_comunidad".
DELETE FROM tbl_carretera WHERE Nombre= 'hola?' LIMIT 2;#Se usa la consulta para borrar algunas columnas de la tabla "tbl_carretera".
