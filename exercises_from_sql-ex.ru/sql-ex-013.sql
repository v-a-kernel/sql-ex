-- Найдите среднюю скорость ПК, выпущенных производителем A.

SELECT AVG(pc.speed) 
    FROM pc, product 
    WHERE pc.model = product.model AND product.maker = 'A' 
