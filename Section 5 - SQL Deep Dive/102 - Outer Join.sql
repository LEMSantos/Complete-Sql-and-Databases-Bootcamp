SELECT COUNT(emp.emp_no)
FROM employees AS emp
LEFT JOIN dept_manager AS dep ON emp.emp_no = dep.emp_no
WHERE dep.emp_no IS NULL
LIMIT 100;

SELECT a.emp_no, b.salary, COALESCE(c.title, 'no title change')
FROM "employees" AS a
INNER JOIN "salaries" AS b ON b.emp_no = a.emp_no
LEFT JOIN "titles" AS c ON c.emp_no = a.emp_no
AND (b.from_date = c.from_date OR c.from_date = b.from_date + INTERVAL '2 days')
ORDER BY a.emp_no
LIMIT 100;
