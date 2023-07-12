create database Proveedores_componentes;

use Proveedores_componentes;

create table Proveedores (
	P varchar (25) primary key not null, 
	P_nombre varchar (25) not null, 
	Categoria int not null, 
	Ciudad varchar (25) not null, 
	)

	insert into Proveedores (P, P_nombre, Categoria, Ciudad) values 
	('P1', 'Carlos', '20', 'Sevilla'), 
	('P2', 'Juan', '10', 'Madrid'), 
	('P3', 'Jose', '30', 'Sevilla'),
	('P4', 'Inma', '20', 'Sevilla'),
	('P5', 'Eva', '30', 'Caceres')

create table Componentes (
C varchar (25) primary key not null, 
C_nombre char (3) not null, 
Color varchar (25) not null, 
Peso int not null, 
Ciudad varchar (25) not null, 
) 

insert into Componentes (C,C_nombre, Color, Peso, Ciudad) values 
('C1', 'X3A', 'Rojo', '12', 'Sevilla'),
('C2', 'B85', 'Verde', '17', 'Madrid'),
('C3','C4B','Azul','17','Malaga'),
('C4','C4B','Rojo','14','Sevilla'),
('C5','VT8','Azul','12','Madrid'),
('C6','C30','Rojo','19','Sevilla')

create table Articulos (
T varchar (25) primary key not null,
T_Nombre varchar (25) not null,
Ciudad varchar (25) not null,
)

insert into Articulos (T,T_Nombre,Ciudad) values
('T1','Clasificadora','Madrid'),
('T2','Perforadora','Malaga'),
('T3','Lectora','Caceres'),
('T4','Consola','Caceres'),
('T5','Mezcladora','Sevilla'),
('T6','Terminal','Barcelona'),
('T7','Cinta','Sevilla')

create table Envios (
P varchar (25) not null,
C varchar (25) not null,
T varchar (25) not null,
Cantidad int not null,
primary key (P,C,T),
CONSTRAINT FK_P FOREIGN KEY (P) REFERENCES Proveedores(P),
CONSTRAINT FK_C FOREIGN KEY (C) REFERENCES Componentes(C),
CONSTRAINT FK_T FOREIGN KEY (T) REFERENCES Articulos(T),
)

insert into Envios (P,C,T,Cantidad)values
('P1','C1','T1','200'),
('P1','C1','T4','700'),
('P2','C3','T1','400'),
('P2','C3','T2','200'),
('P2','C3','T3','200'),
('P2','C3','T4','500'),
('P2','C3','T5','600'),
('P2','C3','T6','400'),
('P2','C3','T7','800'),
('P2','C5','T2','100'),
('P3','C3','T1','200'),
('P3','C4','T2','500'),
('P4','C6','T3','300'),
('P4','C6','T7','300'),
('P5','C2','T2','200'),
('P5','C2','T4','100'),
('P5','C5','T4','500'),
('P5','C5','T7','100'),
('P5','C6','T2','200'),
('P5','C1','T4','100'),
('P5','C3','T4','200'),
('P5','C4','T4','800'),
('P5','C5','T5','400'),
('P5','C6','T4','500')

-- Consulta 1
select A.*, C.*, P.*
from Articulos A 
join Envios E on A.t = E.T 
join Componentes C on E.C = C.C
join Proveedores P on E.P = P.P
where  A.Ciudad = 'Caceres' 

--Consulta 2
select P.P 
from Envios E 
join Proveedores P on E.P =	P.P 
where E.T = 'T1'

--Consulta 3
select distinct Color, Ciudad 
From Componentes

--Consulta 4
select T, Ciudad 
from Articulos
where Ciudad like '%d' or Ciudad like '%e%'

--Consulta 5
select P 
from Envios
where T = 'T1' and C = 'C1';

--Consulta 6
select Articulos.T_Nombre
from Envios
join Articulos on Envios.T = Articulos.T
where Envios.P = 'P1' 
order by Articulos.T_Nombre asc;

--Consulta 7
select distinct Componentes.C 
from Componentes
inner join Envios on Componentes.C = Envios.C 
inner join Articulos on Envios.T = Articulos.T
where Articulos.Ciudad = 'Madrid';

--Consulta 8 
select C 
from Componentes
where C not in (select C from Componentes where Peso < (select min(Peso) from Componentes)) 

--Consulta 9 
select distinct P 
from Envios
where T in ('T1', 'T2') 
group by P 
having count (distinct T) = 2;

