create database peluqueria_canina;

use peluqueria_canina;
/* creando BD y poniendola en uso */

create table dueno(
dni 		int,
nombre 		varchar(45),
apellido 	varchar(45),
telefono 	varchar(45),
direccion 	varchar(45),
constraint pk_dni primary key(dni)
);
insert into dueno values (28957346,"Juan","Perez",4789689,"Belgrano 101");
insert into dueno values (23546987,"Maria","Perez",4789690,"Pueyrredon 811");
insert into dueno values (16157890,"Jose","Gomez",4789691,"Jujuy 120");
insert into dueno values (14852369,"Pedro","Sanchez",4789692,"Salta 689");
insert into dueno values (30797974,"Susana","Flores",4789693,"Cordoba 536");
insert into dueno values (35123456,"Marta","Gonzalez",4789694,"Lima 123");
select * from dueno;
/* creación tabla dueno + ingreso de datos + select para consultarla */

create table perro(
ID_Perro 		int,
nombre_perro 	varchar(45),
fecha_nac 		date,
sexo 			varchar(20),
dni_dueno 		int,
constraint pk_idperro primary key(ID_Perro),
constraint fk_dnidueno foreign key (dni_dueno) references dueno (dni)
);
insert into perro values (1,"Puppy","2012-12-12","macho",28957346);
insert into perro values (2,"Fido","2011-11-11","macho",23546987);
insert into perro values (3,"Frida","2010-10-10","hembra",16157890);
insert into perro values (4,"Bob","2009-09-09","macho",14852369);
insert into perro values (5,"Cuca","2008-08-08","hembra",30797974);
insert into perro values (6,"Zozo","2007-07-07","hembra",35123456);
select * from perro;
/* creación tabla Perro + ingreso de datos + select para consultarla */

create table historial(
ID_Historial 	int,
fecha 			date,
perro_historial 		int,
descripcion 	varchar(100),
monto 			float,
constraint pk_idhistorial primary key(ID_Historial),
constraint fk_perro foreign key (perro_historial) references perro (ID_Perro)
);
insert into historial values (1,"2020-01-11",1,"corte de raza", 1500);
insert into historial values (2,"2022-02-12",2,"corte basico", 1000);
insert into historial values (3,"2022-03-13",3,"corte de raza", 1500);
insert into historial values (4,"2022-04-14",4,"baño + corte basico", 1700);
insert into historial values (5,"2022-05-15",5,"baño", 700);
insert into historial values (6,"2022-05-15",6,"baño", 700);
select * from historial;
/* creación tabla Historial + ingreso de datos + select para consultarla */

select fecha,perro_historial,ID_perro,nombre_perro from historial inner join perro on perro.id_Perro=historial.perro_historial;
SET FOREIGN_KEY_CHECKS=0;   /* deshabilitando las comprobaciones de foreign key. */
delete from perro where nombre_perro="Puppy";
select * from perro;
/* ejercicio 3 */

update perro set fecha_nac="1984-05-15" where ID_Perro=4;
select * from perro;
/* ejercicio 4 */