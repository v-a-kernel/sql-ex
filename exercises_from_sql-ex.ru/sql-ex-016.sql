-- Найдите пары моделей PC, имеющих одинаковые скорость и RAM.  В результате 
-- каждая пара указывается только один раз, т.е. (i,j), но не (j,i).  
-- Порядок вывода: 
-- модель с большим номером, модель с меньшим номером, скорость, и RAM.

SELECT DISTINCT pc1.model, pc2.model, pc1.speed, pc1.ram 
    FROM pc pc1, pc pc2 
    WHERE pc1.speed = pc2.speed 
      AND pc1.ram   = pc2.ram 
      AND pc1.model > pc2.model
