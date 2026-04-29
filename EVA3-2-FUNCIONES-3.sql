delimiter $$
create function dia_semana(dia int)
returns varchar(20) deterministic
begin
	declare nombre_dia varchar(20);
    case dia
		when 1 then set nombre_dia = "Domingo";
        when 2 then set nombre_dia = "Lunes";
        when 3 then set nombre_dia = "Martes";
        when 4 then set nombre_dia = "Miercoles";
        when 5 then set nombre_dia = "Jueves";
        when 6 then set nombre_dia = "Viernes";
        when 7 then set nombre_dia = "Sabado";
	else set nombre_dia = "Invalido";
    end case;
    return nombre_dia;
end$$
delimiter ;