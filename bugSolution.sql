```sql
-- Solution 1: Using IS NULL to explicitly check for NULLs
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);

-- Solution 2: Using COALESCE to replace NULLs with a default value
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;

-- Solution 3: Using NULLS FIRST/LAST in an ORDER BY clause (If ordering is relevant)
SELECT * FROM employees WHERE department = 'Sales' ORDER BY salary NULLS LAST; 
--Then filter for salary > 100000 in application layer
```