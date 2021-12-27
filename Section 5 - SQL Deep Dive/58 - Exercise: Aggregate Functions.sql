-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
--

USE "Employees";

-- Question 1: What is the average salary for the company?
-- Table: Salaries

SELECT AVG(salary) FROM "salaries"
WHERE to_date = '9999-01-01';

-- Question 2: What year was the youngest person born in the company?
-- Table: employees

SELECT EXTRACT(YEAR FROM MAX(birth_date)) FROM "employees";





-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
--

USE "France";

-- Question 1: How many towns are there in france?
-- Table: Towns

SELECT COUNT(*) FROM "towns";





-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
--

USE "World";

-- Question 1: How many official languages are there?
-- Table: countrylanguage

SELECT COUNT(*) from "countrylanguage"
WHERE isofficial = TRUE;

-- Question 2: What is the average life expectancy in the world?
-- Table: country

SELECT AVG(lifeexpectancy) FROM "country";

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

SELECT AVG("population") FROM "city"
WHERE countrycode = 'NLD';
