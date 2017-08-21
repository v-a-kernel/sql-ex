-- Найдите максимальную цену ПК, выпускаемых каждым производителем, 
-- у которого есть модели в таблице PC.  
-- Вывести: maker, максимальная цена.

SELECT product.maker, MAX(pc.price) 
    FROM product, pc 
    WHERE product.model = pc.model 
    GROUP BY product.maker 
