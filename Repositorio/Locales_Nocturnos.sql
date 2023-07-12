create table Titular (
DNI_Titular int primary key not null,
nombre varchar (25) not null,
domicilio varchar (50),
cod_pub int not null,
CONSTRAINT FK_PUB FOREIGN KEY (cod_pub) REFERENCES PUB(cod_pub)
)

create table Empleado (
DNI_Empleado int primary key not null, 
nombre varchar (25)not null,
domicilio varchar (50),
)

create table Existencias (
cod_articulo int primary key not null,
nombre varchar (25) not null,
cantidad int not null,
precio int not null CHECK (precio > 0),
cod_pub int not null,
CONSTRAINT FK_local FOREIGN KEY (cod_pub) REFERENCES PUB(cod_pub)
)

create table Localidad (
cod_localidad int primary key not null,
nombre varchar (25) not null,
)

create table PUB_Empleado(
cod_pub int not null,
DNI_Empleado int not null,
funcion varchar (50)CHECK (funcion IN ('Escoltas', 'Bartender', 'Cajero')) not 
primary key (cod_pub,DNI_Empleado,funcion),
CONSTRAINT FK_PLocal FOREIGN KEY (cod_pub) REFERENCES PUB(cod_pub),
CONSTRAINT FK_Empleado FOREIGN KEY (DNI_Empleado) REFERENCES Empleado(DNI_Empleado)