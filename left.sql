```sql
-- Display the first 5 characters of names starting with 'h'
SELECT LEFT(e_name, 5)
FROM employes
WHERE e_name LIKE 'h%';
```
