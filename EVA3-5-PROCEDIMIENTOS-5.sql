delimiter $$
create procedure insertar_prueba_id(in dato varchar (50))
begin
	declare clave int default 0;
	set clave = generar_id();
	insert into prueba value(clave, dato);
end $$
delimiter ;