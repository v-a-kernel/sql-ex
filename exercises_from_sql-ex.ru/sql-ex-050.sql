-- Найдите сражения, в которых участвовали корабли класса Kongo 
-- из таблицы Ships.  

SELECT DISTINCT battle 
  FROM outcomes 
 WHERE ship IN (SELECT name 
                  FROM ships 
                 WHERE class = 'kongo'); 
