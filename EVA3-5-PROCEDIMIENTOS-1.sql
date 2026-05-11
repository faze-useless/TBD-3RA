delimiter $$
create procedure lista_clientes(limite int)
begin
	select *from customer limit limite;
end $$
delimiter ;