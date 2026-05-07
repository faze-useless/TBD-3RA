delimiter $$
create function contar_clientes()
returns int reads sql data
begin
	declare cont int default 0;
    
    select count(*) into cont from customer;
    
    return cont;
end$$
delimiter ;