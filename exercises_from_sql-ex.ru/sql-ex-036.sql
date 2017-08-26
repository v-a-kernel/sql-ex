-- Перечислите названия головных кораблей, имеющихся в базе данных 
-- (учесть корабли в Outcomes).

SELECT name FROM ships WHERE class = name 
  UNION 
  SELECT ship as name FROM classes, outcomes 
      WHERE classes.class = outcomes.ship;
