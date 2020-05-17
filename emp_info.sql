CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_info`(IN p_first_name VARCHAR(255), p_last_name VARCHAR(255), out p_emp_no INTEGER)
BEGIN
select employees.emp_no
into p_emp_no 
from employees
where p_first_name = employees.first_name 
AND p_last_name = employees.last_name;
END