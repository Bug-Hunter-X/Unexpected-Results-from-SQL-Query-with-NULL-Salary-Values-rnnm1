```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might return unexpected results if the `salary` column allows NULL values.  If an employee in the Sales department has a NULL salary, they will be excluded from the results, even if their salary *should* be greater than 100000.  The `>` operator doesn't handle NULLs in a way that intuitively includes them in the result set.