create database samplebd;

connect to samplebd;

set current schema formacion;

create table profesores
(
   id              decimal(10)   not null, 
   nombre          varchar(255)  not null,
   apellidos       varchar(255)  not null
);
alter table profesores add constraint profesores_pk  primary key ( id );
create table cursos
(
   id              decimal(10)   not null, 
   titulo          varchar(255)  not null,
   activo          decimal(1)    not null, 
   nivel           varchar(45)   not null,
   horas           decimal(2)    not null,
   id_profesor     decimal(10)           ,
   temario         varchar(255)
);
alter table cursos add constraint cursos_pk  primary key ( id );
alter table cursos add constraint cursos_fk_01  foreign key ( id_profesor ) references profesores (id);
insert into profesores values (1,'Alex','Perez');
insert into profesores values (2,'Roberto','Canales');
insert into profesores values (3,'Ruben','Aguilera');
insert into profesores values (4,'Jose Manuel','Sanchez');
insert into cursos values (1,'Primefaces',1,'Medio',10,4,null);
insert into cursos values (2,'BootStrap',1,'Basico',20,4,null);
insert into cursos values (3,'JSF2',1,'Medio',40,4,null);
insert into cursos values (4,'Spring MVC',1,'Basico',35,1,null);
insert into cursos values (5,'ZK',1,'Medio',10,1,null);
insert into cursos values (6,'Mongo DB',1,'Avanzado',20,4,null);
insert into cursos values (7,'Ember',1,'Avanzado',20,3,null);
insert into cursos values (8,'C',1,'Medio',8,3,null);
insert into cursos values (9,'Hibernate',1,'Avanzado',20,3,null);
insert into cursos values (10,'MyBatis',1,'Medio',30,1,null);
insert into cursos values (11,'Rest',1,'Medio',10,2,null);
insert into cursos values (12,'JQuery',1,'Basico',20,2,null);
commit;