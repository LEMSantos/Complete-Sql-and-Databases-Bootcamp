/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

SELECT c.firstname, c.lastname, o.orderid
FROM "orders" AS o
INNER JOIN "customers" AS c
    ON o.customerid = c.customerid
WHERE c.state IN ('OH', 'NY', 'OR')
ORDER BY o.orderid
LIMIT 100;

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

SELECT p.title AS "name",
       p.price AS "product price",
       i.quan_in_stock AS "stock"
FROM "products" AS p
INNER JOIN "inventory" AS i ON p.prod_id = i.prod_id
ORDER BY p.prod_id
LIMIT 100;

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT e.emp_no AS "identifier",
       CONCAT(e.first_name, ' ', e.last_name) AS "name",
       dp.dept_name AS "department"
FROM "employees" AS e
INNER JOIN "dept_emp" AS de ON e.emp_no = de.emp_no
INNER JOIN "departments" AS dp
    ON (
        de.dept_no = dp.dept_no AND
        de.to_date = '9999-01-01'
    )
ORDER BY e.emp_no
LIMIT 100;
