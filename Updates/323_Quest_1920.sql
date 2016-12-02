-- =============================================
-- Fix Quest 1920 "Investigate the Blue Recluse"
-- =============================================
DELETE FROM creature WHERE guid BETWEEN 107727 AND 107734;
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107727','6492','0','1','0','0','1403.48','356.513','-66','5.263','300','5','0','356','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107728','6492','0','1','0','0','1406.23','335.627','-66','4.15','300','5','0','356','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107729','6492','0','1','0','0','1411.44','343.888','-66','5.275','300','5','0','356','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107730','6492','0','1','0','0','1416.12','358.485','-66','1.162','300','5','0','356','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107731','6492','0','1','0','0','-9101.27','835.281','97.6293','3.7165','300','5','0','356','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107732','6492','0','1','0','0','-9088.05','821.41','115.688','2.49835','300','5','0','356','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107733','6492','0','1','0','0','-9093.65','830.875','115.667','5.41217','300','5','0','356','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107734','6492','0','1','0','0','-9110.49','827.594','97.6304','0.813664','300','5','0','356','0','0','1');

DELETE FROM creature_template_addon WHERE entry IN (6492);
insert into `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('6492','0','0','0','0','0','0',NULL);

-- Spell 9012 Interesting (Does Nothing Currently)
-- Spell 9738 Makes You Phase Into Same as Them - Also Makes Hostile (Not Sure How This Is Handled)

-- THIS QUEST IS STILL NOT FIXED - STILL WORKING ON A SOLUTION

-- https://www.youtube.com/watch?v=lyyoE2-5GiQ

