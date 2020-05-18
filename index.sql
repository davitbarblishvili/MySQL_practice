SELECT * FROM salaries
where 
	salary >= 89000;

-- Create Index for salary column
CREATE INDEX i_salary on salaries(salary);

/*------------------------------------------*/

SELECT
	* 
FROM
	employees
WHERE
	first_name = 'Georgi'
		AND last_name = 'Facello';
		
-- Create index for multiple columns --       
CREATE INDEX i_full ON employees(first_name, last_name);
