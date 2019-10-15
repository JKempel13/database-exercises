SELECT last_name from employees
WHERE last_name
    LIKE 'E%'
   AND last_name LIKE '%e'
GROUP BY first_name, last_name;

SELECT last_name from employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
  GROUP BY last_name
  LIMIT 3;

SELECT COUNT(*), gender from employees WHERE first_name IN ('Irena','Vidya','Maya') GROUP BY (gender);

SELECT CONCAT(emp_no, ' - ',last_name, ' ,', first_name) AS 'full_name', birth_date AS 'DOB' from employees LIMIT 10;