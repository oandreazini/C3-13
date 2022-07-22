show databases;
create database ud14ex7;
use ud14ex7;

create table Despachos(
Numero int PRIMARY KEY,
Capacidad int
);

create table Directores (
DNI varchar(8) PRIMARY KEY,
NomApels varchar(255),
DNIJefe varchar(8),
Despacho int,
CONSTRAINT FK_DespDirector FOREIGN KEY (Despacho) REFERENCES Despachos(Numero)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_DirectorJefe FOREIGN KEY (DNIJefe) REFERENCES Directores(DNI)
ON DELETE CASCADE ON UPDATE CASCADE
);
