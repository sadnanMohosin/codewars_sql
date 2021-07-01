-- Create your SELECT statement here
select * from departments
where id in (select department_id from sales where price > 98)
