-- Найдите корабли, "сохранившиеся для будущих сражений"; 
-- т.е. выведенные из строя в одной битве (damaged), 
-- они участвовали в другой, произошедшей позже (позднее).

SELECT DISTINCT ship 
  FROM outcomes o 
  JOIN battles  b 
    ON o.battle = b.name 
 WHERE EXISTS (SELECT * 
                 FROM outcomes o_in 
                 JOIN battles  b_in 
                   ON o_in.battle = b_in.name 
                WHERE b_in.date > b.date 
                  AND o.ship = o_in.ship) 
   AND o.result = 'damaged' 
