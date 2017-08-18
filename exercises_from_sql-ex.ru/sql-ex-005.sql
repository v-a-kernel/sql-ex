-- Найдите номер модели, скорость, и размер жёсткого диска ПК, 
-- имеющих 12x или 24x CD, и цену менее 600 долл.

SELECT model, speed, hd 
    FROM PC 
    WHERE ((cd = '12x') OR (cd = '24x')) AND (price < 600)
