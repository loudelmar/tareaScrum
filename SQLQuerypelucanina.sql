create database peluqueriacanina
use peluqueriacanina


create table dueno(
dni 		int,
nombre 		varchar(45),
apellido 	varchar(45),
telefono 	varchar(45),
direccion 	varchar(45),
constraint pk_dni primary key(dni)
);

insert into dueno 
values (28957346,'Carina','Lopez',35123354,'Colon 15');
insert into dueno 
values (2435322,'Mario', 'gomez',351468752,'olmos 234');
insert into dueno
values (104933514,'ester','pereyra"',38785421,'9 de julio 19');
insert into dueno 
values (15684625,'beatriz','barrios',3514888779,'ituzaingo 152');
insert into dueno (dni,nombre,apellido,telefono,direccion)
values (36488989,'Martin','barcia',35148975,'sarmiento 355');
select *from dueno;


create table perro(
ID_Perro 		int,
nombre_perro 	varchar(45),
fecha_nac 		date,
sexo 			varchar(20),
dni_dueno 		int,
constraint pk_idperro primary key(ID_Perro),
constraint fk_dnidueno foreign key (dni_dueno) references dueno (dni)
);

insert into perro 
values (123,'lolo','2012-12-12','macho',28957346);
insert into perro 
values (351,'pipo','2011-11-11','macho', 2435322);
insert into perro
values (543,'violeta','2022-07-07','hembra',104933514);
insert into perro 
values (684,'maron','2009-07-09','macho',15684625);
insert into perro 
values (455,'mancha','2008-07-07','hembra',36488989);
select * from perro



create table historial(
ID_Historial 	int,
fecha 			date,
perro_historial 		int,
descripcion 	varchar(100),
monto 			float,
constraint pk_idhistorial primary key(ID_Historial),
constraint fk_perro foreign key (perro_historial) references perro (ID_Perro)
);

insert into historial 
values (123,'2020-01-11',123,'corte', 500);
insert into historial 
values (351,'2022-07-07',351,'corte', 1000);
insert into historial 
values (543,'2022-07-07',543,'corte', 750);
insert into historial 
values (684,'2022-08-01',684,'baño', 1200);
insert into historial 
values (455,'2022-07-07',455,'baño', 700);
select * from historial;

--ejercicio  7 Obtener los ingresos percibidos en Julio del 2022 --
select*
from historial
where month (fecha)=07 and year(fecha)=2022



--ejercicio 8 Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.--
insert into historial (ID_Historial)
values (10)

---una vez insertado el id perro consulto la -- 
select * from historial;


