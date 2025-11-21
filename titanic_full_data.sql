-- try full titanic data
create database if not exists my_titanic;
use my_titanic;

-- load data from CSV

CREATE TABLE IF NOT EXISTS full_passengers(
  id INT(11), 
  pclass DECIMAL(10, 2), 
  survived DECIMAL(10, 2), 
  pname VARCHAR(100), 
  sex VARCHAR(50), 
  age INT(11),
  sibsp INT(11), 
  parch INT(11),
  ticket VARCHAR(100),
  fare DECIMAL(10, 2),
  cabin VARCHAR(50), 
  embarked VARCHAR(50),
  boat VARCHAR(50),
  body INT(11),
  homedest varchar(100)
 );
# drop table full_passengers;

LOAD DATA
INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/titanic_full_data.csv'
INTO TABLE full_passengers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(id, pclass, survived, pname, sex, @age, sibsp, parch, ticket, @fare, cabin, embarked, boat, @body, homedest)
SET age = NULLIF(@age,''), fare = nullif(@fare, ''), body = nullif(@body, '');

select * from full_passengers limit 1350;

#1
select sex, count(sex) gender_counts
from full_passengers
group by sex;

#2
select id, pname
from full_passengers
where id between 591 and 883;

#3
select pname, survived
from full_passengers 
where pname like 'Andersson%' and homedest = 'Sweden Winnipeg, MN';

#4
select *
from full_passengers
where ticket = 347080;

#5
select id, pclass, pname
from full_passengers
where sex = 'male'
  and pname like '% Leonard%';
  
#6
select ticket,count(ticket) ticket_count
from full_passengers
group by ticket
order by ticket_count desc
limit 1;

#7
-- select pclass, round(avg(age), 2) avg_age
select pclass, (avg(age)) avg_age
from full_passengers
where sex = 'male' and pclass in (2, 3)
group by pclass
order by pclass;

#8
select embarked,
       count(*) embark_count,
       round(count(*) * 100 / 1309, 2) embark_pct
from full_passengers
where embarked in ('S','C','Q')
group by embarked
order by embark_count desc;

-- select embarked,
--        count(*) embark_count,
--        round(count(*) * 100 / (select count(*) from full_passengers), 2) embark_pct
-- from full_passengers
-- where embarked in ('S','C','Q')
-- group by embarked
-- order by embark_count desc;


