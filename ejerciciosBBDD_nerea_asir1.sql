--Ejercicio D
create database ejercicioD;

use ejercicioD;

	create table Alumno(
		NumMatricula varchar (7) primary key,
		Nombre varchar (20),
		FechaNacimiento date,
		Telefono int (9));
		
	create table Recibe(
		NumMatricula varchar (7),
		CodAsignatura int (10),
		CursoEscolar varchar (10),
		primary key (NumMatricula, CodAsignatura, CursoEscolar),
		foreign key (NumMatricula) references Alumno (NumMatricula),
		foreign key (CodAsignatura) references Asignatura (CodAsignatura));
		
	create table Asignatura (
		CodAsignatura int (10) primary key,
		Nombre varchar (10),
		IdProfesor int (6),
		foreign key (IdProfesor) references Profesor (IdProfesor));
		
	create table Profesor (
		IdProfesor int (6) primary key,
		NIF_P varchar (10) NOT NULL,
		Nombre varchar (20),
		Especialidad varchar (20),
		Telefono int (9),
		unique key (NIF_KEY);
	
---------------------lo mismo pero con alter---------------------
create database ejercicioD;

use ejercicioD;

	create table Alumno(
		NumMatricula varchar (7),
		Nombre varchar (20),
		FechaNacimiento date,
		Telefono int (9));
			
	create table Asignatura (
		CodAsignatura int (10) primary key,
		Nombre varchar (10),
		IdProfesor int (6));
		
	create table Recibe(
		NumMatricula varchar (7),
		CodAsignatura int (10),
		CursoEscolar varchar (10));
		
		create table Profesor (
		IdProfesor int (6),
		NIF_P varchar (10) NOT NULL,
		Nombre varchar (20),
		Especialidad varchar (20),
		Telefono int (9));
		
	alter table Alumno
		add primary key (NumMatricula);

	alter table Profesor
		add primary key (IdProfesor),
		add unique key (NIF_P);

	alter table Asignatura
		add foreign key (IdProfesor) references Profesor (IdProfesor);

	alter table Recibe
		add primary key (NumMatricula, CodAsignatura, CursoEscolar),
		add foreign key (NumMatricula) references Alumno (NumMatricula),
		add foreign key (CodAsignatura) references Asignatura (CodAsignatura);
	
--Ejercicio E
create database ejercicioE;

use ejercicioE;

	create table Empleado(
		ID int (10),
		DNI int (10) NOT NULL,
		Nombre varchar (20),
		FechaNac date,
		Telefono int(9),
		Salario float(6,2),
		CodLocalidad int(7),
		primary key (ID),
		unique key (DNI),
		foreign key (CodLocalidad) references Localidad (CodLocalidad));
		
	create table Localidad(
		CodLocalidad int (7),
		Nombre varchar (20),
		CodProvincia int (5),
		primary key (CodLocalidad),
		foreign key (CodProvincia) references Provincia (CodProvincia));
		
	create table Provincia(
		CodProvincia int (5),
		Nombre varchar (20),
		CodRegion int (5),
		primary key (CodProvincia),
		foreign key (CodRegion) references Region (CodRegion));
		
	create table Region(
		CodRegion int (5),
		Nombre varchar (20),
		primary key (CodRegion));
	
---------------------lo mismo pero con alter---------------------
create database ejercicioE;

use ejercicioE;

	create table Empleado(
		ID int (10),
		DNI int (10) NOT NULL,
		Nombre varchar (20),
		FechaNac date,
		Telefono int(9),
		Salario float(6,2),
		CodLocalidad int(7));
		
	create table Localidad(
		CodLocalidad int (7),
		Nombre varchar (20),
		CodProvincia int (5));
		
	create table Provincia(
		CodProvincia int (5),
		Nombre varchar (20),
		CodRegion int (5));
		
	create table Region(
		CodRegion int (5),
		Nombre varchar (20));
		
	alter table Region
		add primary key (CodRegion);
		
	alter table Provincia
		add primary key (CodProvincia),
		add foreign key (CodRegion) references Region (CodRegion);
		
	alter table Localidad
		add primary key (CodLocalidad),
		add foreign key (CodProvincia) references Provincia (CodProvincia);
		
	alter table Empleado
		add primary key (ID),
		add unique key (DNI),
		add foreign key (CodLocalidad) references Localidad (CodLocalidad);
		
--Nerea Sánchez López
