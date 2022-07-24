create database ud14ex9;
use ud14ex9;

create table Cientificos (
DNI varchar(8), 
Nombre_Apellidos nvarchar(225),
PRIMARY KEY (DNI)
);

create table Proyectos (
ID char(4),
Nombre nvarchar(225),
Horas int,
PRIMARY KEY (ID)
);

create table Asignado_A(
Cientifico varchar(8),
Proyecto char(4),
CONSTRAINT FK_DNIAsignadoA FOREIGN KEY (Cientifico) REFERENCES Cientificos(DNI)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDAsignadoA FOREIGN KEY (Proyecto) REFERENCES Proyectos(ID)
ON DELETE CASCADE ON UPDATE CASCADE
);