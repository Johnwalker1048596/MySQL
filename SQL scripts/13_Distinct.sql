-- distinct
select * from passengers;

select pclass from passengers;
select distinct pclass from passengers;

select distinct portid from passengers;

select distinct name from passengers;
select distinct cabin from passengers order by cabin;

-- p.130 practice
select count(pclass) from passengers;
select count(distinct pclass) class_count from passengers;

-- count distinct portid
select count(distinct portid) from passengers;

select * from tickets;
select count(distinct fare) from tickets;

-- double distinct
select distinct pclass from passengers;
select distinct sex from passengers;

select distinct pclass, sex from passengers;

-- count with distinct
select count(distinct pclass, sex) from passengers;
select count(distinct pclass, sex, portid) from passengers;
select count(distinct pclass, sex, portid, survived) from passengers;

select distinct pclass, sex, portid, survived from passengers;