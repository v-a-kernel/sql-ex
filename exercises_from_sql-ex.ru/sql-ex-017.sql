-- Найдите модели ПК-блокнотов, скорость которых меньше 
-- скорости любого из ПК.  
-- Вывести: type, model, speed.

SELECT DISTINCT p.type, p.model, l.speed 
    FROM laptop l 
    JOIN product p on l.model = p.model 
    WHERE l.speed < (SELECT MIN(speed) FROM pc)
