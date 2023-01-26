--Table 1 retirement_titles
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
 	t.title, 
	t.from_date, 
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Unique titles also excluding non active employees
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, title DESC;

--Retiring titles
Select COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC;

--Mentorship eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND
	(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no

--Additional queries
SELECT * FROM mentorship_eligibility
ORDER BY birth_date;

SELECT * FROM retirement_titles
ORDER BY from_date;

SELECT COUNT(retirement_titles.title) FROM retirement_titles;