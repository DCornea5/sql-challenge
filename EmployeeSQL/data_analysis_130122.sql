--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no As "Emp_No", e.last_name AS "Last Name", e.first_name AS "First Name", e.sex AS "Sex", e.hire_date AS "Hire Date", s.salary AS "Salary"
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no ASC;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name AS "First Name", e.last_name AS "Last Name", e.hire_date AS "Hire Date"
FROM employees e
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986'
ORDER BY hire_date ASC;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no AS "Dep.No", d.dept_name AS "Department Name", dm.emp_no AS "Emp.No", e.last_name AS "Last Name", e.first_name AS "First Name"
FROM dept_manager dm
JOIN departments d
ON dm.dept_no=d.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no
ORDER BY e.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no AS "Emp.No", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
ORDER BY e.emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name AS "First Name", e.last_name AS "Last Name", e.sex AS "Sex"
FROM employees e
WHERE e.first_name='Hercules' AND e.last_name LIKE 'B%' ;

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no AS "Emp.No", e.last_name AS "Last Name", e.first_name AS "Fisrt Name", d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name='Sales'
ORDER BY e.emp_no;

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no AS "Emp.No", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development'
ORDER BY e.emp_no ASC;

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name AS "Last Name", COUNT(last_name) AS "Last Name Frequency"
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;


