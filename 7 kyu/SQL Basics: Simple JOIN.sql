-- Create your SELECT statement here

select 
a.id,a.name,a.isbn,a.company_id,a.price, c.name as company_name
from products as a
left join companies as c
on a.company_id = c.id
