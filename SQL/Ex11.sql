create database ud14ex11;
use ud14ex11;

create table Facultades(
Codigo int, 
Nombre nvarchar(100),
PRIMARY KEY (Codigo)
);

create table Investigadores(
DNI varchar(8), 
Nombre_Apellidos nvarchar(255),
Facultad int,
CONSTRAINT FK_IDFacultad FOREIGN KEY (Facultad) REFERENCES Facultades(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (DNI)
);

create table Equipos(
NumSerie char(8), 
Nombre nvarchar(100),
Facultad int,
CONSTRAINT FK_FacultadID FOREIGN KEY (Facultad) REFERENCES Facultades(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (NumSerie)
);

create table Reservas(
DNI varchar(8), 
NumSerie char(8),
Comienzo datetime,
Fin datetime,
CONSTRAINT FK_IDInvestigadores FOREIGN KEY (DNI) REFERENCES Investigadores(DNI)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDIEquipos FOREIGN KEY (NumSerie) REFERENCES Equipos(NumSerie)
ON DELETE CASCADE ON UPDATE CASCADE
);


