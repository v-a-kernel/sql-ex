-- Для ПК с максимальным кодом из таблицы PC вывести все его характеристики 
-- (кроме кода) в два столбца: 
-- - название характеристики (имя соответствующего столбца в таблице PC); 
-- - значение характеристики 

SELECT field, val FROM 
    ( SELECT 
        CAST(model AS NVARCHAR(10)) AS model 
      , CAST(speed AS NVARCHAR(10)) AS speed 
      , CAST(ram   AS NVARCHAR(10)) AS ram 
      , CAST(hd    AS NVARCHAR(10)) AS hd 
      , CAST(cd    AS NVARCHAR(10)) AS cd 
      , CAST(price AS NVARCHAR(10)) AS price FROM pc 
      WHERE code = (SELECT max(code) FROM pc) 
    ) AS t 
    
UNPIVOT 
    ( val FOR field IN (model, speed, ram, hd, cd, price) ) AS unpvt;
