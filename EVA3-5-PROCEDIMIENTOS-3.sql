delimiter $$
create procedure contar_clientes(out cont int)
begin
	select count(*) into cont from customer;
end $$
delimiter ;