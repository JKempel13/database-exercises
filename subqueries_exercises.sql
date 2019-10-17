USE employees;

-- Find all the employees with the same hire date as employee 101010 using a subquery. # 69 Rows

SELECT hire_date from employees where emp_no = 101010;

SELECT first_name, last_name from employees
WHERE hire_date = (
    SELECT hire_date from employees where emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles


# USING a JOIN method
SELECT title from titles
JOIN employees ON titles.emp_no = employees.emp_no
WHERE first_name = 'Aamod'
GROUP BY title;

# USING a SUBQUERY method
SELECT title from titles
WHERE emp_no IN (
    SELECT emp_no from employees WHERE first_name = 'Aamod'
    )
GROUP BY title;

# Find all the current department managers that are female
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

# USING JOIN
SELECT e.first_name, e.last_name
FROM departments AS d JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01';

# USING SUBQUERY
SELECT first_name, last_name FROM employees
WHERE gender = 'F' AND emp_no IN (
    SELECT emp_no FROM dept_manager WHERE to_date > NOW()
    );

# Find all the department names that currently have female managers.
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+

SELECT dept_name from departments
WHERE dept_no IN (
    SELECT dept_no from dept_manager WHERE to_date > NOW() AND emp_no IN (
        SELECT emp_no from employees WHERE gender = 'F'
        )
    );

# Find the first and last name of the employee with the highest salary.
# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+

SELECT first_name, last_name FROM employees
WHERE emp_no = (
    SELECT emp_no FROM salaries ORDER BY salary desc LIMIT 1
    );




