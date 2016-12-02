-- ====================================
-- Arcatraz Misc Fixes and Improvements
-- ====================================
-- Fix Corpses Making Them Unselectable and fix Respawn Time
UPDATE creature_template SET UnitFlags=33554434 WHERE entry IN (21303,21304,21592,21623);
UPDATE creature SET SpawnTimeSecs=86400 WHERE id IN (21303,21304,21592,21623);

-- Set Arcatraz Sentinels With 40% HP
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN (20869,21586);
UPDATE creature SET curhealth=46108, SpawnTimeSecs=86400 WHERE id=20869 and SpawnMask=1;
UPDATE creature SET curhealth=62315, SpawnTimeSecs=86400 WHERE id=20869 and SpawnMask=2;

-- Fix Spiteful Temptress Faction
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (20883,21615);


-- Add Missing Eredar Deathbringer Spawn
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107735','20880','552','3','0','0','301.778','125.168','22.2269','1.55752','86400','0','0','39123','12620','0','0');

UPDATE creature_template SET LootId=20880 WHERE entry IN (20880,21594);

