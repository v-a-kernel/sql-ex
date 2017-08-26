-- Укажите корабли, потопленные в сражениях 
-- в Северной Атлантике (North Atlantic).  
-- Вывод: ship.

SELECT o.ship 
    FROM battles b LEFT JOIN outcomes o ON o.battle = b.name 
    WHERE b.name = 'North Atlantic' AND o.result = 'sunk';
