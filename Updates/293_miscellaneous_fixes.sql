-- Fix DB Errors
UPDATE creature_template SET MinLevelHealth=4050, MaxLevelHealth=4050 WHERE entry=22521;
UPDATE creature_template SET MinLevelHealth=6720, MaxLevelHealth=6720 WHERE entry=23265;
DELETE FROM db_script_string WHERE entry=2000005147; -- Moved to ACID

-- Illidari Overseer wanted to be a fisherman, it's not his destiny however...
UPDATE creature SET equipment_id=0 WHERE guid=150193;

-- Ashtongue Shaman
UPDATE creature SET equipment_id=0 WHERE id=21453;

-- Stormwind Soldier - The Stair of Destiny
UPDATE creature SET equipment_id=0 WHERE id=18948;


