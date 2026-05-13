delimiter &&
create procedure contar_clientes2(out cont int)
begin
	declare c_id int;
    declare f_name varchar(50);
    declare l_name varchar(50);
    declare terminar int default false;
	declare cont_cl cursor for select customer_id, first_name, last_name from customer;
	declare continue handler for not found
    begin
		set terminar = true;
    end;
    
    open cont_cl; -- abrimos el cursor ejecutando la consulta
    set cont = 0;
    contar_cl: loop
		fetch cont_cl into c_id, f_name, l_name; -- variables
        set cont = cont + 1;
        if terminar then 
			set cont = cont - 1; -- descontar 1
			leave contar_cl;
		end if;
    end loop;
end &&
delimiter ;