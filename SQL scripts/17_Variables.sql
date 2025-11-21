-- variables
select @myname := 'MasatakaOniwa';
select @myname;

select @myname := 'Sekiro', @myhome := 'Ashina';
select @myname, @myhome;

-- set 
set @myname := 'Tim', @myhome = 'Taipei';
select @myname, @myhome;

select @myname := 'Tim', @myhome = 'Taipei';

select @myhome = 'Taipei';
select @myhome = 'Tainan';

-- set time
set @mytimestamp = now();
select @mytimestamp;

set @mytimestamp = current_timestamp;
select @mytimestamp;