USE employees; 
DROP FUNCTION IF EXISTS emp_info

DELIMITER $$
CREATE FUNCTION emp_info(p_first_name VARCHAR(255),p_last_name VARCHAR(255)) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
	-- Declare variables --
	DECLARE v_maxDate DATE;
	DECLARE v_salary_return DECIMAL(10,2);
    
    -- Getting the newest date --
    SELECT 
		MAX(from_date) 
    INTO 
		v_maxDate
    FROM 
		employees
    JOIN 
		salaries 
	ON
		employees.emp_no = salaries.emp_no 
    WHERE 
		p_first_name = employees.first_name 
    AND
		p_last_name = employees.last_name;
        
	-- Getting the salary --
	SELECT 
		salaries.salary 
	INTO
		v_salary_return
	FROM
		employees
	JOIN
		salaries 
	ON
		employees.emp_no = salaries.emp_no
	WHERE
		p.first_name = employees.first_name
	AND
		p.last_name = employees.last_name
	AND
		v_maxDate = salaries.from_date;
        
	-- RETURN salary --
   RETURN v_salary_return;
   
END$$
DELIMITER ;

SELECT emp_info('Aruna','Journel');
		
    
        
	
    
    
    

