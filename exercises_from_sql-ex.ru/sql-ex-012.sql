-- Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 долл.

SELECT AVG(speed) 
    FROM laptop 
    WHERE price > 1000 
