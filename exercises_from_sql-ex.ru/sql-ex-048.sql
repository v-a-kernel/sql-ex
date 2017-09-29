-- Найдите классы кораблей, в которых хотя бы один корабль был потоплен 
-- в сражении.  

SELECT cl.class 
  FROM Classes cl 
  LEFT JOIN Ships s ON s.class = cl.class 
 WHERE cl.class IN (SELECT ship FROM Outcomes WHERE result = 'sunk') OR 
         s.name IN (SELECT ship FROM Outcomes WHERE result = 'sunk') 
 GROUP BY cl.class;
