-- Найдите производителей принтеров.  
-- Вывести: maker.

SELECT maker FROM Product WHERE type = 'Printer' GROUP BY maker
