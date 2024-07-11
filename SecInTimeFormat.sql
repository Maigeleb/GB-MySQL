create function SecInTimeFormat(val int)
returns varchar(1000)
deterministic
begin
	declare d int;
	declare h int;
	declare m int;
	declare s int;
	set d = floor(val / 24 / 3600);
	set h = floor((val - d * 24 * 3600) / 3600);
	set m = floor((val - d * 24 * 3600 - h * 3600) / 60);
	set s = val - d * 24 * 3600 - h * 3600 - m * 60;
	return concat(d, ' days, ', h, ' hours, ', m, ' minutes, ', s, ' seconds');
end $$
delimiter ;
