-- В предположении, что приход и расход денег на каждом пункте приёма 
-- фиксируется не чаще одного раза в день 
-- [т.е. первичный ключ есть (пункт, дата)], 
-- написать запрос со следующими выходными данными: 
-- (пункт, дата, приход, расход).  
-- Использовать таблицы Income_o и Outcome_o.

SELECT t1.point, t1.date, inc, out 
    FROM income_o t1 
         LEFT JOIN outcome_o t2 
                ON t1.point = t2.point 
                   AND t1.date = t2.date 
  UNION 
  SELECT t2.point, t2.date, inc, out 
    FROM income_o t1 
         RIGHT JOIN outcome_o t2 
                 ON t1.point = t2.point 
                    AND t1.date = t2.date ;
