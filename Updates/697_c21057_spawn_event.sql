-- -----------------------------------------------------------
-- Implement Nexus-Prince Razaan Summoning Event

-- The way to summon Nexus-Prince Razaan c.21057 (needed for quests q.10675 and q.10867) is like this:

-- * The three types of Ethereals in Razaan's Landing summon a Deadsoul Orb when killed.
--   These Orbs fly to get absorbed by an ethereal pillar. The pillar itself will show a progress bar of sorts. 
--   When 5 orbs are lit up the Nexus-Prince will start spawning.

-- * Failure conditions: 
--   If no soul is absorbed within 5 minutes then one orb on the pillar will go out.
--   If still no souls have been absorbed after 1 more minute then all progress will be wiped and you have to start over.
--   If a soul is absorbed within one minute (before 6 min of no soul absorb) then the timer will reset to 5min and you will keep progressing at your current kill count.

-- Example 1:
-- You have 3 orbs lit up on the pillar.
-- 5 minutes pass with no soul absorbed. -> 1 orb despawns. In total 2 orbs are now lit up
-- 30 sec later a soul is absorbed -> Timer resets to 5min and you keep progressing with 2 orbs.

-- Example 2:
-- You have 3 orbs lit up on the pillar.
-- 5 minutes pass with no soul absorbed. -> 1 orb despawns. In total 2 orbs are now lit up
-- 1 more minute pass with no soul absorbed. -> All orbs despawn and you have to start over

-- Example 3:
-- You have 3 orbs lit up on the pillar.
-- 6 minutes pass with no soul absorbed. -> All orbs despawn and you have to start over

-- Required souls per orb is as follows:
-- 1
-- 111
-- 1111
-- 1111
-- 111

-- Relies on SD2 Script npc_deadsoul_orb (c.20845) and ACID scripts (c.20666, c.21025, c.21057, c.20601, c.20609, c.20614)
-- -----------------------------------------------------------

