-- Пронумеровать строки из таблицы Product в следующем порядке: 
-- имя производителя в порядке убывания числа производимых им моделей 
-- (при одинаковом числе моделей имя производителя в алфавитном порядке 
-- по возрастанию), номер модели (по возрастанию).  
-- 
-- Вывод: номер в соответствии с заданным порядком, 
--        имя производителя (maker), 
--        модель (model).  

SELECT count(*) OVER (ORDER BY c.countM DESC, c.maker, c.model) no, c.maker, c.model 
  FROM (SELECT count(*) OVER (PARTITION BY maker) countM, maker, model 
          FROM product) c ;
