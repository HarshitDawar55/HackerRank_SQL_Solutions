set @x = 21;
select repeat("* ", @x:= @x - 1) from information_schema.tables;