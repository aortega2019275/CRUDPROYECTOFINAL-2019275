drop database if exists dbregistro;
create database DBRegistro;

create table Persona(
	codigoPersona int not null auto_increment,
    DPI varchar(13),
    nombrePersona varchar(100) not null,
    primary key (codigoPersona)
);

Insert into Persona (DPI, nombrePersona)
Values ("1582787630101" ,"Lidia Dinora Acuña Montoya" );

Insert into Persona (DPI, nombrePersona)
Values ("2500108280101" ,"Miguel Angel Muralles Perez" );

Insert into Persona (DPI, nombrePersona)
Values ("2172890530101" ,"Justyn Alejandro Sandoval Paredez" );

Insert into Persona (DPI, nombrePersona)
Values ("2590713670101" ,"Jeremias Alejandro Lopez Colindres" );

Insert into Persona (DPI, nombrePersona)
Values ("1589895350101" ,"Diego Alejandro Sandoval Mendez" );

select * from Persona;