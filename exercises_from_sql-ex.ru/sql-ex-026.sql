-- Найдите среднюю цену ПК и ПК-блокнотов, 
-- выпущенных производителем A (латинская буква).  
-- Вывести: одна общая средняя цена.

SELECT sum(s.price)/sum(s._quantity) as _average 
    FROM (SELECT price, 1 as _quantity FROM pc, product 
              WHERE pc.model = product.model 
                AND product.maker = 'A' 
            UNION all 
            SELECT price, 1 as _quantity FROM laptop, product 
              WHERE laptop.model = product.model 
                AND product.maker = 'A'
          ) as s;
