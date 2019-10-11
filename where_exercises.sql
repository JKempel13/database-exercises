USE employees_db;

SELECT * from employees WHERE first_name IN ('Irena','Vidya','Maya');

SELECT * from employees WHERE last_name LIKE 'E%' ORDER BY emp_no desc;

SELECT * from employees WHERE hire_date LIKE '199%';

SELECT * from employees WHERE birth_date LIKE '%12-25';

SELECT * from employees WHERE last_name LIKE '%q%';

SELECT * from employees
WHERE gender = 'M'
   AND (
   first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
   );

SELECT * from employees
WHERE last_name
   LIKE 'E%'
   OR last_name LIKE '%e';

SELECT * from employees
WHERE last_name
   LIKE 'E%'
   AND last_name LIKE '%e';

SELECT * from employees
WHERE hire_date LIKE '199%'
   AND birth_date LIKE '%12-25';

SELECT * from employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';
