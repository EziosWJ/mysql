#NOW()
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
SELECT YEAR('2018-01-01');
SELECT MONTH(NOW());

#格式化
SELECT DATE_FORMAT(NOW(),'%m-%d-%Y');
SELECT STR_TO_DATE('02-03-2012','%m-%d-%Y');

#
SELECT DATEDIFF(NOW(),'1995-07-12');