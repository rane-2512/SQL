```sql
-- Display employees excluding presidents and managers, sorted by salary
SELECT *
FROM employes
WHERE designation NOT IN ('president', 'mgr')
ORDER BY salary;
```
