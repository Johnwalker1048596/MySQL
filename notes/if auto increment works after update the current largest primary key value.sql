-- test if auto increment works after update the current largest primary key value

select * from cars_05;

update cars_05 set car_id = 6 where car_id = 6666;

insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'green', 80000);

select * from cars_05;