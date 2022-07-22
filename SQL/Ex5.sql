
create database ud14ex5;

use ud14ex5;

create table Almacenes (
ID int, 
Lugar varchar(100),
Capacidad int,
PRIMARY KEY (ID)
);

create table Cajas (
Num_Referencia char(5), 
Contenido varchar(100),
Valor int,
ID_Almacen int,
CONSTRAINT FK_AlmacenId FOREIGN KEY (ID_Almacen) REFERENCES Almacenes(ID)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (Num_Referencia)
);
