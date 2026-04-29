delimiter $$
create function hola(mensaje varchar(50))
returns varchar(70) deterministic
begin
	declare cadena varchar(70) default '';
    set cadena = concat('HOLA ', mensaje);
    return cadena;
end$$
delimiter ;