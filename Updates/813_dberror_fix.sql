-- DB error/CLS cleanup

UPDATE creature_template SET MinLevelHealth=3785, MaxLevelHealth=3785 WHERE entry=18726;
UPDATE creature_template SET MinLevelHealth=3942, MaxLevelHealth=3942 WHERE entry=20709;
UPDATE creature_template SET MinLevelHealth=8279, MaxLevelHealth=8279 WHERE entry=20307;
UPDATE creature_template SET MinLevelMana=2790, MaxLevelMana=2790 WHERE entry=20307;

DELETE FROM creature_addon WHERE guid IN (71069,71071,71072,71076,71079,71080,71854,71855,71861,71862,71863,71879,71884);

-- Unused, see CDB-203
DELETE FROM gameobject_loot_template WHERE entry=2032;

-- CDB-1793
DELETE FROM reference_loot_template WHERE entry=35019;

-- add missing Glowing Soulgem used by quest 970 end script
-- source: ClassicDB
DELETE FROM gameobject WHERE guid=21191;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(21191, 19862, 1, 3184.06, 190.81, 4.61263, 5.55407, 0, 0, 0, 0, -6, -6, 0, 1);

-- handled by 1043201
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1043202,1043203);

-- duplicates, 4729401 - 4729404 used instead
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 905601 AND 905604;

UPDATE creature_template SET NpcFlags=NpcFlags|128 WHERE entry=15909; -- still missing vendor template?

UPDATE creature_template SET LootId=0 WHERE entry=22910;


