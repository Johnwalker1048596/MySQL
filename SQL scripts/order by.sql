-- order by
select * from passengers;

select * from passengers order by name;
select * from passengers order by age;

-- descend(desc)
select * from passengers order by age desc;
select * from passengers order by pclass desc;


-- p123練習
select * from passengers
order by portid is null, portid;   
select * from passengers order by -portid desc;