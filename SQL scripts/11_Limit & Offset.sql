-- limit & offset
select * from passengers;
select * from passengers limit 10;
select * from passengers limit 100;
select * from passengers limit 890;

select * from passengers limit 1000;

-- limit #num , #num
select * from passengers limit 10, 2;
select * from passengers limit 5, 20;
select * from passengers limit 500, 200;
select * from passengers limit 500, 500;

-- offset
select * from passengers limit 20 offset 5;

-- webpage
select * from passengers limit 0, 10;
select * from passengers limit 10, 10;
select * from passengers limit 20, 10;

-- p.126 practice
select * from passengers order by portid;

select * from passengers order by portid limit 2, 15;

select * from passengers order by -portid desc;