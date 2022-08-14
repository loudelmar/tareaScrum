CREATE DATABASE peluqueríacanina;
use peluqueríacanina;

CREATE TABLE Dueno(
  Dni int NOT NULL UNIQUE,
  Nombre varchar (25) NOT NULL,
  Apellido varchar (25) NOT NULL,
  Telefono varchar (50) NOT NULL,
  Direccion varchar (50) NOT NULL,
  primary key (Dni)
);  
INSERT INTO Dueno (Dni,Nombre,Apellido,Telefono,Direccion) VALUE ('3345400','Pablo','Garcia','45489','La Pampa 8');
INSERT INTO Dueno (Dni,Nombre,Apellido,Telefono,Direccion) VALUE ('24856985','Juan','Gonzalez','8549106','Tafi 10');
INSERT INTO Dueno (Dni,Nombre,Apellido,Telefono,Direccion) VALUE ('30160982','Miguel','Lujan','853045','Colon 40');
INSERT INTO Dueno (Dni,Nombre,Apellido,Telefono,Direccion) VALUE ('23549108','Maria','Perez','4485910','Tucuman 10');
INSERT INTO Dueno (Dni,Nombre,Apellido,Telefono,Direccion) VALUE ('5485910','Viviana','Ramirez','586789','Sucre 85');
SELECT * FROM Dueno;

CREATE TABLE Perro(
  Id_perro int NOT NULL UNIQUE,
  Nombre varchar (25) NOT NULL,
  Fecha_nac date,
  Sexo varchar (6),
  Dni int NOT NULL UNIQUE,
  primary key (Id_perro),
  foreign key (Dni) References Dueno (Dni)
);
INSERT INTO Perro (Id_perro,Nombre,Fecha_Nac,Sexo,Dni) VALUE ('20','Poroto','05-05-19','Macho','3345400');
INSERT INTO Perro (Id_perro,Nombre,Fecha_Nac,Sexo,Dni) VALUE ('5','Osi','20-08-18','Hembra','8549106');
INSERT INTO Perro (Id_perro,Nombre,Fecha_Nac,Sexo,Dni) VALUE ('30','Mira','15-05-22','Hembra','30160982');
INSERT INTO Perro (Id_perro,Nombre,Fecha_Nac,Sexo,Dni) VALUE ('9','Falucho','03-02-15','Macho','23549108');
INSERT INTO Perro (Id_perro,Nombre,Fecha_Nac,Sexo,Dni) VALUE ('40','Chicha','14-03-18','Hembra','5485910');
SELECT * FROM Perro;

CREATE TABLE Historial(
  Id_Historial int NOT NULL UNIQUE,
  Fecha date,
  Descripcion varchar (150),
  Monto int NOT NULL,
  Id_perro int (25),
  primary key (Id_Historial),
  foreign key (Id_perro) References Perro (Id_perro)
);  
INSERT INTO Historial (Id_Historial,Fecha,Descripcion,Monto,Id_perro) VALUE ('6','20-05-17','vacuna','700','20');
INSERT INTO Historial (Id_Historial,Fecha,Descripcion,Monto,Id_perro) VALUE ('15','30-09-20','Castracion','6000','40');
INSERT INTO Historial (Id_Historial,Fecha,Descripcion,Monto,Id_Perro) VALUE ('2','03-10-15','Sarna','2000','9');
INSERT INTO Historial (Id_Historial,Fecha,Descripcion,Monto,Id_Perro) VALUE ('26','20-04-22','Moquillo','4000','5');
INSERT INTO Historial (Id_Historial,Fecha,Descripcion,Monto,Id_Perro) VALUE ('30','01-08-22','Alergia piel','30');

SELECT* FROM Historial;


INSERT INTO Perro(Id_perro,Nombre,Fecha_Nac,Sexo,Dni)
 VALUES
 ('24','Coco','20-05-20','macho', '30160940');
SET FOREIGN_KEY_CHECKS=0


INSERT INTO Dueno (Dni,Nombre,Apellido,Telefono,Direccion) VALUES ('30160940','Pedro','Ramirez','4258910','Tucuman 85')
 
UPDATE Perro
SET Fecha_nac = '20-05-21'
WHERE Id_perro=24 ;

use peluqueríacanina;

SELECT Nombre
FROM Dueno
WHERE Nombre = 'Pedro';
INSERT INTO Perro (Id_perro,Nombre,Fecha_Nac,Sexo,Dni) VALUE ('21','Poroto','05-05-19','Macho','3345400')
