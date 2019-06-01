-- Mannuth
UPDATE creature_template SET UnitFlags=768 WHERE entry=24397;
-- Deez
UPDATE creature_template SET UnitFlags=768 WHERE entry=24403;
-- Galathryn
UPDATE creature_template SET UnitFlags=768 WHERE entry=24404;
-- Adarrah
UPDATE creature_template SET UnitFlags=768 WHERE entry=24405;
-- Fudgerick - spawns holding coin purse
UPDATE creature_template SET UnitFlags=768, EquipmentTemplateId=2084 WHERE entry=24406;
-- Darwen - also spawns holding coin purse?
UPDATE creature_template SET UnitFlags=768, EquipmentTemplateId=2084 WHERE entry=24407;
-- Gunter
UPDATE creature_template SET UnitFlags=768 WHERE entry=24408;
-- Kyren
UPDATE creature_template SET UnitFlags=768 WHERE entry=24409;
-- Mitzi
UPDATE creature_template SET UnitFlags=768 WHERE entry=24445;
-- Christian
UPDATE creature_template SET UnitFlags=768 WHERE entry=24448;
-- Brennan
UPDATE creature_template SET UnitFlags=768 WHERE entry=24453;
-- Hollee
UPDATE creature_template SET UnitFlags=768 WHERE entry=24455;

-- Money Bag
UPDATE gameobject_template SET mingold=11*100*100, maxgold=19*100*100 WHERE entry=186736; -- approximately 11 - 19 gold?


