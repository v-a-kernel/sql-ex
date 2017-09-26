-- Найдите названия кораблей, потопленных в сражениях, 
-- и название сражения, в котором они были потоплены.  

SELECT ship, battle 
  FROM outcomes 
 WHERE result = 'sunk';
