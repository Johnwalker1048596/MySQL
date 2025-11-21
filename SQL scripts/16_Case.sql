-- case 
select * from passengers;

select id, name, 
case
  when portid = 1 then 'Southampton'
  when portid = 2 then 'Cherbourg'
  when portid = 3 then 'Queenstown'
  else '窩不知道'
end 上船地點
from passengers;