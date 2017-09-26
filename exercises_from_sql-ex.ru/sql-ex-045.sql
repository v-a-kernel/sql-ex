-- Найдите названия всех кораблей в базе данных, состоящие из трёх и более 
-- слов (например, King George V).  
-- Считать, что слова в названиях разделяются единичными пробелами, 
-- и нет концевых пробелов.  

SELECT name FROM ships 
 WHERE name LIKE '% % %' 
UNION 
SELECT ship FROM outcomes 
 WHERE ship LIKE '% % %';
