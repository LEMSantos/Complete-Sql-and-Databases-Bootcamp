SELECT a.emp_no,
       CONCAT(a.first_name, ' ', a.last_name) as "name",
       b.salary
FROM "employees" AS a, "salaries" AS b
WHERE a.emp_no = b.emp_no
ORDER BY a.emp_no
LIMIT 100;
