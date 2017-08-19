-- Найдите производителей ПК с процессором не менее 450 МГц.  
-- Вывести: Maker.

SELECT DISTINCT product.maker 
    FROM pc 
    INNER JOIN product ON pc.model = product.model 
    WHERE pc.speed >= 450 
