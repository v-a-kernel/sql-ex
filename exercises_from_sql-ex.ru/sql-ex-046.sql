-- Для каждого корабля, участвовавшего в сражении при Гвадалканале (Guadalcanal), 
-- вывести название, водоизмещение, и число орудий.  

SELECT o.ship, displacement, numGuns 
  FROM (SELECT name AS ship, displacement, numGuns 
          FROM ships s JOIN classes c ON c.class = s.class 
        UNION 
        SELECT class AS ship, displacement, numGuns 
          FROM classes c) AS a 
RIGHT JOIN outcomes o ON o.ship = a.ship 
WHERE battle = 'Guadalcanal';
