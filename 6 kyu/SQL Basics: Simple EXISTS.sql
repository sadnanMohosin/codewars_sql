-- Create your SELECT statement here

SELECT id, name
FROM departments
WHERE EXISTS
  (SELECT department_id from sales
  where departments.id = sales.department_id and price >98);
