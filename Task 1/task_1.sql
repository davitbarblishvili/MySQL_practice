SELECT YEAR(t_dept_emp.from_date) as cal_year,t_employees.gender, COUNT(t_dept_emp.emp_no) FROM t_employees
JOIN
	t_dept_emp
ON
	t_dept_emp.emp_no = t_employees.emp_no
GROUP BY 
	cal_year,t_employees.gender
HAVING cal_year >= 1990
ORDER BY cal_year;