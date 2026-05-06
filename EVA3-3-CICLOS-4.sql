delimiter $$
create function  potencia_loop(numero int, potencia int) returns int deterministic
begin
	declare resultado int default numero;
    
    potencia: loop
		set resultado = resultado*numero;
        set potencia = potencia-1;
        if potencia = 1 then
			leave potencia;
		end if;
    end loop potencia;
    
    return resultado;
end $$
delimiter ;