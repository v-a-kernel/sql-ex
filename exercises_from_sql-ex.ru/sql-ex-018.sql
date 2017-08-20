-- Найдите производителей самых дешёвых цветных принтеров.  
-- Вывести: maker, price.

SELECT DISTINCT product.maker, printer.price 
    FROM product, printer 
    WHERE product.model = printer.model 
      AND printer.color = 'y' 
      AND printer.price = (SELECT MIN(price) 
                               FROM printer 
                               WHERE printer.color = 'y')
