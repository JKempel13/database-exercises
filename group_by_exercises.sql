SELECT DISTINCT title FROM titles;

SELECT last_name, count(*) from employees
WHERE last_name
    LIKE 'E%E'
GROUP BY last_name;

SELECT last_name, first_name from employees
WHERE last_name
    LIKE 'E%E'
GROUP BY last_name, first_name;

SELECT last_name from employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
  GROUP BY last_name;

SELECT CONCAT(first_name, ' ' , last_name) AS name, COUNT(*) AS '# of people with the same name' from employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY COUNT(*) desc;

SELECT COUNT(*) AS 'How many with these names', gender AS 'M/F' from employees WHERE first_name IN ('Irena','Vidya','Maya') GROUP BY (gender);