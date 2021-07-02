-- Create your SELECT statement here

alter table ussales
add column location varchar(200)
default 'US';

alter table eusales
add column location varchar(200)
default 'EU';


select * from ussales
where price > 50
union all 
select * from eusales 
where price > 50 
order by location desc,id;
