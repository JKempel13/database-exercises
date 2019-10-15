
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name from employees
WHERE last_name
    LIKE 'E%'
   AND last_name LIKE '%e'
GROUP BY last_name;

SELECT DISTINCT last_name from employees
WHERE last_name
    LIKE 'E%'
   AND last_name LIKE '%e'
GROUP BY first_name, last_name;

SELECT last_name from employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
  GROUP BY last_name;

SELECT COUNT(*) AS 'How many with these names', gender AS 'M/F' from employees WHERE first_name IN ('Irena','Vidya','Maya') GROUP BY (gender);