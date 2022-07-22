create database ud14ex6;

use ud14ex6;

create table Peliculas (
ID int, 
Nombre varchar(100),
Calificacion_Edad int,
PRIMARY KEY (ID)
);

create table Salas (
ID int, 
Nombre varchar(100),
Pelicula int,
CONSTRAINT FK_PeliculaId FOREIGN KEY (Pelicula) REFERENCES Peliculas(ID)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (ID)
);


