-- Для каждого производителя, выпускающего ПК-блокноты c объёмом жёсткого 
-- диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов.  
-- Вывод: производитель, скорость.

SELECT DISTINCT p.maker, l.speed 
    FROM laptop l 
    JOIN product p ON p.model = l.model 
    WHERE l.hd >= 10
