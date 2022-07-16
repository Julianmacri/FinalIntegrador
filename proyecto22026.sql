create database proyecto22026;
use proyecto22026;
create table socios(
	id_socio int not null auto_increment,
    nombre varchar(30),
    apellido varchar(30),
    dni int not null unique,
    mail varchar(30),
    fecha_alta date,
    estado int null,
    primary key(id_socio)
);


insert into socios values (1,'Nicolas','Fernandez','29031734','sarasa@gmail.com','2022-08-24', 1);
insert into socios values (2,'pedro','alvarez','29224734','sarasa2@gmail.com','2022-08-24', 1);
insert into socios values (3,'cecilia','lopez','29042134','sarasa3@gmail.com','2022-08-24', 1);

ALTER TABLE `socios` CHANGE `estado` `estado` varchar(30);
select * from socios;
/* proyecto gestionado con maven, software que gestiona proyecto de java. Maven nos permite gestionar la estructura de 
proyecto, con las librerias que voy a usar. Maven tiene un repositorio de librerias. */

