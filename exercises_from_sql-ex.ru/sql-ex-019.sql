-- Для каждого производителя, имеющего модели в таблице Laptop, найдите 
-- средний размер экрана выпускаемых им ПК-блокнотов.  
-- Вывести: maker, средний размер экрана.

SELECT product.maker, AVG(screen) 
    FROM      laptop 
    LEFT JOIN product ON product.model = laptop.model 
    GROUP BY  product.maker
