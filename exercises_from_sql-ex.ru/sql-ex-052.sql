-- Определить названия всех кораблей из таблицы Ships, которые могут быть 
-- линейным японским кораблем, 
-- имеющим число главных орудий не менее девяти, 
-- калибр орудий менее 19 дюймов, 
-- и водоизмещение не более 65 тыс. тонн.  

SELECT DISTINCT s.name 
  FROM ships s JOIN classes c ON c.class = s.class 
 WHERE UPPER(c.country) = 'JAPAN' 
   AND (numguns >= 9 OR numguns IS NULL) 
   AND (c.bore < 19 OR c.bore IS NULL) 
   AND (displacement <= 65000 OR c.displacement IS NULL) 
   AND (c.type = 'bb'); 
