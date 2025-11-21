-- like
use my_train_titanic;
select * from passengers;


-- where
select * from passengers where name = 'Braund';  #太嚴格等號找不到東西
select * from passengers where name = 'Braund, Mr. Owen Harris';

-- like
select * from passengers where name like 'william%';

select * from passengers where name like '%william%';
select * from passengers where name like '%william';

-- find william
select * from passengers where name like '% william %';
select * from passengers where name like '% william %' and sex = 'male';

-- p133 practice
select * from passengers where name like 'Williams, %';

-- find smith
select * from passengers where name like '%smith%';
select * from passengers where name like 'smith%';

select * from passengers where name like '%)'; #用右括號結尾
select * from passengers where name like '%)%'; 

select * from passengers where name like '%williams%' and name like '%charles%';

select * from passengers where ticketid like '_';
select * from passengers where ticketid like '__';
select * from passengers where ticketid like '___';

-- p135 practice
select * from passengers where name like '% william %' and ticketid like '__' and sex = 'male'; #注意空格

-- In
select * from passengers where portid = 1 or portid = 3;
select * from passengers where portid in (1, 3);  #效能比較節省，字也較少alter

-- Not in 
select * from passengers where portid != 1 and portid != 3;
select * from passengers where portid not in (1, 3);

-- p13 practice
select * from passengers where sex != 'female' and portid not in (2, 3);


-- case 

select id, name,
case
	when portid = 1 then 'Southampton'
    when portid = 2 then 'Cherbourg'
    when portid = 3 then 'Queentown'
    else 'unknown'
    end boarding_place
from passengers;

-- variables
select @myname := 'Masataka Oniwa';
select @myname;
select @myname := 'Sekiro', @myhome := 'Ashina';

set @myname := 'Tim', @myhome = 'Taipei'; #在 set 裡面冒號等於跟等於是一樣的
select @myname, @myhome;

select @myname := 'Tim', @myhome = 'Taipei';

select @myhome = 'Taipei';
select @myhome = 'Tainan';

-- set time
set @mytimestamp = now();
select @mytimestamp;

set @mystamp = current_timestamp;



