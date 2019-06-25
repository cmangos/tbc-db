DELETE FROM `creature` WHERE `id` IN (23705) AND `guid` IN (111033);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `DeathState`) VALUES
(111033, 23705, 530, 1, 0, 0, 6736.81, -7576.37, 126.822, 5.55494, 300, 300, 0, 0, 0, 0, 0, 1);

DELETE FROM `creature_template_addon` WHERE `entry`=23705;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (23705, '29266');