UPDATE `creature_template` SET `SpeedWalk`=(2/2.5), `SpeedRun`=(14/7) WHERE `entry`='20845';
UPDATE `creature_template` SET `InhabitType`='7' WHERE `entry` IN(20845,20851,20852,20853,20855,20856,21051,21025,21053);
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry` IN(21025,20845,21947,21057);
UPDATE `creature_template` SET `UnitFlags`='33554688', `ModelId2`='17612', `MovementType`='2' WHERE `entry`='21051';
UPDATE `creature_template` SET `FactionAlliance`='1678', `FactionHorde`='1678' WHERE `entry` IN(21057);
UPDATE `creature_template` SET `ExtraFlags`='0' WHERE `entry` IN(20666,21053,21051);
UPDATE `creature_template` SET `UnitFlags`='33554432' WHERE `entry`='21947';
UPDATE `creature` SET `MovementType`='0', `spawndist`='0' WHERE `id` IN(20845,20851,20852,20853,20855,20856,21051,21025);

UPDATE `creature` SET `spawntimesecsmin`='10', `spawntimesecsmax`='10' WHERE `id`='21053';

-- Delete static Deadsoul Orbs. They are summoned when killing Ethereals in the area by spell 35737
DELETE FROM `creature` WHERE `id`='20845';
-- Blade's Edge - Nexus Prince Event - Orb01
DELETE FROM `creature` WHERE `id`='21025';
-- Nexus-Prince Razaan
DELETE FROM `creature` WHERE `id`='21057';

-- Remove old scripts
DELETE FROM `dbscripts_on_creature_death` WHERE `id` IN(20601,20609,20614);

DELETE FROM `creature_template_addon` WHERE `entry` IN(21051,21947);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(21051, 0, 0, 1, 16, 0, 0, '35709'), -- Blade's Edge - Orb Trigger 02
(21947, 0, 0, 1, 16, 0, 0, '32566'); -- Collection of Souls Glow Trigger

DELETE FROM `spell_script_target` WHERE `entry` IN(35960,35961,35962,36000);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(35960,3,152956,0),
(35960,3,152952,0),
(35960,3,152957,0),

(35961,3,152953,0),
(35961,3,152951,0),
(35961,3,152959,0),

(35962,3,152953,0),
(35962,3,152958,0),
(35962,3,152950,0),

(36000,1,21053,0);

-- Blade's Edge - Orb Trigger 01
DELETE FROM `creature` WHERE `id`='20666';
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(152950,20666,530,1,0,0,2809.794,5242.491,267.1514,1.675516,10,10,0,0,6900,0,0,0),
(152951,20666,530,1,0,0,2810.72,5243.197,265.1264,2.670354,10,10,0,0,6900,0,0,0),
(152952,20666,530,1,0,0,2810.017,5242.948,270.5581,0.03490658,10,10,0,0,6900,0,0,0),
(152953,20666,530,1,0,0,2812.24,5244.707,272.6774,0.01745329,10,10,0,0,6900,0,0,0),
(152954,20666,530,1,0,0,2896.564,5205.012,275.433,0.7679449,10,10,0,0,6900,0,0,0),
(152955,20666,530,1,0,0,2809.716,5250.526,271.9465,4.433136,10,10,0,0,6900,0,0,0),
(152956,20666,530,1,0,0,2814.726,5245.652,272.7428,2.635447,10,10,0,0,6900,0,0,0),
(152957,20666,530,1,0,0,2816.076,5247.063,265.235,0.3665192,10,10,0,0,6900,0,0,0),
(152958,20666,530,1,0,0,2816.979,5247.828,270.4694,4.363323,10,10,0,0,6900,0,0,0),
(152959,20666,530,1,0,0,2817.252,5247.843,267.1221,3.420845,10,10,0,0,6900,0,0,0),
(152960,20666,530,1,0,0,2857.393,5220.913,278.0681,0.3316126,10,10,0,0,6900,0,0,0),
(152961,20666,530,1,0,0,2865.603,5251.706,282.0273,1.553343,10,10,0,0,6900,0,0,0),
(152962,20666,530,1,0,0,2851.378,5294.222,269.8245,0.3316126,10,10,0,0,6900,0,0,0);

DELETE FROM `dbscripts_on_creature_death` WHERE `id` IN(21057);
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `buddy_entry`, `search_radius`, `data_flags`, `comments`, `x`, `y`, `z`, `o`) VALUES
(21057,0,35,6,0,0,0,0,0,0,20666,152955,17,'Nexus-Prince Razaan - Send AI Event 6 to Blade\'s Edge - Orb Trigger 01',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN '10051' AND '10059';
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `buddy_entry`, `search_radius`, `data_flags`, `comments`, `x`, `y`, `z`, `o`) VALUES
(10051,0,10,21025,0,0,0,0,0,0,0,0,8,'Blade\'s Edge - Orb Trigger 01 - Summon Blade\'s Edge - Nexus Prince Event - Orb01',2809.693,5250.497,267.7632,5.131268),
(10052,0,10,21025,0,0,0,0,0,0,0,0,8,'Blade\'s Edge - Orb Trigger 01 - Summon Blade\'s Edge - Nexus Prince Event - Orb01',2809.788,5250.413,268.5532,3.263766),
(10053,0,10,21025,0,0,0,0,0,0,0,0,8,'Blade\'s Edge - Orb Trigger 01 - Summon Blade\'s Edge - Nexus Prince Event - Orb01',2809.82,5250.455,269.3637,4.206244),
(10054,0,10,21025,0,0,0,0,0,0,0,0,8,'Blade\'s Edge - Orb Trigger 01 - Summon Blade\'s Edge - Nexus Prince Event - Orb01',2809.836,5250.438,270.1631,3.630285),
(10055,0,10,21051,0,0,0,0,0,0,0,0,8,'Blade\'s Edge - Orb Trigger 01 - Summon Blade\'s Edge - Orb Trigger 02',2809.518,5250.617,272.5023,4.904375),

(10056,0,21,1,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 01 - Set Active Object On',0,0,0,0),

(10057,17,15,32566,0,0,0,0,0,0,20666,152951,23,'Blade\'s Edge - Orb Trigger 01 - Cast Purple Banish State',0,0,0,0),
(10057,17,15,32566,0,0,0,0,0,0,20666,152952,23,'Blade\'s Edge - Orb Trigger 01 - Cast Purple Banish State',0,0,0,0),
(10057,17,15,32566,0,0,0,0,0,0,20666,152953,23,'Blade\'s Edge - Orb Trigger 01 - Cast Purple Banish State',0,0,0,0),
(10057,17,15,32566,0,0,0,0,0,0,20666,152956,23,'Blade\'s Edge - Orb Trigger 01 - Cast Purple Banish State',0,0,0,0),
(10057,17,15,32566,0,0,0,0,0,0,20666,152957,23,'Blade\'s Edge - Orb Trigger 01 - Cast Purple Banish State',0,0,0,0),
(10057,17,15,32566,0,0,0,0,0,0,20666,152958,23,'Blade\'s Edge - Orb Trigger 01 - Cast Purple Banish State',0,0,0,0),
(10057,17,15,32566,0,0,0,0,0,0,20666,152959,23,'Blade\'s Edge - Orb Trigger 01 - Cast Purple Banish State',0,0,0,0),
(10057,17,15,32566,0,0,0,0,0,0,20666,152950,23,'Blade\'s Edge - Orb Trigger 01 - Cast Purple Banish State',0,0,0,0),

(10057,22,15,36000,1,0,0,0,0,0,20666,152950,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,22,15,36000,1,0,0,0,0,0,20666,152958,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,22,15,36000,1,0,0,0,0,0,20666,152953,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),

(10057,23,15,36000,1,0,0,0,0,0,20666,152957,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,23,15,36000,1,0,0,0,0,0,20666,152959,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,23,15,36000,1,0,0,0,0,0,20666,152956,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,23,15,36000,1,0,0,0,0,0,20666,152951,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,23,15,36000,1,0,0,0,0,0,20666,152952,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),

(10057,24,15,36000,1,0,0,0,0,0,20666,152950,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,24,15,36000,1,0,0,0,0,0,20666,152958,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,24,15,36000,1,0,0,0,0,0,20666,152953,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),

(10057,25,15,36000,1,0,0,0,0,0,20666,152957,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,25,15,36000,1,0,0,0,0,0,20666,152959,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,25,15,36000,1,0,0,0,0,0,20666,152956,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,25,15,36000,1,0,0,0,0,0,20666,152951,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),
(10057,25,15,36000,1,0,0,0,0,0,20666,152952,23,'Blade\'s Edge - Orb Trigger 01 - Cast Blade\'s Edge Purple Beam (02)',0,0,0,0),

(10057,29,15,33342,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 03 - Cast Purple Portal State',0,0,0,0),

(10057,32,18,0,0,0,0,0,0,0,20666,152951,23,'Blade\'s Edge - Orb Trigger 01 - Despawn Self',0,0,0,0),
(10057,32,18,0,0,0,0,0,0,0,20666,152952,23,'Blade\'s Edge - Orb Trigger 01 - Despawn Self',0,0,0,0),
(10057,32,18,0,0,0,0,0,0,0,20666,152953,23,'Blade\'s Edge - Orb Trigger 01 - Despawn Self',0,0,0,0),
(10057,32,18,0,0,0,0,0,0,0,20666,152956,23,'Blade\'s Edge - Orb Trigger 01 - Despawn Self',0,0,0,0),
(10057,32,18,0,0,0,0,0,0,0,20666,152957,23,'Blade\'s Edge - Orb Trigger 01 - Despawn Self',0,0,0,0),
(10057,32,18,0,0,0,0,0,0,0,20666,152958,23,'Blade\'s Edge - Orb Trigger 01 - Despawn Self',0,0,0,0),
(10057,32,18,0,0,0,0,0,0,0,20666,152959,23,'Blade\'s Edge - Orb Trigger 01 - Despawn Self',0,0,0,0),
(10057,32,18,0,0,0,0,0,0,0,20666,152950,23,'Blade\'s Edge - Orb Trigger 01 - Despawn Self',0,0,0,0),

(10057,36,15,35426,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 03 - Cast Arcane Explosion Visual',0,0,0,0),

(10057,37,10,21057,0,0,0,0,0,0,0,0,8,'Blade\'s Edge - Orb Trigger 03 - Summon Blade\'s Edge - Summon Nexus-Prince Razaan',2814.178,5244.384,264.5435,5.462881),

(10057,42,18,0,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 03 - Despawn Self',0,0,0,0),

(10058,0,18,0,0,0,0,0,0,0,21025,10,7,'Blade\'s Edge - Orb Trigger 01 - Despawn Closest Blade\'s Edge - Nexus Prince Event - Orb01',0,0,0,0),
(10058,0,15,35740,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 01 - Cast Holy Nova',0,0,0,0),

(10059,0,21,0,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 01 - Set Active Object Off',0,0,0,0);

DELETE FROM `creature_movement_template` WHERE `entry`='21051';
INSERT INTO `creature_movement_template` (`entry`, `point`, `pathId`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(21051,1,0,2809.518,5250.617,272.5023,1000,2105101,4.904375);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN('2105101');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `buddy_entry`, `search_radius`, `data_flags`, `comments`, `x`, `y`, `z`, `o`) VALUES
(2105101,0,32,1,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Pause Waypoints',0,0,0,0),
(2105101,0,45,10057,0,0,0,0,0,0,21053,15,7,'Blade\'s Edge - Orb Trigger 03 - Start Relay Script',0,0,0,0),
(2105101,11,18,0,0,0,0,0,0,0,21025,10,7,'Blade\'s Edge - Orb Trigger 02 - Despawn Closest Blade\'s Edge - Nexus Prince Event - Orb01',0,0,0,0),
(2105101,11,15,35960,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam',0,0,0,0),
(2105101,12,15,35961,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam (02)',0,0,0,0),
(2105101,13,15,35962,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam (03)',0,0,0,0),
(2105101,14,15,35960,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam',0,0,0,0),
(2105101,15,15,35961,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam (02)',0,0,0,0),
(2105101,15,18,0,0,0,0,0,0,0,21025,10,7,'Blade\'s Edge - Orb Trigger 02 - Despawn Closest Blade\'s Edge - Nexus Prince Event - Orb01',0,0,0,0),
(2105101,16,15,35962,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam (03)',0,0,0,0),

(2105101,17,15,35960,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam',0,0,0,0),
(2105101,18,18,0,0,0,0,0,0,0,21025,10,7,'Blade\'s Edge - Orb Trigger 02 - Despawn Closest Blade\'s Edge - Nexus Prince Event - Orb01',0,0,0,0),
(2105101,18,15,35961,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam (02)',0,0,0,0),
(2105101,19,15,35962,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Blade\'s Edge Multi Gold Beam (03)',0,0,0,0),
(2105101,22,18,1000,0,0,0,0,0,0,21025,10,7,'Blade\'s Edge - Orb Trigger 02 - Despawn Closest Blade\'s Edge - Nexus Prince Event - Orb01',0,0,0,0),
(2105101,23,15,35740,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Cast Holy Nova',0,0,0,0),
(2105101,23,18,0,0,0,0,0,0,0,0,0,0,'Blade\'s Edge - Orb Trigger 02 - Despawn Self',0,0,0,0);

