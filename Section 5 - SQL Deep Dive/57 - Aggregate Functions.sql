SELECT COUNT(*) FROM "employees";

SELECT MAX(salary) FROM "salaries";

SELECT SUM(salary) FROM "salaries"
WHERE to_date = '9999-01-01';
