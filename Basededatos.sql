create database peluqueriacanina;
use peluqueriacanina
create table dueno
(
  dni int primary key,
  nombre varchar(45),
  apellido varchar(45),
  telefono int (50),
  direccion varchar(50)
  );
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección) VALUE ('12556910','Maria','Sanchez','351554487','Belgrano 3512');
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección) VALUE ('38301450','Brenda','Lopez','358142666','Maestro vidal 351');
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección) VALUE ('40123369','Rocio','García','352157895','Federico Raunch 3514');
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección) VALUE ('41334980','Pedro','Perez','353511452','Dean funes 541');
SELECT * FROM Dueno;

create table perro
(
  Id_Perro int primary key,
  Nombre varchar (45),
  Fecha_nac date,
  Sexo varchar (15),
  Dni_dueno int 
  
);
INSERT INTO Perro (Id_Perro,Nombre,Fecha_nac,Sexo,Dni_dueno) VALUE ('1','Ricky','12/04/2015','Macho','12556910');
INSERT INTO Perro (Id_Perro,Nombre,Fecha_nac,Sexo,Dni_dueno) VALUE ('15','Blanca','18/08/2017','Hembra','38301450');
INSERT INTO Perro (Id_Perro,Nombre,Fecha_nac,Sexo,Dni_dueno) VALUE ('10','Pantufla','19/07/2018','Macho','40123369');
INSERT INTO Perro (Id_Perro,Nombre,Fecha_nac,Sexo,Dni_dueno) VALUE ('14','Negro','16/06/2016','Hembra','41334980');
select * from Perro;

create table historial
(
id_historial int primary key,
fecha date ,
Perro varchar(50),
Descripcion varchar(300),
Monto int
);
INSERT INTO Historial (id_Historial,Fecha,Perro,Descripcion,Monto) VALUE ('10','5/08/2017','Ricky','Consulta Para castracion','2000');
INSERT INTO Historial (id_Historial,Fecha,Perro,Descripcion,Monto) VALUE ('24','4/05/2018','Blanca','Consulta porque no come','2500');
INSERT INTO Historial (id_Historial,Fecha,Perro,Descripcion,Monto) VALUE ('25','22/07/2022','Pantufla','Chequeo de rutina','5000');
INSERT INTO Historial (id_Historial,Fecha,Perro,Descripcion,Monto) VALUE ('27','1/05/2019','Negro','Consulta por Vomito','3500');
SELECT * FROM Historial;
#ejercicio 9 y 10
update dueno set direccion = 'Libertad 123'
where direccion = Dean funes 541

TRUNCATE TABLE historial ;
dbcc cheident ('peluqueriacanina','Historial',RESEED,0)
