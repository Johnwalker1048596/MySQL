
-- p73 practice
create table my_product (
product_id int primary key auto_increment,
product_name varchar(50),
product_price int not null
);

alter table my_product auto_increment = 21;

insert into my_product (product_name, product_price)
values
('藍芽耳機', 1990),
('機械鍵盤', 2990),
('行動電源', 990),
('曲面螢幕', 6990),
('滑鼠', 999) ;


select * from my_product;
