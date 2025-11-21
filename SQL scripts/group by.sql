-- group by & aggregation

select * from passengers
group by pclass;

show warnings;
select * from passengers
 group by pclass;
-- Error code 1055 Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'my_train_titanic.passengers.id' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

select count(pclass) from passengers group by pclass; 
select pclass, count(pclass) from passengers group by pclass;
select sex, count(sex) from passengers group by sex;


-- p118練習
#1
select sex, avg(age) from passengers group by sex;
#2
select pclass, max(age) from passengers group by pclass;
#3
select pclass, min(age) from passengers group by pclass;


-- 119練習
-- group by with join
create table artists(
id int primary key auto_increment,
artist_name varchar(50) not null unique
);

create table songs(
id int not null primary key auto_increment,
song_name varchar(50) not null,
artist_id int,
foreign key(artist_id) references artists(id) on delete cascade
);

insert into artists(artist_name)
values('Bruno Mars'), ('Jay Sean'), ('Usher'), ('Sean Kingston');

insert into songs(song_name, artist_id)
values('Just the way you are', 1), ('Treasure', 1), ('Down', 2), ('Yeah', 3), ('DJ got us fall in love again', 3), ('Beautiful girls', 4);

select * from artists;
select * from songs;

-- solution 
-- join
select * 
from artists
join songs 
on artists.id = artist_id;

#group by
select artist_name, count(artist_id) 'numbers of song'
from artists
join songs 
on artists.id = artist_id
group by artist_id;

-- having
select artist_name, count(artist_id) 'numbers of song'
from artists
join songs 
on artists.id = artist_id
group by artist_id
having count(*) > 1;

-- p120 practice
select * from passengers;
select * from ports;

select city, count(portid) 'boarding counts'
from passengers
join ports
on portid = ports.id
group by portid
having count(portid) >= 100;

-- count(portid) v.s. count(*)
select portid, count(portid) from passengers group by portid;
select portid, count(*) from passengers group by portid;

