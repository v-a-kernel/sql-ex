-- Найдите производителя, выпускающего ПК, но не ПК-блокноты.

SELECT DISTINCT maker 
    FROM product 
    WHERE type = 'pc' 
  EXCEPT 
    SELECT DISTINCT product.maker 
        FROM product 
        WHERE type = 'laptop' ; 
