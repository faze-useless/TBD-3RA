delimiter $$
create function generar_id()
returns int reads sql data
begin
	declare max_id int default 0;
    
    select max(id) into max_id from prueba;
    
    return max_id + 1;
end$$
delimiter ;