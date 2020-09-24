drop database if exists dbregistro;
create database DBRegistro;

create table Persona(
	codigoPersona int not null auto_increment,
    DPI int,
    nombrePersona varchar(100) not null,
    primary key (codigoPersona)
);

Insert into Persona (DPI, nombrePersona)
Values (" " ," " );