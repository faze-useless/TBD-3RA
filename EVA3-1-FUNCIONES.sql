create function hello(message varchar(50))
returns varchar(60) deterministic
return concat('HOLA ', message);