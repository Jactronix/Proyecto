Create database problema;
use problema;
show databases;

CREATE TABLE TBL_Comunidad (
  id_Comunidad INT NOT NULL,
  Nombre  VARCHAR(50),
  km_inicio VARCHAR(20),
  km_fin VARCHAR(20),
  PRIMARY KEY(id_Comunidad)
);

ALTER TABLE TBL_Comunidad MODIFY COLUMN id_Comunidad int auto_increment;
SHOW CREATE TABLE TBL_Comunidad;

CREATE TABLE `tbl_comunidad` (
  `id_Comunidad` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `km_inicio` varchar(20) DEFAULT NULL,
  `km_fin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_Comunidad`)
);

INSERT INTO TBL_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr7Road','1KM', '2');
INSERT INTO TBL_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr8Road','1KM', '2');
INSERT INTO TBL_Comunidad (Nombre, km_inicio, km_fin) VALUES ('Cr9Road','1KM', '2');

CREATE TABLE TBL_Carretera (
  id_Carretera INT NOT NULL,
  Nombre VARCHAR(20),
  Categoría VARCHAR(20),
PRIMARY KEY(id_Carretera)
);

ALTER TABLE TBL_Carretera MODIFY COLUMN id_Carretera int auto_increment;
SHOW CREATE TABLE TBL_Carretera;

CREATE TABLE `tbl_carretera` (
  `id_Carretera` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) DEFAULT NULL,
  `Categoría` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_Carretera`)
);

INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('longway', 'autopista');
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('shortway', 'convencional');
INSERT INTO TBL_Carretera(Nombre, Categoría) Values ('middleway', 'ciclovia');

CREATE TABLE TBL_Tramo (
  id_Tramo INT   NOT NULL,
  TBL_Carretera_id_Carretera INT NOT NULL ,
  Inicio_carretera VARCHAR(20),
  fin_carretera  VARCHAR(20),
PRIMARY KEY(id_Tramo),
  FOREIGN KEY(TBL_Carretera_id_Carretera)
  REFERENCES TBL_Carretera(id_Carretera)
  );
  
  CREATE TABLE TBL_Comunidad_has_Tramo (
  TBL_Comunidad_id_Comunidad  INT   NOT NULL ,
  TBL_Tramo_id_Tramo INT   NOT NULL   ,
PRIMARY KEY(TBL_Comunidad_id_Comunidad , TBL_Tramo_id_Tramo)    ,
  FOREIGN KEY(TBL_Comunidad_id_Comunidad )
    REFERENCES TBL_Comunidad (id_Comunidad ),
  FOREIGN KEY(TBL_Tramo_id_Tramo) 
  REFERENCES TBL_Tramo(id_Tramo)
  );

  
