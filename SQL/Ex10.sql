create database ud14ex10;
use ud14ex10;

create table Cajeros(
Codigo int, 
Nombre_Apellidos nvarchar(225),
PRIMARY KEY (Codigo)
);

create table Productos(
Codigo int, 
Nombre nvarchar(100),
Precio int,
PRIMARY KEY (Codigo)
);

create table Maquinas_Registradoras(
Codigo int, 
Piso int,
PRIMARY KEY (Codigo)
);

create table Ventas(
Cajero int,
Maquina int,
Producto int,
CONSTRAINT FK_IDCajero FOREIGN KEY (Cajero) REFERENCES Cajeros(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDMaquina FOREIGN KEY (Maquina) REFERENCES Maquinas_Registradoras(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDProducto FOREIGN KEY (Producto) REFERENCES Productos(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);