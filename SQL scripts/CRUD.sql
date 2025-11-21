create table player(
player_id int not null primary key auto_increment,
player_name varchar(50),
player_position varchar(50),
player_age int 
);

insert into player(player_name, player_position, player_age)
values
('Bobby', 'INF', 23),
('Luis', 'P', 30),
('Jonah', 'C', 28),
('Framber', 'P', 30),
('Pete', 'P', 27),
('Matt', 'INF', 29),
('Corbin', 'OF', 23),
('Juan', 'OF', 28);

-- select
select * from player;

-- partial select
select player_name from player;
select player_id ,player_name from player;
select player_name, player_id from player;

-- compare these two
#1
select player_position, player_age, player_name from player;
#2
select player_id, player_name, player_age from player;
-- which is better wher inquire 'age' and 'player(name)'?


-- where clause
select *
from player
where player_age = 23;

select player_name, player_age from player where player_age = 23;

-- >, <, =
select * from player where player_age > 28;
select * from player where player_age >= 28;

select * from player where player_age < 28;
select * from player where player_age <= 28;

-- 
select * from player where player_name = 'Corbin';
select * from player where player_name = 'corbin';
select * from player where player_name = 'cORBIN';
#case insensitive
select * from player where player_name = 'Cobin';
select * from player where player_name = 'Corbi';
select * from player where player_name = 'Corbin ';

-- double where
select * from player where player_position = 'P';
select * from player where player_age < 28;

select * from player where player_position = 'P' and player_age < 28;

-- 
#1
select * from player where player_age >= 27;
#2
select * from player where player_age <= 29;
#3
select * from player where player_position = 'P';

select * from player where player_age >= 27 and player_age <= 29 and player_position = 'P';

select * from player where player_age between 27 and 29 and player_position = 'P';
select * from player where (player_age between 27 and 29) and player_position = 'P';

select * from player where player_age between 29 and 27; #(X)

-- p.82 practice
create table grocery(
grocery_id int primary key auto_increment,
grocery_name varchar(50),
grocery_category varchar(50),
grocery_reserves int
);

insert into grocery(grocery_name, grocery_category, grocery_reserves)
values
('Beef', 'Meat', 13),
('Milk', 'Dairy', 15),
('Spinach', 'Vegetables', 20),
('Cheese', 'Dairy', 5),
('Pork', 'Meat', 8),
('Beer', 'Beverage', 60),
('Cabbage', 'Vegetables', 21),
('Lamb', 'Meat', 16);

select * from grocery;

-- solution
#1
select grocery_name, grocery_category, grocery_reserves from grocery;
#2
select grocery_id, grocery_name from grocery where grocery_id = 3 or grocery_id = 4 or grocery_id = 5 or grocery_id = 6 or grocery_id = 7;
select grocery_id, grocery_name from grocery where grocery_id >= 3 and grocery_id <= 7;
select grocery_id, grocery_name from grocery where grocery_id between 3 and 7;
#3
select grocery_id, grocery_name, grocery_category from grocery where grocery_id = 1 or grocery_id = 5 or grocery_id = 8;
select grocery_id, grocery_name, grocery_category from grocery where grocery_category = 'meat';

-- aliases
select player_name, player_position, player_age from player;

select player_name as 球員姓名, player_position as 球員守位, player_age as 球員年齡 from player;
select * from player;

select player_name as '球員 姓名', player_position as '球員 守位', player_age as '球員 年齡' from player;
select player_name as 球員_姓名, player_position as 球員_守位, player_age as 球員_年齡 from player;

-- as skipped
select player_name 球員姓名, player_position 球員守位, player_age 球員年齡 from player;

-- update(dangerous!!)
select * from player;

select * from player where player_position = 'P';

update player set player_position = 'Pitcher'
where player_position = 'P';

-- update without proper where clause
#all player_position values turn into 'Pitcher'
-- use 'drop table player;' to create player table again

select * from player;

-- try another
select * from player where player_name = 'Pete';

update player set player_position = 'OF'
where player_name = 'Pete';

select * from player;

-- p.86 practice
#1
update player set player_age = 26 where player_name = 'Bobby';

select * from player;
select player_name, player_age from player where player_id = 1;

#2
update player set player_name = 'Jonathan' where player_name = 'Jonah';

select * from player;
select player_name, player_age from player where player_name = 'Bobby' and player_name = 'Jonathan'; #(X)
select player_name, player_age from player where player_name = 'Bobby' or player_name = 'Jonathan'; #(O)


-- delete
select * from player;
select * from player where player_id = 3;

delete from player where player_id = 3;
#drop table player;

select * from player;

