delimiter $$
create procedure insertar_prueba(in clave int, in dato varchar (50))
begin
	insert into prueba value(clave, dato);
end $$
delimiter ;