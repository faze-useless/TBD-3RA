delimiter $$
create procedure insertar_persona(in nom varchar(50), in ap_pat varchar(50), in ap_mat varchar(50), in fech date)
begin
	declare new_rfc varchar(50) default '';
    set new_rfc = generar_rfc(nom, ap_pat, ap_mat, fech);
    
    insert into persona value (
		new_rfc, nom, ap_pat, ap_mat, fech
    );
end $$
delimiter ;