delimiter &&
create procedure insertar_prueba3(in clave int, in dato varchar(50))
begin
	declare exit handler for sqlstate '23000'
    begin
		select "[!] Error de clave duplicada." as mensaje;
    end;
    
	insert into prueba value(clave, dato);
    select "[:)] Datos insertados correctamente." as mensaje;
end &&
delimiter ;