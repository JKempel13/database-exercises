Use employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees ORDER BY last_name desc LIMIT 10;

SELECT first_name, last_name from employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date desc
LIMIT 5;

SELECT first_name, last_name from employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date desc
LIMIT 5 OFFSET 45;
