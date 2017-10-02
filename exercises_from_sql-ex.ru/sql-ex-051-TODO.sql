-- Найдите названия кораблей, имеющих наибольшее число орудий среди всех 
-- имеющихся кораблей такого же водоизмещения 
-- (учесть корабли из таблицы Outcomes).  

-- TODO: FIXME!! 
SELECT name 
  FROM (SELECT o.ship AS name, numGuns, displacement 
          FROM outcomes o INNER JOIN classes c 
                                  ON o.ship = c.class AND 
                                     o.ship NOT IN (SELECT name 
                                                      FROM ships ) 
        UNION 
        SELECT s.name AS name, numGuns, displacement 
          FROM ships s INNER JOIN classes c 
                               ON s.class = c.class 
        ) os 
       INNER JOIN 
       (SELECT MAX(numGuns) AS MaxNumGuns, displacement 
          FROM outcomes o INNER JOIN classes c 
                                  ON o.ship = c.class AND 
                                     o.ship NOT IN (SELECT name 
                                                      FROM ships ) 
        GROUP BY displacement 
        UNION 
        SELECT MAX(numGuns) AS MaxNumGuns, displacement 
          FROM ships s INNER JOIN classes c 
                               ON s.class = c.class 
        GROUP BY displacement 
        ) gd ON os.numGuns = gd.MaxNumGuns AND 
                os.displacement = gd.displacement ; 
