-- q.9548 'Pilfered Equipment'
-- quest object should be spawned only in 1 random place.

-- Clopper's Equipment
DELETE FROM pool_template WHERE entry = 25537;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25537,1,'Clopper\'s Equipment');
DELETE FROM pool_gameobject_template WHERE pool_entry = 25537;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(181746, 25537, 0, '181746 - Clopper\'s Equipment');


