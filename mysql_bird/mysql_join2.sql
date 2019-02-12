#查询员工和其上司 内连接 (员工名包含k的)
SELECT
	CONCAT(
		e.first_name,
		' ',
		e.last_name
	),
	CONCAT(
		m.first_name,
		' ',
		m.last_name
	)
FROM
	employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE
	e.first_name LIKE '%k%'
OR e.last_name LIKE '%k %' ； ##外连接 
##查询一个表有 另外一个表没有的数据
SELECT
	b. NAME,
	o.id,
	o.boyName
FROM
	beauty b
LEFT JOIN boys o ON b.boyfriend_id = o.id;

## 没有对应的
SELECT
	b. NAME,
	o.id,
	o.boyName
FROM
	beauty b
LEFT JOIN boys o ON b.boyfriend_id = o.id
WHERE
	o.id IS NULL;

#查询哪个部门没有员工
SELECT
	DISTINCT d.department_name
FROM
	employees e
RIGHT JOIN departments d ON e.department_id = d.department_id
WHERE e.employee_id IS NULL
ORDER BY department_name;
#查询大于3的
SELECT * FROM beauty b LEFT JOIN boys o ON b.boyfriend_id = o.id WHERE b.id > 3;
#查询城市没有部门
SELECT * FROM locations l LEFT JOIN departments d ON l.location_id = d.location_id
WHERE department_id IS NULL;