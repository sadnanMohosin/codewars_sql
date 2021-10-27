-- Replace with your query (in pure SQL)
select customer.customer_id,
customer.email,
count(payment.customer_id)::int as payments_count,
sum(payment.amount)::float as total_amount
from customer,payment
where customer.customer_id = payment.customer_id
group by customer.customer_id
order by total_amount desc
limit 10;
