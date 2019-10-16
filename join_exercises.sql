USE employees;

-- write a query that shows each department along with the name of the current manager for that department.
# name of each department from departments table
# name of current manager from each department from dept_manager



-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
-- JOIN dept_emp as de
--   ON de.emp_no = e.emp_no
-- JOIN departments as d
--   ON d.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments AS d JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT * from departments;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS Title, COUNT(*) AS COUNT
FROM dept_emp  AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN titles AS t
ON t.emp_no = e.emp_no
WHERE t.to_date > NOW()
AND de.to_date > NOW()
AND de.dept_no = 'd009'
GROUP BY t.title;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS Name,
s.salary AS Salary
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date > NOW()
AND dm.to_date > NOW()
ORDER BY d.dept_name;