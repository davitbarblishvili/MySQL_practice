DELIMITER $$

CREATE PROCEDURE `emp_info`(IN p_first_name VARCHAR(255), p_last_name VARCHAR(255), out p_emp_no INTEGER)
BEGIN
	SELECT 
		employees.emp_no
	INTO 
		p_emp_no 
	FROM 
		employees
	WHERE 
		p_first_name = employees.first_name 
	AND 
		p_last_name = employees.last_name;
END
DELIMITER ;
