-- 字符函数 --
#LENGTH(str) 获取字节数，不同字符集不一样
#CONCAT(str1,str2,...)拼接字符串
#UPPER(str)大写
#LOWER(str)小写
SELECT CONCAT(UPPER(user_Id)) FROM user_case
#SUBSTR(...)
SELECT SUBSTR('仰天大笑出门去，我辈岂是蓬蒿人？',6)#索引从1开始，不是0
SELECT SUBSTR('仰天大笑出门去，我辈岂是蓬蒿人？',1,4)#索引从1开始，不是0,长度是字符不是字节
#INSTR(str,substr) 找出是第几个
SELECT INSTR('感时花溅泪，恨别鸟惊心','花')
#TRIM([remstr FROM] str)
SELECT TRIM('     横看成岭侧成峰')
#trim只能去除开头和结尾
SELECT TRIM('其' FROM '其你好，其其，其')
#LPAD(str,len,padstr)用指定的字符实现左填充
#RPAD(str,len,padstr)
SELECT LPAD('江浸月',9,'合') 结果
#REPLACE(str,from_str,to_str)
SELECT REPLACE('怪物猎人OL','OL','WORLD') 结果