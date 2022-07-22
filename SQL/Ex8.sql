show databases;
create database ud14ex8;
use ud14ex8;

create table Piezas(
Codigo int PRIMARY KEY,
Nombre varchar(100)
);

create table Proveedores (
id char(4) PRIMARY KEY,
Nombre varchar(100)
);

create table Suministra (
CodigoPieza int,
idProveedor char(4),
Precio int,
CONSTRAINT FK_PiezaSuminis FOREIGN KEY (CodigoPieza) REFERENCES Piezas(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_ProveedorSuminis FOREIGN KEY (idProveedor) REFERENCES Proveedores(id)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (CodigoPieza, idProveedor)
);
