DELIMITER $$
CREATE FUNCTION generar_rfc(nombre VARCHAR(50), apellido_paterno VARCHAR(50), apellido_materno VARCHAR(50), fecha_nac DATE)
RETURNS VARCHAR(13) DETERMINISTIC
BEGIN
    DECLARE rfc VARCHAR(13) DEFAULT "";
    DECLARE dia VARCHAR(2);
    DECLARE mes VARCHAR(2);
    DECLARE anio VARCHAR(2);

    SET rfc = CONCAT(
        LEFT(apellido_paterno, 2),
        LEFT(apellido_materno, 1),
        LEFT(nombre, 1)
    );

    SET dia = LPAD(DAY(fecha_nac), 2, '0');
    SET mes = LPAD(MONTH(fecha_nac), 2, '0');
    SET anio = RIGHT(YEAR(fecha_nac), 2);

    SET rfc = CONCAT(
        UPPER(rfc),
        anio,
        mes,
        dia
    );

    RETURN rfc;
END$$
DELIMITER ;