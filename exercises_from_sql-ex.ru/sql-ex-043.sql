-- Укажите сражения, которые произошли в годы, не совпадающие ни с одним из 
-- годов спуска кораблей на воду.  

SELECT name 
  FROM battles 
 WHERE year(date) NOT IN (SELECT launched 
                            FROM ships 
                           WHERE launched IS NOT NULL);
