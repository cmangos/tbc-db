-- Correct Default Idle Animation for Dragonmaw Drake-Rider 21719 & Dragonmaw Nether Drake 22000
-- https://youtu.be/w7RJX3iibMU?t=84 - https://youtu.be/eHuXPXFA4Z0?t=56 - https://youtu.be/7Gq6MN5DuuM?t=29
-- Set Dynguid, Reimplement with better xyzo, Add generic remove hover dbscripts_on_relay
-- some are seen to sometimes have hover at home location, could do this with OOC disable hover, not sure what is correct.
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `InhabitType` = 1, `MovementType` = 0 WHERE `entry` = 21719; -- dynguid, no fly
DELETE FROM `creature` WHERE `id` = 21719;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5304073, 21719, 530, 1, 0, -4072.34, 361.866, 64.5531, 2.04204, 300, 300, 0, 0),
(5304074, 21719, 530, 1, 0, -4155.55, 386.615, 141.415, 1.20428, 300, 300, 0, 0),
(5304075, 21719, 530, 1, 0, -4218.88, 381.402, 135.627, 1.44862, 300, 300, 0, 0),
(5304076, 21719, 530, 1, 0, -4117.26, 452.178, 57.7584, 4.85202, 300, 300, 0, 0),
(5304077, 21719, 530, 1, 0, -4141.86, 416.067, 53.6638, 0.488692, 300, 300, 0, 0),
(5304078, 21719, 530, 1, 0, -4230.58, 489.843, 43.7573, 0.261799, 300, 300, 0, 0),
(5304079, 21719, 530, 1, 0, -4271.06, 509.687, 75.0461, 1.50098, 300, 300, 0, 0),
(5304080, 21719, 530, 1, 0, -4209.37, 535.747, 77.3108, 0.349066, 300, 300, 0, 0),
(5304081, 21719, 530, 1, 0, -4154.23, 492.462, 59.1349, 2.84489, 300, 300, 0, 0);

DELETE FROM dbscripts_on_relay WHERE id IN (30602);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30602,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - FLY ANIM OFF - RUN OFF');

-- Dragonmaw Nether Drake 22000
-- problem: spawns on the ground if dragonrider is killed midflight.
UPDATE `creature_template` SET `Faction` = 62, `SpeedWalk` = 1, `SpeedRun` = 1.38571, `InhabitType` = 1, `MovementType` = 0 WHERE `entry` = 22000;
REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`, `auras`) VALUES (22000, 1, '36630');

