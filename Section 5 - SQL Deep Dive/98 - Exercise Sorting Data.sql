/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/

SELECT * FROM "employees"
ORDER BY first_name, last_name DESC
LIMIT 100;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/

SELECT * FROM "employees"
ORDER BY birth_date
LIMIT 100;

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/

SELECT * FROM "employees"
WHERE first_name ILIKE 'k%'
ORDER BY hire_date
LIMIT 100;
