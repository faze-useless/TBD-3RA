delimiter $$
create function  potencia_while(numero int, potencia int) returns int deterministic
begin
	declare resultado int default numero;
    
    while potencia > 1 do
		set resultado = resultado*numero;
        set potencia = potencia-1;
    end while;
    
    return resultado;
end $$
delimiter ;