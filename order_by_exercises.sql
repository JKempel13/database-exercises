USE employees;

# --Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
# --Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
# --Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * from employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name;
# --Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
# --Now reverse the sort order for both queries.
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

# --Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * from employees
WHERE hire_date LIKE '199%'
   AND birth_date LIKE '%12-25'
   ORDER BY birth_date desc, hire_date desc;

SELECT * from employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';
