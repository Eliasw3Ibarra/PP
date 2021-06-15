DROP DATABASE Clinica;

CREATE DATABASE Clinica;

USE Clinica;

CREATE TABLE Cirujano
(
	id_cirujano INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,

	PRIMARY KEY (id_cirujano)
);

INSERT
	INTO
		Cirujano
	VALUES 
(2855, 'Dunia ', 'Jaime', 'Arenales 800 1º1'),
(4880, 'Olaya ', 'Robledo', 'Av. Libertador 500 7ºA'),
(9009, 'Jacobo ', 'Caamaño', 'Acoyte 789 10º10');


CREATE TABLE Paciente
(
	id_paciente INT NOT NULL,
	nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    
	PRIMARY KEY (id_paciente)
);

INSERT
	INTO 
		Paciente 
	VALUES 
(6824, 'Thiago ', 'Calero', 'Almirante Brown 780 2ºC'),
(9030, 'Anne ', 'Cañas', 'Chile 600 2ºB'),
(7445, 'Laura ', 'Cervantes', 'Suarez 310 3ºC');


CREATE TABLE Droga
(
	id_droga INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    efecto_droga VARCHAR(100) NOT NULL,
    
	PRIMARY KEY (id_droga)
);

INSERT
	INTO 
		Droga
	VALUES
(76213, 'MOXIFLOXACINO', 'Antibiotico'),
(10265, 'MOTRIN', 'Analgesico'),
(11916 , 'METAMIZOL', 'Analgesico');

CREATE TABLE Cirugia
(
   
	id_cirugia INT NOT NULL,
    nombre_cirugia VARCHAR(100),
  
    id_droga INT NOT NULL,
    
	PRIMARY KEY (id_cirugia),
	
	FOREIGN KEY (id_droga) REFERENCES Droga (id_droga)
);

INSERT
	INTO 
		Cirugia
	VALUES
(160, 'APENDICECTOMÍA', 76213),
(991, 'BIOPSIAS', 10265),
(192, 'HEMORROIEDCTOMÍA', 11916);



CREATE TABLE Operacion
(
	id_paciente INT NOT NULL,
    id_cirujano INT NOT NULL,
    fecha DATE NOT NULL,
    
    id_cirugia INT NOT NULL,

	PRIMARY KEY (id_paciente, id_cirujano, fecha),

    FOREIGN KEY (id_cirugia) REFERENCES Cirugia (id_cirugia)
);

INSERT
	INTO 
		Operacion
	VALUES

(6824, 2855, '02/11/2020', 160),
(9030, 4880, '13/06/2021', 991),
(7445, 9009, '05/12/2021', 192);


