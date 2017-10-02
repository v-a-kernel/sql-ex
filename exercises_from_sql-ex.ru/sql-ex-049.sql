-- Найдите названия кораблей с орудиями калибра 16 дюймов 
-- (учесть корабли из таблицы Outcomes).  

SELECT ships.name 
  FROM classes JOIN ships ON classes.class = ships.class 
 WHERE bore = 16 
UNION 
SELECT outcomes.ship 
  FROM outcomes JOIN classes ON classes.class = outcomes.ship 
 WHERE bore = 16 ; 
