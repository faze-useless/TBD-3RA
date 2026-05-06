delimiter $$
create function  potencia_repeat(numero int, potencia int) returns int deterministic
begin
	declare resultado int default numero;
    
    repeat
		set resultado = resultado*numero;
        set potencia = potencia-1;
    until potencia = 1 end repeat; 
    
    return resultado;
end $$
delimiter ;