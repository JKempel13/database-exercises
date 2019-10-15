-- SELECT * from employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name;
-- SELECT * from employees WHERE last_name LIKE 'E%' ORDER BY emp_no desc;
-- SELECT * from employees WHERE hire_date LIKE '199%';
--
-- SELECT * from employees WHERE birth_date LIKE '%12-25';
--
-- SELECT * from employees WHERE last_name LIKE '%q%';
--
-- SELECT * from employees
-- WHERE gender = 'M'
--    AND (
--    first_name = 'Irena'
--    OR first_name = 'Vidya'
--    OR first_name = 'Maya'
--    );
--
-- SELECT * from employees
-- WHERE last_name
--    LIKE 'E%'
--    OR last_name LIKE '%e';
--
-- --Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
-- SELECT  from employees
-- WHERE last_name
--    LIKE 'E%'
--    AND last_name LIKE '%e';

-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
-- SELECT * from employees
-- WHERE hire_date LIKE '199%'
--    AND birth_date LIKE '%12-25'
--    ORDER BY birth_date desc, hire_date desc;
--
-- SELECT * from employees
-- WHERE last_name LIKE '%q%'
--   AND last_name NOT LIKE '%qu%';

 SELECT CONCAT_WS (' ', first_name, last_name ,DATEDIFF(now() , hire_date)) AS 'DAYS WORKING'
FROM employees
WHERE hire_date Like '199%' AND birth_date like '%12-25%'
ORDER BY birth_date, hire_date DESC
LIMIT 25;

SELECT CONCAT_WS(' ', first_name, last_name) AS 'Names that end with E' from employees
WHERE last_name
    LIKE 'E%'
  AND last_name LIKE '%e'
LIMIT 15;

SELECT * from employees LIMIT 10;