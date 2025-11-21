-- alter table setting
#rename table
select * from employee;

alter table employee rename 員工;
select * from 員工;

#rename column name
select * from 員工;

alter table 員工 change column employee_salary 員工薪資 int;
select * from 員工;
