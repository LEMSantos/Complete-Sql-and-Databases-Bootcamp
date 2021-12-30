SELECT first_name, last_name FROM "employees"
ORDER BY first_name, last_name DESC
LIMIT 100;

SELECT first_name, last_name FROM "employees"
ORDER BY LENGTH(first_name) DESC
LIMIT 100;
