-- Найти производителей, которые выпускают более одной модели, при этом все 
-- выпускаемые производителем модели являются продуктами одного типа.  
-- Вывести: maker, type.

SELECT maker, MAX(type) 
    FROM product 
    GROUP BY maker 
    HAVING COUNT(DISTINCT type) = 1 AND COUNT(model) > 1
