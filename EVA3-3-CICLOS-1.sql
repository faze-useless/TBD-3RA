delimiter $$
create function factorial(numero int) returns int deterministic
begin
	declare resultado int default 1;
    
    factorial: loop
		set resultado = resultado*numero;
        set numero = numero-1;
        if numero = 0 then
			leave factorial;
		end if;
    end loop factorial;
    
    return resultado;
end $$
delimiter ;