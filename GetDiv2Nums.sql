delimiter $$
create procedure GetDiv2Nums(startVal int, endVal int)
proc:begin 
	declare res varchar(100) default '';
	declare val int;
	if startVal > endval then
		leave proc;
	end if;
    
	if startVal = endval then
		if startVal mod 2 = 0 then
			select cast(startVal as char);
		end if;
		leave proc;
	end if;
    
	if startVal mod 2 = 0 then
		set val = startVal;
	else
		set val = startVal + 1;
	end if;
	set res = cast(val as char);
	
	repeat 
		set res = concat(res, ' ', val);
		set val = val + 2;
		until val >= endVal
	end repeat;
	
	select res;
end $$
delimiter ;
