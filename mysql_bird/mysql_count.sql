#COUNT()
SELECT COUNT(DISTINCT unit_Name) FROM user_case;
SELECT COUNT(DISTINCT role_Id) FROM user_case;
SELECT COUNT(*) FROM user_case;
SELECT COUNT(1) FROM user_case;
#和分组函数一同查询的字段要跟group by