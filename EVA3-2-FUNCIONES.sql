delimiter &&
create function sumar(num1 int, num2 int)
returns int deterministic
begin
	declare r int default 0;   -- Comentario: Inicializacion de variables
    set r = num1 + num2;       -- set se usa para asignar valor a las variables
    return r;				   -- La funcion regresa el resultado
end&&
delimiter ;