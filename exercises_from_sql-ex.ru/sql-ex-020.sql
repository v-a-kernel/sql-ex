-- Найдите производителей, выпускающих по меньшей мере три различных модели ПК.  
-- Вывести: Maker, число моделей ПК.

SELECT maker, COUNT(model) 
    FROM product 
    WHERE type = 'pc' 
    GROUP BY product.maker 
    HAVING COUNT (DISTINCT model) >= 3
