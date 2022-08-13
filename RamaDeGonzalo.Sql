create database peluqueria_canina;

use peluqueria_canina;
/* creando mi base de datos y poniendola en uso*/

create table dueno(
dni 		int,
nombre 		varchar(50),
apellido 	varchar(50),
telefono 	bigint,
direccion 	varchar(200),
constraint pk_dni primary key(dni)
);
insert into dueno values (38413969,"gonzalo","juarez",3512227415,"calle 1 564");
insert into dueno values (20546789,"pedro","rodriguez",3515676890,"calle 2 123");
insert into dueno values (16157890,"jimena","lopez",3516436789,"calle 3 980");
insert into dueno values (27987456,"pedro","alvarez",3513123876,"calle 4 7689");
insert into dueno values (36754067,"pedro","nuñez",3518123456,"calle 5 5436");
select * from dueno
/* primera tabla con sus respectivos datos y realizo select para corroborar los datos */
create table perro(
ID_Perro 		int,
nombreperro 	varchar(50),
fecha_nac 		date,
sexo 			varchar(20),
dni_dueno 		int,
constraint pk_idperro primary key(ID_Perro),
constraint fk_dnidueno foreign key (dni_dueno) references dueno (dni)
);
insert into perro values (1,"maxwel","2010-09-20","macho",38413969);
insert into perro values (2,"pelusa","2021-04-10","macho",20546789);
insert into perro values (3,"catalina","2019-02-01","hembra",16157890);
insert into perro values (4,"rosita","2015-10-22","hembra",27987456);
insert into perro values (5,"nito","2022-01-10","macho",36754067);
select * from perro
/* segunda tabla con sus respectivos datos y realizo select para corroborar los datos */
create table historial(
ID_Historial 	int,
fecha 			date,
perroHist 		int,
descripcion 	varchar(300),
monto 			float,
constraint pk_idhistorial primary key(ID_Historial),
constraint fk_perro foreign key (perroHist) references perro (ID_Perro)
);
insert into historial values (1,"2022-01-02",1,"vino a consulta", 200);
insert into historial values (2,"2022-01-03",2,"corte normal", 900);
insert into historial values (3,"2022-01-20",3,"corte de raza", 1400);
insert into historial values (4,"2022-01-02",4,"corte normal", 900);
insert into historial values (5,"2022-01-02",5,"lavado higienico", 600);
select * from historial

/* tercera tabla tabla con sus respectivos datos y realizo select para corroborar */

select nombre,nombreperro from perro inner join dueno on perro.dni_dueno=dueno.dni where nombre = "pedro"
select fecha,perroHist,nombreperro from historial inner join perro on historial.perroHist=perro.ID_Perro where fecha > "2022-01-01"

/* ejercicio 5 y 6 del proyecto final solicitado*/
