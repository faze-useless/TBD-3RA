delimiter $$
create procedure datos_cliente(in id_cl int)
begin
	select *from customer
    where customer_id = id_cl;
end $$
delimiter ;