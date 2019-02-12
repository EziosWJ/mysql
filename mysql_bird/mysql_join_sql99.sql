#SQL92
##等值连接
SELECT
	last_name,
	department_name
FROM
	employees e
INNER JOIN departments d ON e.department_id = d.department_id;

##
SELECT
	COUNT(1) num,
	department_name
FROM
	employees e
INNER JOIN departments d ON e.department_id = d.department_id
GROUP BY
	department_name
HAVING
	num > 3
ORDER BY
	num DESC ;
##非等值
	SELECT
		j.grade_level,
		e.salary
	FROM
		employees e
	JOIN job_grades j ON e.salary BETWEEN j.lowest_sal
	AND j.highest_sal;