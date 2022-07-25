create database ud14ex12;

use ud14ex12;

create table Profesores (
Nombre varchar(25),
Apellido1 varchar (50),
Apellido2 varchar (50),
DNI varchar(9),
Direccion varchar(100),
Titulo varchar(40),
Gana int,
primary key(DNI)
);

create table Cursos (
Nombre varchar(40),
Codigo varchar(9),
Max_Alumnos int,
Fecha_Inicio Date,
Fecha_Fin Date,
Num_Horas int not null,
DNI_Profesor varchar(9),
constraint FK_ProfesoresCursos foreign key(DNI_Profesor) references Profesores(DNI)
on delete cascade on update cascade,
primary key(Codigo)
);

create table Alumnos(
Nombre varchar(25),
Apellido1 varchar (50),
Apellido2 varchar (50),
DNI varchar(9),
Direccion varchar(100),
Sexo char,
Fecha_nacimiento Date,
Codigo_Curso varchar(9),
constraint FK_CursosAlumnos foreign key(Codigo_Curso) references Cursos(Codigo)
on delete cascade on update cascade,
primary key(DNI)
);