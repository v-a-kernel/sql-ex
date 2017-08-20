-- Найдите размеры жёстких дисков, совпадающих у двух и более PC.  
-- Вывести: HD.

SELECT hd FROM pc GROUP BY hd HAVING COUNT(model) >= 2