--Consulta 10 
select distinct p.P 
from Proveedores p 

inner join Envios e 
on p.P = e.P 

inner join Componentes c on e.C = c.C
inner join Articulos a on e.T = a.T 
where (c.Color = 'Rojo') 
and (a.Ciudad = 'Sevilla' or a.Ciudad = 'Madrid') 

--Consulta 11
select C 
from Componentes
where Ciudad = 'Sevilla' and C in (
	select C 
	from Envios
	Where T in (
		select T 
		from Articulos
		where Ciudad = 'Sevilla' 
	) and P in (
		select P 
		from  Proveedores
		where Ciudad = 'Sevilla'

--Consulta 12 
select distinct T 
from Envios
where C in (select C from Envios where P = 'P1');

--Consulta 13 
select distinct p1.Ciudad , e.C, p2.Ciudad 
from Proveedores p1 
inner join Envios e on p1.P = e.P 
inner join Articulos a on e.T = a.T
inner join Envios e2 on a.T = e2.T 
inner join Proveedores p2 on e2.P = p2.P 
where p1.Ciudad <> p2.Ciudad

--Consulta 15
select count (*) as "Numero de suministros", count (distinct T) as "Numero de articulos destinados", sum (cantidad)
as "Cantidad total de articulos suministrados"
from Envios
where P = 'P2';

--Consulta 16
select C, T, sum (Cantidad) as CantidadTotal 
from Envios
group by C, T;

--Consulta 17 
select distinct Envios.T
from Envios
join Proveedores on Envios.P = Proveedores.P 
join Articulos on Envios.T = Articulos.T
where Proveedores.Ciudad <> 'Madrid' and Articulos.Ciudad <> Proveedores.Ciudad;

--Consulta 18 
select distinct E1.P 
from Envios E1
inner join Envios E2 on E1.C = E2.C
where E2.P in (
select distinct P 
from Envios
inner join Componentes on Envios.C = Componentes.C 
where Color = 'Rojo'
)

--Consulta 19 
select C 
from Envios
group by C 
having avg (Cantidad) > 320 
select distinct T 
from Envios
where C in (
	select	C 
	from Envios
	group by C 
	having avg (Cantidad) > 320

--Consulta 20 
select distinct P 
from Envios
where Cantidad > (
	select avg(Cantidad)
	from Envios
	where C = Envios.C

--Consulta 21 
select C 
from Envios
where T = 'T2' and P 'P2'

--Consulta 22 
select *
from Envios E 
join Componentes C on E.C  = C.C 
where C.Color <> 'Rojo'

--Consulta 23 
select C 
from Envios
where T = 'T1' or T = 'T2'

--Consulta 24 
select E.P, count (*) as Num_Envios 
from Envios E 
join Componentes C on E.C = C.C 
where C.Color = 'Rojo'
group by E.P;

--Consulta 25 
select distinct C.Color 
from Envios E 
join Componentes C on E.C = C.C 
where E.P = 'P1';

--Consulta 26 
select E.*, A.Ciudad 
from Envios E 
join Proveedores P on E.P = P.P
join Componentes C on E.P = C.C 
join Articulos A on E.T = A.T 
where P.Ciudad = C.Ciudad and P.Ciudad = A.Ciudad 

--Consulta 27
select C_nombre
from Componentes c 
inner join Envios e on c.C = e.C 
group by C_nombre
having sum (Cantidad) > 500;

--Consulta 28 
select P 
from Proveedores
where Ciudad = 'Sevilla' and P not in (
	select E.P 
	from Envios	E
	inner join Articulos A on E.T = A.T
	where E.P = Proveedores.P 
	group by E.P 
	having count (distinct A.T) > 2 

--Consulta 29
select T 
from (
	select e.T, count (distinct c.Ciudad) as num_ciudades 
	from Envios e 
	inner join Componentes c on e.C = c.C 
	group by e.T, c.Ciudad
) ciudades_articulo 
group by ciudades_articulo.T 
having count (*) = 1

--Consulta 30
select distinct e.T 
from Envios e 
where not exists(
	select c.C 
	from Componentes c 
	where not exists (
	select e2.T 
	from Envios e2
	where e2.T = e.T and e2.C = c.C

--Consulta 31
select e.P, e.T 
from Envios e
inner join Componentes c on e.C = c.C 
where c.Color = 'Rojo'
group by e.P, e.T 
having count (distinct c.C) >=2 

