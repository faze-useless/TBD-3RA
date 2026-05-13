delimiter &&
create procedure suma_pagos(in id_cust int, out total double)
begin
	declare monto double default 0;
    declare terminar int default false;
	declare suma_amount cursor for select amount from payment where customer_id = id_cust;
    declare continue handler for not found
    begin
		set terminar = true;
    end;
    
    open suma_amount;
    set total = 0;
    montos: loop
		if terminar then 
			leave montos;
		end if;
		fetch suma_amount into monto;
        set total = total + monto;
    end loop;
end &&
delimiter ;