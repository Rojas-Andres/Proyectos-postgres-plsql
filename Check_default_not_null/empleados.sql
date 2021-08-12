CREATE TABLE empleados (
   nombre    varchar(40),
   salario     integer CHECK (salario > 900)
);
insert into empleados (nombre,salario) values ('Andres',800);
insert into empleados (nombre,salario) values ('Felipe',1000);
insert into empleados (nombre) values ('Brandon');


--- Not null
CREATE TABLE empleados2 (
   nombre    varchar(40),
   salario   integer not null CHECK (salario > 900)
);

insert into empleados2 (nombre,salario) values ('Andres',800);
insert into empleados2 (nombre,salario) values ('Felipe',1000);
insert into empleados2 (nombre) values ('Brandon');

-- Default
CREATE TABLE empleados3 (
   nombre    varchar(40),
   salario   integer not null CHECK (salario > 900),
   valor boolean default true
);

insert into empleados3 (nombre,salario) values ('Andres',800);
insert into empleados3 (nombre,salario) values ('Felipe',1000);
insert into empleados3 (nombre) values ('Brandon');
insert into empleados3 (nombre,salario,valor) values ('Brandon',2000,false);