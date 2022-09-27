show tables;

create table Alcalde(
	id int,
	name varchar (200),
	lastname varchar (200),
	username varchar (20),
	pass varchar(50),
	tipDoc char(4),
	nroDoc varchar(8),
	enable int
)
/*-----------------------------------------------------------------------------------------*/

alter table Alcalde add primary key (id);
alter table Alcalde modify column id int auto_increment not null;
/*-----------------------------------------------------------------------------------------*/

insert into Alcalde (name,lastname,username,pass,tipDoc,nroDoc,enable)
	values ('Gonzalo','Alegria','Juntos por el Peru','JP','DNI','70373918',1);

insert into Alcalde (name,lastname,username,pass,tipDoc,nroDoc,enable)
	values ('Elizabeth','Leon','Frente Esperanza','FE','DNI','76122540',1);

insert into Alcalde (name,lastname,username,pass,tipDoc,nroDoc,enable)
	values ('Daniel','Urresti','Podemos Peru','PPP','DNI','07894327',1);

insert into Alcalde (name,lastname,username,pass,tipDoc,nroDoc,enable)
	values ('Rafael','Lopez Aliaga','Renovacion Popular','RP','DNI','10583905',1);

insert into Alcalde (name,lastname,username,pass,tipDoc,nroDoc,enable)
	values ('Omar','Chehade','Alianza Progreso','AP','DNI','20917364',1);

insert into Alcalde (name,lastname,username,pass,tipDoc,nroDoc,enable)
	values ('Yuri','Castro','Peru Libre','PL','DNI','70373919',1);

insert into Alcalde (name,lastname,username,pass,tipDoc,nroDoc,enable)
	values ('George','Forsyth','Somos Peru','SP','DNI','09883127',1);
/*-----------------------------------------------------------------------------------------*/

select * from ALCALDE;
