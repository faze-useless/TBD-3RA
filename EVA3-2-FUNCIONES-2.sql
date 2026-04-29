delimiter $$
create function mayor(num1 int, num2 int)
returns int deterministic
begin
	if num1 > num2 then 
		return num1;
	elseif num1 < num2 then
		return num2;
	else
		return num1;
	end if;
end$$
delimiter ;