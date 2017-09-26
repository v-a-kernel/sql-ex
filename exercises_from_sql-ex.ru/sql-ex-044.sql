-- Найдите названия всех кораблей в базе данных, начинающихся с буквы R.  

SELECT name FROM ships 
 WHERE name LIKE 'R%' 
UNION 
SELECT ship FROM outcomes 
 WHERE ship LIKE 'R%';
