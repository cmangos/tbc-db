-- 2009-01-04-21-47_9183_SHURA117
DELETE FROM `dbscripts_on_relay` WHERE `id` = 1696401;
INSERT INTO `dbscripts_on_relay` (id, priority, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, comments) VALUES
-- (1696401, 0, 10, 21134, 10000, 0, 0, -1167.58, 1916.83, 80.4833, 5.75, 'Warlord Morkh - Make Killer spawn Eye of the Citadel'), -- ss.36221
(1696401, 1, 0, 15, 36221, 1, 0, 0, 0, 'Cast Summon Eye of the Citadel'), -- player casts ss.36221
(1696401, 1, 20000, 40, 0, 0, 184658, 50, 7, 'Despawn 184658'); -- despawn go
-- (1696401, 1, 15, 36230, 0, 0, 0, 0, 0, 0, 0, 'Warlord Morkh - Spawn Eye of the Citadel Aura'); -- spawn in temp. gameobject 184658 - casted by 21134 with ss.36230

DELETE FROM `gameobject` WHERE `id` = 184658; -- ss.36230
DELETE FROM `creature` WHERE `id` = 21134; -- ss.36221
UPDATE `creature_template` SET `MovementType` = 0, `InhabitType` = 7, `UnitFlags` = 256, `Faction` = 1662 WHERE `entry` = 21134; -- removed movement script, is_hovering
DELETE FROM `creature_movement_template` WHERE `entry` = 21134;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 2113401;
UPDATE `creature` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 180 WHERE `id` = 16964; -- faster respawn

