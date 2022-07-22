show databases;
create database ud14ex4;
use ud14ex4;

create table Departamentos(
Codigo int PRIMARY KEY,
Nombre varchar(100),
Presupuesto int
);

create table Empleados (
DNI varchar(8) PRIMARY KEY,
Nombre varchar(100),
Apellidos varchar(255),
Departamento int,
CONSTRAINT FK_DepaEmpleado FOREIGN KEY (Departamento) REFERENCES Departamentos(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);
