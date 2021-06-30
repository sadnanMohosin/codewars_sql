-- Create your SELECT statement here
select p.id,p.name,count(t.id) as toy_count
from people as p
left join toys as t
on p.id = t.people_id
group by p.id
