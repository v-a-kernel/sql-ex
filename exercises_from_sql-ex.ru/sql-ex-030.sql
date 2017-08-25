-- В предположении, что приход и расход денег на каждом пункте приёма 
-- фиксируется произвольное число раз 
-- (первичным ключом в таблицах является столбец code), 
-- требуется получить таблицу, в которой каждому пункту за каждую дату 
-- выполнения операций будет соответствовать одна строка.  
-- Вывод: point, date, суммарный расход пункта за день (out), 
--                     суммарный приход пункта за день (inc).  
-- Отсутствующие значения считать неопределёнными (NULL).

SELECT point, date, SUM(sum_out), SUM(sum_inc) 
    FROM ( SELECT point, date, SUM(inc) as sum_inc, NULL as sum_out 
               FROM Income GROUP BY point, date 
             UNION 
             SELECT point, date, NULL as sum_inc, SUM(out) as sum_out 
                 FROM Outcome GROUP BY point, date 
          ) as t 
    GROUP BY point, date 
    ORDER BY point ;
