-- Найдите страны, имевшие когда-либо классы обычных боевых кораблей ('bb') 
--               и имевшие когда-либо классы крейсеров ('bc').

SELECT country 
    FROM classes 
    GROUP BY country 
    HAVING COUNT(DISTINCT type) = 2;
