#`IF`(expr1,expr2,expr3) if else 效果
SELECT IF(10>2,'大于','小于');
/* CASE
		WHEN  THEN
		WHEN  THEN
		WHEN  THEN
ELSE
END
*/
SELECT *,
CASE user_Id
WHEN 5 THEN '我'
ELSE user_Id
END
 FROM user_case;
#
SELECT *,
CASE  #**************这里不同
WHEN role_Id<=201 THEN '大权限'
ELSE role_Id
END
 FROM user_case;