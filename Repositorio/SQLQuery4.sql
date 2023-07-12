create database Empleados_de_una_empresa;

use	Empleados_de_una_empresa;

create table Empleados01(
	dni Decimal(8,0) primary key not null, 
	Nombre Varchar(10) not null, 
	apellido1 varchar(15) not null, 
	apellido2 varchar(15) not null, 
	direcc1 varchar (40) not null, 
	direcc2 varchar (40) not null, 
	ciudad varchar (20) not null, 
	provincia varchar (20) not null, 
	cod_postal varchar (5) not null, 
	sexo char (1) not null check (sexo in ('H', 'M')),
	fecha_nacimiento date not null, 

);
alter table Empleados01 add valoración int default 5;
alter table Empleados01 alter column nombre varchar (10) null;
alter table Empleados01 alter column direcc1 varchar(40) not null;


insert into Empleados01
(dni, nombre, apellido1, apellido2, direcc1, direcc2, ciudad, provincia, cod_postal, sexo, fecha_nacimiento) values 
('1020106235', 'Jacobo', 'Leal', 'Bustamante', 'Avenida 23 #52 - 50', 'Calle 42 B #64 - 50', 'Bello', 'Antioquia', '051050', 'M', '01/03/2005'),
('1023103901', 'Lorena', 'Castro', 'Jaramillo', 'Calle 34 #45 - 23', ' Calle 30 # 43 - 89', 'Medellín', 'Antioquia', '050030', 'F', '05/05/2005'),
('8892341234', 'Brahian', 'Alexander', 'Murillo', 'Calle 12 #31 - 78', 'Calle 54 #24 - 90', 'Bello', 'Antioquia', '051050', 'M', '01/07/1997'),
('6278434352', 'Daniel', 'Piupitar', 'Gastly', 'Avenida 52 #38 - 41', 'Avenida 78 #93 - 45', 'Medellín', 'Antioquia', '293789', 'M', '02/12/2004'),
('9435803425', 'Juan', 'Casas', 'Rojas', 'Avenida 67 #47 - 57','Calle 108 #82 - 20', 'Medellín','Antioquia', '289223', 'M', '23/04/2002'),
('2332515613', 'Gina', 'Calderon', 'Selastraga', 'Avenida 89 #78 - 90', 'Calle 89 #90 -91', 'Medellín','Antioquia', ' 782309', 'F', '09/09/1998'),
('9823423123', 'Luis', 'Gonzales', 'Saldarriaga', 'Calle 73 #87 - 65', 'Avenida 69 #33 - 89', 'Copacabana','Antioquia','123431', 'M', '08/03/1992')

create table Historial_laboral (
	empleado_dni decimal (8,0) primary key not null, 
	trabajo_cod decimal (5,0) not null, 
	fecha_inicio date not null, 
	fecha_fin date not null, 
	dpto_cod decimal (8,0) not null,
	supervisor_dni decimal (8,0) not null,
	constraint fk_dni foreign key (empleado_dni) references empleados(dni),
	)
create table Historial_Salarial (
	empleado_dni decimal (8,0) not null, 
	salario int not null, 
	fecha_comienzo date not null, 
	fecha_final date not null, 
	constraint fk_dni foreign key (empleado_dni) references empleados (dni),
	)
insert into	Historial_Salarial (empleado_dni, salario, fecha_comienzo, fecha_final) values 

('1020106235', '800,000', '09/02/2021', '26/04/2023'),
('1023103901', '800,000', '07/10/2019', '30/03/2021'),
('8892341234', '400,000', '03/11/2015', '02/07/2021'),
('6278434352', '700,000', '24/12/2016', '27/02/2020'),
('9435803425', '900,000', '22/07/2022', '16/07/2022'),
('2332515613', '500,000', '07/09/2021', '18/08/2022'),
('9823423123', '800,000', '03/04/2017', '19/05/2021')

create table departamentos (
	dpto_cod decimal (5,0) primary key not null, 
	nombre_dpto varchar (30) not null unique,
	dpto_padre int not null, 
	presupuesto int not null,
	pres_actual int not null, 
	)

create table Estudios (
	empleado_dni decimal (8,0) primary key not null, 
	universidad decimal (5,0) not null, 
	año int not null,
	grado varchar (3) not null, 
	especialidad varchar (20) not null, 
	constraint fk_dni foreign key (empleado_dni) references empleados (dni) 
	)

create table Universidades (
	uni_cod decimal (5,0) primary key not null, 
	nombre_uni varchar (25)  not null, 
	ciudad varchar (20) not null, 
	municupio varchar (2) not null, 
	cod_postal varchar (5) not null, 
	)
create table Trabajos (
	Trabajo_cod decimal (5,0) not null, 
	Nombre_trabajo varchar (20) not null unique, 
	salario_min decimal (2,0) not null, 
	salario_max decimal (2,0) not null, 
	)
select Nombre,apellido1, apellido2, ciudad 
from Empleados
where (ciudad = 'Bello')

--Vista 7

create view Nombre_Empleados 
as 
select nombre, apellido1, apellido2, ciudad 
from Empleados
where (ciudad = 'Bello') 

select * from Nombre_Empleados

--Vista 8
select CONCAT (nombre, ' ', apellido1, ' ', apellido2) as nombre_completo,
DATEDIFF (year, fecha_nacimiento, getdate ()) as edad 
from Empleados;


create view Informacion_Empleados as
select empleado_dni concat ( Nombre, ' ', apellido1, ' ', apellido2) as 
nombre_completo, 
datediff (year, fecha_nacimiento, getdate ()) as edad
from Empleados, Historial salarial
where dni = empleado_dni;

select * from Informacion_Empleados;

--Vista 9

create view Informacion_actual as 
select e.* hs.salario
from Informacion_Empleados e
join (
	select empleado_dni, max (fecha_final) as ultima_fecha 
	from Historial_Salarial
	group by empleado_dni
)	ultimos_salarios
on e.empleado_dni = ultimos_salarios. empleado_dni 
join Historial_Salarial hs
on ultimos_salarios.empleado_dni = hs.empleado and ultimos_salarios.ultima_fecha 
= hs.fecha_final;


select * from Informacion_actual;
