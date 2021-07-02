-- Create your SELECT statement here
select p.id,p.name,count(s.sale) as sale_count,
rank() over (order by count(s.sale)) as sale_rank from people p
join sales s 
on p.id=s.people_id
group by p.id
