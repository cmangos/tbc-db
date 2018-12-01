-- Improve scripts for q.1920 'Investigate the Blue Recluse' and q.1960 'Investigate the Alchemist Shop'
-- Based on sniffs and this video: https://www.youtube.com/watch?v=M9XbZWgzHpM

-- Loot is not from the creature but from g.103574 LootId 4589
DELETE FROM creature_loot_template WHERE entry=6492;
UPDATE creature_template SET LootId=0 WHERE entry=6492;

-- Add missing trap from trinitycore
DELETE FROM gameobject_template WHERE entry=103575;
INSERT INTO gameobject_template (entry,type,displayId,name,size,data0,data1,data2,data3) VALUES
(103575,6,327,'Containment Coffer TRAP',1,0,0,0,9012);

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN(122088);
INSERT INTO `dbscripts_on_go_template_use` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(122088,1,40,0,0,0,0,0,0,0,0,0,0,'Containment Coffer - Despawn Self on Use',0,0,0,0);

UPDATE creature SET spawntimesecsmin=180, spawntimesecsmax=180 WHERE id=6492;
-- The NPCs are invisible on spawn so we have no way to get sniffed spawn coords.
-- Rework it based on wowhead comments: https://www.wowhead.com/quest=1920/investigate-the-blue-recluse
-- Basement: 1
-- Kitchen: 1
-- Balcony: 1
-- Main Room: 3
UPDATE creature SET position_x=-9104.65, position_y=833.212, position_z=97.6289 WHERE guid=107731 AND id=6492; -- Basement
UPDATE creature SET position_x=-9090.42, position_y=826.235, position_z=115.668 WHERE guid=107732 AND id=6492; -- Balcony
UPDATE creature SET position_x=-9068.78, position_y=839.768, position_z=108.419 WHERE guid=107733 AND id=6492; -- Main Room
UPDATE creature SET position_x=-9065.41, position_y=831.277, position_z=108.419 WHERE guid=107734 AND id=6492; -- Main Room
DELETE FROM creature WHERE guid IN(160759,160760) AND id=6492;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(160759, 6492, 0, 1, 0, 0, -9077, 831.549, 108.419, 2.3646, 180, 180, 5, 0, 0, 0, 0, 1), -- Main Room
(160760, 6492, 0, 1, 0, 0, -9102.94, 836.88, 105.122, 5.86749, 180, 180, 5, 0, 0, 0, 0, 1); -- Kitchen

