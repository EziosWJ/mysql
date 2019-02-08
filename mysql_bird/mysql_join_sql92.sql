#笛卡尔积造成的问题
SELECT
	*
FROM
	business_case,
	enterprise_case;
#SQL92标准
##等值连接
SELECT
	business_case.business_Dept,
	enterprise_case.enterprise_Name
FROM
	business_case,
	enterprise_case
WHERE
	enterprise_case.enterprise_Id = business_case.business_Dept;

#配合函数
SELECT
	MAX(b.business_Id),
	enterprise_Name
FROM
	business_case b,
	enterprise_case e
WHERE
	b.business_Dept = e.enterprise_Id;

#连接 => 分组 => 函数 => 排序
SELECT
 enterprise_Name,COUNT(1) 数量
FROM
	business_case b,
	enterprise_case e
WHERE
	b.business_Dept = e.enterprise_Id
GROUP BY
	enterprise_Name
ORDER BY 数量 DESC;

##非等值连接