
create database ud14ex2;
use ud14ex2;

create table Temas (
Clave_Tema smallint, 
Nombre varchar(40),
PRIMARY KEY (Clave_Tema)
);

create table Autores (
Clave_Autor int, 
Nombre varchar(60),
PRIMARY KEY (Clave_Autor)
);

create table Editoriales (
Clave_Editorial smallint, 
Nombre varchar(60),
Direccion varchar(60),
Telefono varchar(15), 
PRIMARY KEY (Clave_Editorial)
);

create table Libros (
Clave_Libro int, 
Titulo varchar(60),
Idioma varchar(15),
Formato varchar(15),
Clave_Editorial smallint,
CONSTRAINT FK_EditorialLib FOREIGN KEY (Clave_Editorial) REFERENCES Editoriales(Clave_Editorial)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (Clave_Libro)
);

create table Ejemplares (
Clave_Ejemplar int, 
ID_Libro int,
Num_Orden smallint,
Edición smallint,
Ubicacion varchar(15),
Categoria char,
CONSTRAINT FK_LibroId FOREIGN KEY (ID_Libro) REFERENCES Libros(Clave_Libro)
ON DELETE CASCADE ON UPDATE CASCADE, 
PRIMARY KEY (Clave_Ejemplar)
);

create table Socios (
Clave_Socio int, 
Nombre varchar(60),
Direccion varchar(60),
Telefono varchar(15), 
Categoria char,
PRIMARY KEY (Clave_Socio)
);

create table Prestamos (
Num_Orden int,
ID_Socio int, 
ID_Ejemplar int,
Fecha_Prestamo date,
Fecha_Devolucion date,
Notas blob,
CONSTRAINT FK_SocioId FOREIGN KEY (ID_Socio) REFERENCES Socios(Clave_Socio)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_EjemplarId FOREIGN KEY (ID_Ejemplar) REFERENCES Ejemplares(Clave_Ejemplar)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (Num_Orden)
);

create table Trata_Sobre (
ID_Libro int,
ID_Tema smallint,
CONSTRAINT FK_Libro_Id FOREIGN KEY (ID_Libro) REFERENCES Libros(Clave_Libro)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_TemaId FOREIGN KEY (ID_Tema) REFERENCES Temas(Clave_Tema)
ON DELETE CASCADE ON UPDATE CASCADE
);

create table Escrito_Por (
ID_Libro int,
ID_Autor int,
CONSTRAINT FK_Clave_Libro FOREIGN KEY (ID_Libro) REFERENCES Libros(Clave_Libro)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Clave_Autor FOREIGN KEY (ID_Autor) REFERENCES Autores(Clave_Autor)
ON DELETE CASCADE ON UPDATE CASCADE
);




