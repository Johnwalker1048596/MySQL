-- test if 'null' can be detected as duplicate value under unique setting

create table user_account2(
user_id int primary key auto_increment,
user_name varchar(100) unique,
user_password varchar(100) not null 
);

insert into user_account2(user_name, user_password)
values('iloveLuxgen', '5566');

select * from user_account2;

insert into user_account2(user_name, user_password)
values(null, '5566');

select * from user_account2;

insert into user_account2(user_name, user_password)
values(null, '5566');

select * from user_account2;

update user_account2 set user_name = null
where user_name = 'iloveLuxgen';