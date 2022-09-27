create procedure getAllAlcalde()
begin
	select * from Alcalde;
end
/*-------------------------------------------------------------------------------------------*/

/*PARA VER LA TABLA CON REGISTRO*/
call getAllAlcalde();
/*-------------------------------------------------------------------------------------------*/

/*SOLO PARA ELIMINAR EL PROCEDURE*/
drop procedure deleteAlcaldeById;
/*-------------------------------------------------------------------------------------------*/

create procedure insertAlcalde (in p_name varchar(200),
								in p_lastname varchar(200),
								in p_username varchar(20),
								in p_pass varchar(50),
								in p_tipDoc char(4),
								in p_nroDoc varchar(8),
								in enable int)
begin
	declare countAlcalde int default 0;
	select count(*) into countAlcalde from Alcalde where username= p_username;
	if (countAlcalde >0) then
		select 'USUARIO YA EXISTE';
	else
		insert into Alcalde (name, lastname, username, pass, tipDoc, nroDoc, enable)
		values (p_name, p_lastname, p_username, p_pass, p_tipDoc, p_nroDoc, enable);
	end if;
end
/*-----------------------------------------------------------------------------------------*/

create procedure  deleteAlcaldeById(in p_id int)
begin
	declare countAlcalde int default 0;
	select count(*) into countAlcalde from Alcalde where id=p_id;
	if (countAlcalde <=0) then
		select 'USUARIO NO EXISTE';
	else
		delete from Alcalde where id=p_id;
	end if;
end

call deleteAlcaldeById(4);
/*-------------------------------------------------------------------------------------------*/
