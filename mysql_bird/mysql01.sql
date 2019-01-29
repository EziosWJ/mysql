#DISTINCT
SELECT DISTINCT unit_Name FROM user_case ORDER BY unit_Name;
#DISTINCT 多字段
SELECT *,GROUP_CONCAT(DISTINCT unit_Name) from user_case GROUP BY unit_Name ORDER BY user_Id;
# '+'
SELECT 123+345 ;
#字符转0
SELECT 'a'+'b';
#有Null则结果必为Null
SELECT 'a'+NULL;

#CONCAT(str1,str2,...) 拼接
SELECT CONCAT(user_Id,unit_Name) FROM user_case;

#表详情
DESC user_case

#IFNULL(,expr2)
SELECT IFNULL(login_Name,'000') as 登录名 FROM user_case 

#
SELECT * from user_case WHERE NOT(user_Id<=1) 

#模糊查询 通过\转义 或者后面加ESCAPE '$'转义
SELECT * FROM user_case WHERE user_Id LIKE '_\_'

SELECT * FROM user_case WHERE user_Id LIKE '__' ESCAPE '_'
#BETWEEN
SELECT * FROM user_case WHERE user_Id BETWEEN 1 and 5
#IN
SELECT * FROM user_case WHERE user_Id IN(6,2)
#LENGTH(str)
SELECT *,LENGTH(unit_Name) le FROM user_case ORDER BY le asc
#LENGTH(str)
SELECT *,LENGTH(unit_Name) le FROM user_case ORDER BY le asc,user_Id asc