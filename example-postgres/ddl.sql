create schema formacion;

create table formacion.profesores
(
   id              decimal(10)   not null,
   nombre          varchar(255)  not null,
   apellidos       varchar(255)  not null
);

alter table formacion.profesores add constraint profesores_pk  primary key ( id );

create table formacion.cursos
(
   id              decimal(10)   not null,
   titulo          varchar(255)  not null,
   activo          decimal(1)    not null,
   nivel           varchar(45)   not null,
   horas           decimal(2)    not null,
   id_profesor     decimal(10)           ,
   temario         varchar(255)
);
alter table formacion.cursos add constraint cursos_pk  primary key ( id );
alter table formacion.cursos add constraint cursos_fk_01  foreign key ( id_profesor ) references formacion.profesores (id);

insert into formacion.profesores values (1,'Alex','Perez');
insert into formacion.profesores values (2,'Roberto','Canales');
insert into formacion.profesores values (3,'Ruben','Aguilera');
insert into formacion.profesores values (4,'Jose Manuel','Sanchez');
insert into formacion.cursos values (1,'Primefaces',1,'Medio',10,4,null);
insert into formacion.cursos values (2,'BootStrap',1,'Basico',20,4,null);
insert into formacion.cursos values (3,'JSF2',1,'Medio',40,4,null);
insert into formacion.cursos values (4,'Spring MVC',1,'Basico',35,1,null);
insert into formacion.cursos values (5,'ZK',1,'Medio',10,1,null);
insert into formacion.cursos values (6,'Mongo DB',1,'Avanzado',20,4,null);
insert into formacion.cursos values (7,'Ember',1,'Avanzado',20,3,null);
insert into formacion.cursos values (8,'C',1,'Medio',8,3,null);
insert into formacion.cursos values (9,'Hibernate',1,'Avanzado',20,3,null);
insert into formacion.cursos values (10,'MyBatis',1,'Medio',30,1,null);
insert into formacion.cursos values (11,'Rest',1,'Medio',10,2,null);
insert into formacion.cursos values (12,'JQuery',1,'Basico',20,2,null);
commit;
