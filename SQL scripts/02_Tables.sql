-- table
-- create table
create table employee(
employee_id int,
employee_name varchar(50),
employee_age int,
employee_salary int,
employee_department varchar(30)
);

CREATE TABLE members(
member_id int,
member_name varchar(100),
member_gender varchar(20),
member_age int
);

-- show error
show warnings;

-- how to find table settings
show columns from members;
describe members;
desc members;

-- drop table
drop table members;
drop table employee;

-- p.51 practice
create table player_02(
player_id int,
player_name varchar(100),
player_age int,
player_salary int,
player_team varchar(100)
);

desc player_02;
#desc table player_02;

drop table player_02;

-- insert data
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', 'Female', 15);

select * from members;
select * from employee;

-- insert data with wrong column order
insert into members(member_id, member_name, member_age, member_gender)
values(1, 'Abigail', 'Female', 15);

show warnings;
#Error	1366	Incorrect integer value: 'Female' for column 'member_age' at row 1

-- string --> numeric (X)
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', 'Female', 'Female');

show warnings;
#Error	1366	Incorrect integer value: 'Female' for column 'member_age' at row 1

-- numeric --> string (O)
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', 15, 15);

-- insert data with wrong column count and value count
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', 'Female');

show warnings;
#Error	1136	Column count doesn't match value count at row 1

-- column count matches value count
insert into members(member_id, member_name, member_gender)
values(1, 'Abigail', 'Female');

select * from members;

-- multi insertion
insert into members(member_id, member_name, member_gender, member_age)
values
(2, 'Maria', 'Female', 21),
(3, 'Gregory', 'Male', 35),
(4, 'Scott', 'Male', 39),
(5, "O'Neal" , 'Male', 25);

select * from members;

-- p.54 practice
select * from employee;

insert into employee(employee_id, employee_name, employee_age, employee_salary, employee_department)
values
(1, 'Tim', 39, 100000, 'Sales'),
(2, 'Danny', 27, 33000, 'Accounting'),
(3, 'Wilson', 33, 42000, 'Administration'),
(4, 'Elizabeth', 22, 29000, 'Accounting');

select * from employee;

-- name our table or columns in Chinese?
CREATE TABLE 會員(
member_id int,
member_name varchar(100),
會員性別 varchar(20),
member_age int
);

select * from 會員;

#conclusion: yes.