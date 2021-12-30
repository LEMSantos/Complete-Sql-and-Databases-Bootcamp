SELECT a.emp_no,
       CONCAT(a.first_name, ' ', a.last_name) AS "name",
       b.salary
FROM "employees" AS a
INNER JOIN "salaries" AS b ON b.emp_no = a.emp_no
ORDER BY a.emp_no
LIMIT 100;


SELECT a.emp_no,
       CONCAT(a.first_name, ' ', a.last_name) AS "name",
       b.salary,
       c.title,
       c.from_date AS "promoted on"
FROM "employees" AS a
INNER JOIN "salaries" AS b ON b.emp_no = a.emp_no
INNER JOIN "titles" AS c ON c.emp_no = a.emp_no
    AND (
        b.from_date = c.from_date
        OR c.from_date = (b.from_date + INTERVAL '2 days')
    )
ORDER BY a.emp_no
LIMIT 100;


SELECT a.emp_no,
       CONCAT(a.first_name, ' ', a.last_name) AS "name",
       b.salary,
       COALESCE(c.title, 'No title change'),
       COALESCE(c.from_date::text, '-') AS "title taken on"
FROM "employees" AS a
INNER JOIN "salaries" AS b ON b.emp_no = a.emp_no
INNER JOIN "titles" AS c ON c.emp_no = a.emp_no
    AND (
        b.from_date = c.from_date
        OR c.from_date = (b.from_date + INTERVAL '2 days')
    )
ORDER BY a.emp_no
LIMIT 100;
