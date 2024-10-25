SELECT * FROM books;
#查询出版日期不为NULL的
SELECT * FROM books WHERE pudate IS NOT NULL;
#BETWEEN [整型] AND [整型]
#查询图书价格在30-40的图书信息
SELECT * FROM books WHERE price BETWEEN 30 AND 40;
#查询图书出版日期在2000-2010年之间的图书信息
SELECT * FROM books WHERE pudate BETWEEN 2000 AND 2010;
#查询图书库存数不在20-30之间的图书信息 不包含20和30本
SELECT * FROM books WHERE num NOT BETWEEN 20 AND 30 AND pudate != 2000 AND 
pudate != 2010;
#IN / NOT IN
#取图书编号为4,18,39的图书信息
SELECT * FROM books WHERE id IN (4,18,39);
#取图书编号不为4,18,39的图书信息
SELECT * FROM books WHERE id NOT IN (4,18,39);
#查询图书名称为EmmaT ,Story of Jane,friend的图书信息
SELECT * FROM books WHERE `name` IN ('EmmaT' ,'Story of Jane','friend');
#模糊查询LIKE
#查询作者名称含有【u】这个字母的图书信息
SELECT * FROM books WHERE `authors` LIKE '%u%';
#查询图书名称中含有[of]的图书信息
SELECT * FROM books WHERE `name` LIKE '%of';
SELECT * FROM books WHERE num LIKE '%1%';
#查询图书库存是两位数，10-19的图书信息
SELECT * FROM books WHERE num LIKE '1_';
SELECT * FROM books WHERE pudate LIKE '19_5';
#查询图书名称中含有[%]的图书信息
SELECT * FROM books WHERE `name` LIKE '%%%';
#使用自定义转义字符
SELECT * FROM books WHERE `name` LIKE '%@\%' ESCAPE '@';
#查询图书名称中既含有【o】又含有【1】的图书信息
SELECT * FROM books WHERE `name` LIKE '%o%' AND `name` LIKE '%1%';
#图书名称第二个字符是s的图书信息
SELECT * FROM books WHERE `name` LIKE '_s%';
#使用正则表达式查询图书名称以j开头的图书信息
SELECT * FROM books WHERE `name` REGEXP '^j';
#使用正则表达式查询图书名称以e结尾的图书信息
SELECT * FROM books WHERE `name` RLIKE 'e$';
#含有e的图书信息
SELECT * FROM books WHERE `name` RLIKE 'e';
#含有数字的图书信息
SELECT * FROM books WHERE `name` REGEXP '[0-9]';
#含有字母的图书信息
SELECT * FROM books WHERE `name` REGEXP '[a-z]';
#查询出版日期在2000年之前的不包含2000年，或者在2010之后的不包括2010年的图书信息 || OR
SELECT * FROM books WHERE pudate < 2000 OR pudate > 2010;
#查询出版日期在2000年之前不包括2000年，或者图书库存大于0本的图书信息
SELECT * FROM books WHERE pudate <2000 OR num > 0;
#&& AND
#例如查询图书类型是novel并且出版日期是2000年并且库存数小于15本的图书信息
SELECT * FROM books WHERE note = 'novel' AND pudate = '2000' AND num < 15;
#AND OR一起使用
#例如查询图书类型是novel并且出版日期是2000年前，或者作者名称中含有jane的图书信息
SELECT * FROM books WHERE `authors` LIKE '%jane%' OR note ='novel' AND pudate < 2000; 
#名字中不含有T的图书信息
SELECT * FROM books WHERE `name` NOT LIKE '%t%';
#库存不为0 
SELECT *




