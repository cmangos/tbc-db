-- Isle of Quel'Danas - Sun's Reach Sanctum

DELETE FROM dbscripts_on_relay WHERE id IN (10200,10201);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(10200, 0, 0, 20, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 2'),
(10201, 0, 0, 20, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 3');
DELETE FROM dbscript_random_templates WHERE id=10200;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(10200, 1, 10200, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 2'),
(10200, 1, 10201, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 3');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2493806,2493807,2493808);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2493806, 0, 0, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Set Movement Path 1'),
(2493806, 0, 0, 15, 34427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport'),
(2493807, 0, 0, 45, 0, 10200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Start Random Relay Script (Randomize between movement path 2 & 3)'),
(2493808, 0, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - STATE_USESTANDING'),
(2493808, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - ONESHOT_NONE'),
(2493808, 0, 0, 18, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman/Warrior - Delayed despawn');

DELETE FROM `creature_movement_template` WHERE `entry`=24938;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
-- Path to Sun's Reach Sanctum tower door starting at "Portal From Shattrath City" object
(24938, 1, 1, 12802.94, -6901.631, 40.31656, 100, 0, 0, ''),
(24938, 1, 2, 12803.35, -6899.098, 40.29868, 100, 0, 0, ''),
(24938, 1, 3, 12775.92, -6869.868, 40.29502, 100, 1, 2493807, 'Shattered Sun Marksman/Warrior - Random between path 2 and 3'),
(24938, 1, 4, 12780.2, -6875.725, 40.30148, 100, 0, 0, ''),
-- first random path
(24938, 2, 1, 12796.44, -6882.286, 34.20195, 100, 0, 0, ''),
(24938, 2, 2, 12791.71, -6891.086, 31.35045, 100, 10000, 2493808, 'Shattered Sun Marksman/Warrior - Set emote state 69 and despawn 4 seconds later'),
-- second random path
(24938, 3, 1, 12783, -6894.029785, 33.5065, 100, 0, 0, ''),
(24938, 3, 2, 12790.61, -6890.366, 31.55473, 100, 10000, 2493808, 'Shattered Sun Marksman/Warrior - Set emote state 69 and despawn 4 seconds later');
DELETE FROM creature_movement_template WHERE entry=25115;
INSERT INTO creature_movement_template
SELECT 25115 AS `entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`
FROM creature_movement_template WHERE entry=24938;

-- spawn locations (could be more, or randomized based on portal location?)
DELETE FROM creature WHERE guid IN (5301583,5301584,5301585,5301586);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(5301583, 0, 530, 1, 12803.5, -6910.790039, 41.198601, 1.623156, 1, 45, 1, 2),
(5301584, 0, 530, 1, 12804.799805, -6908.089844, 41.198601, 1.815142, 1, 45, 1, 2),
(5301585, 0, 530, 1, 12805.700195, -6907.120117, 41.198601, 2.199115, 1, 45, 1, 2),
(5301586, 0, 530, 1, 12805.83, -6911.729, 41.28194, 2.191206, 1, 45, 1, 2);
DELETE FROM `creature_movement` WHERE `id` IN (5301583,5301584,5301585,5301586);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(5301583, 1, 12803.5, -6910.790039, 41.198601, 100, 1, 2493806, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport and Set Movement Path 1'),
(5301584, 1, 12804.799805, -6908.089844, 41.198601, 100, 1, 2493806, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport and Set Movement Path 1'),
(5301585, 1, 12805.700195, -6907.120117, 41.198601, 100, 1, 2493806, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport and Set Movement Path 1'),
(5301586, 1, 12805.83, -6911.729, 41.28194, 100, 1, 2493806, 'Shattered Sun Marksman/Warrior - Cast Ethereal Teleport and Set Movement Path 1');

DELETE FROM creature_spawn_entry WHERE guid IN (5301583,5301584,5301585,5301586);
INSERT INTO creature_spawn_entry (guid, entry) VALUES
(5301583, 24938), (5301583, 25115),
(5301584, 24938), (5301584, 25115),
(5301585, 24938), (5301585, 25115),
(5301586, 24938), (5301586, 25115);
-- run on by default
DELETE FROM creature_spawn_data WHERE Guid IN (5301583,5301584,5301585,5301586);
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(5301583, 1), (5301584, 1), (5301585, 1), (5301586, 1);


