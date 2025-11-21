-- order by
select * from passengers;

select * from passengers order by name;
select * from passengers order by age;

-- descend(desc)
select * from passengers order by age desc;
select * from passengers order by pclass desc;

-- p.123 practice
select * from passengers order by portid;
select * from passengers order by portid desc;

select * from passengers order by -portid;
select * from passengers order by -portid desc;