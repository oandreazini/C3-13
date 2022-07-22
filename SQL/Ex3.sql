show databases;
create database ud14ex3;
use ud14ex3;

create table Fabricantes(
Codigo int PRIMARY KEY,
Nombre varchar(100)
);

create table Articulos (
Codigo int PRIMARY KEY,
Nombre varchar(100),
Precio int,
Fabricante int,
CONSTRAINT FK_ArtiFabri FOREIGN KEY (Fabricante) REFERENCES Fabricantes(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);
