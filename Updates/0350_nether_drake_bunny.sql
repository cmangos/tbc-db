-- has core component
DELETE FROM creature WHERE id IN(20021,21814); -- only tempspawned
UPDATE creature_template SET MovementType=0 WHERE entry IN(21814);

