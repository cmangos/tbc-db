
-- Remove addons. Stand states should be randomized
DELETE FROM creature_addon WHERE guid IN(68391,68392,12272);
DELETE FROM creature_template_addon WHERE entry=19076;

-- Missing spawn
DELETE FROM creature WHERE guid=151325;
INSERT INTO creature (guid, id, map, spawnmask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(151325,19076,530,1,0,0,-1870.212,5477.063,-12.34477,0.9773844,300,300,0,0,2500,0,0,0);

-- Relocate existing spawns to the same guid range
UPDATE `creature` SET `guid`=151326, spawntimesecsmin=300, spawntimesecsmax=300, MovementType=2, spawndist=0 WHERE `guid`=12272 AND `id`=19076; -- Normalize spawntime
UPDATE `creature` SET `guid`=151327, position_x=-1867.284, position_y=5477.182, position_z=-12.34477, orientation=2.321288 WHERE `guid`=68392 AND `id`=19076; -- Duplicate spawn, reuse it where another is missing
UPDATE `creature` SET `guid`=151328, MovementType=2, spawndist=0 WHERE `guid`=68391 AND `id`=19076;

-- Pooling at Spymistress Mehlisah Highcrown
DELETE FROM pool_creature WHERE guid IN(151325,151327);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(151325, 104, 0, 'High Elf Refugee at Spymistress Mehlisah Highcrown'),
(151327, 105, 0, 'High Elf Refugee at Spymistress Mehlisah Highcrown');

DELETE FROM `creature_movement` WHERE `id`=151326;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151326,1,-1703.501,5179.728,-40.20918,0,12,0),
(151326,2,-1712.316,5184.393,-40.20918,0,0,0),
(151326,3,-1725.059,5185.586,-40.20918,0,0,0),
(151326,4,-1740.019,5202.2,-41.01801,346000,0,100),
(151326,5,-1746.596,5186.737,-40.20918,0,0,0),
(151326,6,-1722.154,5178.957,-40.20918,0,0,0),
(151326,7,-1715.002,5176.221,-40.20918,0,0,0),
(151326,8,-1718.89,5172.33,-40.20918,0,0,0),
(151326,9,-1721.574,5172.274,-40.20918,371000,0,100),
(151326,10,-1712.871,5172.264,-40.20918,0,0,0),
(151326,11,-1709.486,5167.347,-40.20918,0,0,0),
(151326,12,-1709.622,5170.947,-40.20918,5679000,0,100);

DELETE FROM `creature_movement` WHERE `id`=151328;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151328,1,-1724.43,5172.64,-40.1258,500,1907601,0.506145);


DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1907601);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1907601,0,35,6,0,0,0,0,0,0,0,0,0,'High Elf Refugee - Send AI Event 6 to Self',0,0,0,0),
(1907601,0,20,0,0,0,0,0,0,0,0,0,0,'High Elf Refugee - Set Idle Movement',0,0,0,0);




