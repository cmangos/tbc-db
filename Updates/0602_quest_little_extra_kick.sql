-- That Little Extra Kick q.10199

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10199;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(10199, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Set ActiveObject'),
(10199, 0, 1, 29, 643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Remove NpcFlags'),
(10199, 1000, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - SendAiEvent A to self'),
(10199, 3000, 0, 42, 0, 0, 0, 0, 0, 0, 2200, 12870, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Set Equipment'),
(10199, 4000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.682644605636596679, 'Netherstorm - Boots - Change Orientation'),
(10199, 4000, 1, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Emote StateUseStandingNoSheathe'),
(10199, 4000, 2, 48, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Remove UNIT_FLAG_IMMUNE_TO_NPC'),
(10199, 4000, 3, 0, 0, 0, 0, 0, 0, 0, 17062, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Say text'), -- 08:23:19.145 Woot!  Here we go!
-- 08:23:30.357 
(10199, 15000, 0, 15, 30934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Cast Explosion'), -- 08:23:30.357 
(10199, 15000, 1, 15, 29266, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Cast Permanent Feign Death'),
(10199, 15000, 2, 42, 0, 0, 0, 0, 0, 0, 2704, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Set Equipment'),
(10199, 15000, 3, 0, 0, 0, 0, 0, 0, 0, 17063, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Say text'), -- 08:23:30.468 Uh oh!
(10199, 15000, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Remove EmoteState'),
-- Nadja+Soren stop chasing and move to point
(10199, 15000, 5, 0, 0, 0, 0, 22279, 50, 0, 20062, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nadja - Say text'), -- Daddy!
(10199, 15000, 6, 0, 0, 0, 0, 22280, 50, 0, 20063, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Soren - Say text'), -- Dad!
(10199, 15000, 7, 51, 100, 2, 0, 22279, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nadja/Soren - Change FormationShape'),
(10199, 15000, 8, 51, 101, 0, 0, 22279, 50, 7, 0, 0, 0, 0, 0.5, 0, 0, 0, 'Netherstorm - Nadja/Soren - Change FormationSpread'),
(10199, 15000, 9, 20, 0, 0, 0, 22279, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nadja - Change Movement'),
(10199, 15000, 10, 3, 0, 0, 2, 22279, 50, 0, 0, 0, 0, 0, 3084.774, 3675.4302, 142.3344, 2.01419687271118164, 'Netherstorm - Nadja - Move'), 
-- Npcs around Boots will look to him
(10199, 15000, 11, 36, 0, 0, 0, 19880, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether-Stalker Khay\'ji - Face Boots'), 
(10199, 15000, 12, 3, 0, 0, 2, 19780, 50, 0, 0, 0, 0, 0, 3080.7644, 3678.664, 142.41501, 0, 'Netherstorm - Off-Duty Engineer - Move'), 
(10199, 15000, 13, 36, 0, 0, 0, 17636, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Kalynna Lathred - Face Boots'), 
-- 08:23:31.182 -- spawn some objects
(10199, 16000, 0, 9, 183782, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Respawn Gameobject (Fire)'),
(10199, 16000, 1, 9, 183783, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Respawn Gameobject (Fire)'),
(10199, 16000, 2, 9, 183784, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Respawn Gameobject (Fire)'),
(10199, 16000, 3, 9, 183785, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Respawn Gameobject (Smoke)'),
(10199, 16000, 4, 36, 0, 0, 0, 19780, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Off-Duty Engineer - Face Boots'), 
(10199, 16000, 5, 1, 5, 0, 0, 19780, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Off-Duty Engineer - Emote OneShotExclamation'), 
(10199, 16000, 6, 0, 0, 0, 0, 19780, 50, 0, 17067, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Off-Duty Engineer - SayText'), 
(10199, 16000, 7, 3, 0, 0, 0, 19623, 50, 0, 0, 0, 0, 0, 0, 0, 0, 3.674149513244628906, 'Netherstorm - Doc - Change Orientation'), 
-- 08:23:35.226
(10199, 20000, 0, 1, 1, 0, 0, 19623, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Emote OneShotTalk'), 
(10199, 20000, 1, 20, 2, 1, 0, 19621, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Start Waypoint Path1'), 
(10199, 20000, 3, 0, 0, 0, 0, 19623, 50, 0, 17071, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Say Text'), 
-- 08:23:38.467
(10199, 23000, 0, 36, 0, 0, 0, 19623, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Face Boots'), 
(10199, 23000, 0, 36, 0, 0, 0, 19780, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Off-Duty Engineer - Face Boots'),
-- 08:23:40.079
(10199, 25000, 0, 1, 5, 0, 0, 19623, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Emote OneShotExclamation'), 
(10199, 25000, 3, 0, 0, 0, 0, 19623, 50, 0, 17072, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Say Text');


DELETE FROM `gameobject` WHERE `guid` BETWEEN 161347 AND 161353;
DELETE FROM gameobject WHERE guid IN (183782, 183783, 183784, 183785, 183786, 183787, 183788);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(183782, 183796, 530, 1, 3081.930419921875, 3687.21142578125, 143.6298065185546875, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, -17, -17), -- 0x2C45A84240B37D0000008600005109E6
(183783, 183796, 530, 1, 3080.685791015625, 3684.06591796875, 146.443756103515625, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.67559051513671875, -22, -22), -- 0x2C45A84240B37D000000860000D109E6
(183784, 183796, 530, 1, 3077.33642578125, 3684.59033203125, 143.085662841796875, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352, -26, -26), -- 0x2C45A84240B37D0000008600015109E6
(183785, 183797, 530, 1, 3080.421875, 3684.23828125, 142.448883056640625, 4.97418975830078125, 0, 0, -0.60876083374023437, 0.793353796005249023, -15, -15),
(183786, 183797, 530, 1, 3082.087646484375, 3687.016845703125, 143.587646484375, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, -60, -60), -- 0x2C45A84240B37D4000008600005109F8
(183787, 183797, 530, 1, 3080.65283203125, 3684.03564453125, 146.3052520751953125, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347, -56, -56), -- 0x2C45A84240B37D4000008600005109FB
(183788, 183797, 530, 1, 3077.26318359375, 3684.42529296875, 143.085662841796875, 5.550147056579589843, 0, 0, -0.358367919921875, 0.933580458164215087, -51, -51); -- 0x2C45A84240B37D400000860000510A00

DELETE FROM creature_movement_template WHERE entry = 19621 AND pathId = 1;
DELETE FROM creature_movement_template WHERE entry = 19623 AND pathId = 1;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Bill - Path triggered when player completes quest That Little Extra Kick
(19621, 1, 1, 3030.2576,3628.1714,144.98001, 100, 100, 1962101),
(19621, 1, 2, 3056.9524,3657.7444,142.99586, 100, 0, 0),
(19621, 1, 3, 3076.6907,3674.27,142.40677, 100, 0, 0),
(19621, 1, 4, 3083.7832,3679.7456,142.43321, 100, 0, 0),
(19621, 1, 5, 3084.0596,3686.4263,142.45259, 100, 1000, 1962102),
(19621, 1, 6, 3081.25,3684.4436,142.45477, 100, 1000, 1962103),
(19621, 1, 7, 3076.6108,3682.216,142.43933, 100, 1000, 1962104),
(19621, 1, 8, 3076.6108,3682.216,142.43933, 100, 6000, 1962105),
(19621, 1, 9, 3075.5637,3672.7002,142.431, 100, 0, 0),
(19621, 1, 10, 3030.2576,3628.1714,144.98001,0.802851438522338867, 1000, 1962106),
-- Doc - Path triggered when player completes quest That Little Extra Kick
(19623, 1, 1, 3089.7424, 3683.9553, 142.56395, 100, 100, 1962301),
(19623, 1, 2, 3083.233,3686.1946,142.44125, 100, 100, 1962302),
(19623, 1, 3, 3086.5122,3681.9973,142.51004, 100, 0, 0),
(19623, 1, 4, 3089.7424,3683.9553,142.56395,1.93731546401977539, 100, 1962303);


DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1962101 AND 1962106;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1962301 AND 1962302;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Bill starts waypoints
(1962101, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Set Active Object'),
(1962101, 0, 1, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Set RunMode On'),
-- Bill Reaches first RP stage
(1962102, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Pause Waypoints'),
(1962102, 100, 0, 36, 0, 0, 0, 19617, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Face Boots'),
(1962102, 100, 1, 0, 0, 0, 0, 0, 0, 0, 17084, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Say Text'),
(1962102, 2000, 0, 15, 34326, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Cast Frost Nova'), -- 08:23:48.142
(1962102, 2000, 1, 9, 183786, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Respawn Gameobject (Smoke)'), -- 08:23:48.958
(1962102, 3000, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - UnPause Waypoints'),
-- Bill 2nd RP
(1962103, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Pause Waypoints'),
(1962103, 100, 0, 15, 34326, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Cast Frost Nova'), -- 08:23:51.387
(1962103, 1000, 1, 9, 183787, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Respawn Gameobject (Smoke)'), --  08:23:52.197
(1962103, 2000, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - UnPause Waypoints'),-- 08:23:53.00
-- Bill 3rd RP
(1962104, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Pause Waypoints'),
(1962104, 100, 0, 36, 0, 0, 0, 19617, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Face Boots'), -- 08:23:54.633
(1962104, 2000, 0, 15, 34326, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Cast Frost Nova'),-- 08:23:56.245
(1962104, 3000, 0, 9, 183788, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Respawn Gameobject (Smoke)'), --  08:23:57.060
(1962104, 4000, 0, 0, 0, 0, 0, 19623, 20, 0, 17074, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Say Text'), -- 08:23:58.383
(1962104, 5000, 0, 20, 2, 1, 0, 19623, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Start Waypoint Path1'),  -- 08:23:59.488
-- Bill - after doc revived boots
(1962105, 0, 0, 15, 37993, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Cast Liquid Blast Visual on Boots'),  -- 08:24:46.481
(1962105, 2000, 0, 0, 0, 0, 0, 19617, 10, 0, 17082, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Say Text'), -- 08:24:48.189
(1962105, 2000, 3, 36, 1, 0, 0, 19880, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether-Stalker Khay\'ji - reset Orientation'),
(1962105, 2000, 3, 36, 1, 0, 0, 17636, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Kalynna Lathred - reset Orientation'),
(1962105, 2000, 0, 32, 0, 0, 0, 19623, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - UnPause Waypoints'),
(1962105, 2000, 0, 1, 11, 0, 0, 22279, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nadja - Emote OneShotLaugh'),
(1962105, 2000, 0, 1, 11, 0, 0, 22280, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Soren - Emote OneShotLaugh'),
(1962105, 3000, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Emote OneShotLaugh'),
(1962105, 3000, 1, 0, 0, 0, 0, 0, 0, 0, 17081, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Say Text'), -- 08:24:49.718
(1962105, 3000, 2, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Set RunMode Off'), 
(1962105, 3000, 3, 3, 0, 0, 0, 19780, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Off-Duty Engineer - Move to homeposition'),
(1962105, 5000, 0, 35, 6, 0, 0, 19617, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - SendAiEvent B to Boots'),
(1962105, 5000, 1, 21, 0, 0, 0, 19617, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Remove Activeobject'),
(1962105, 5000, 2, 29, 643, 1, 0, 19617, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Add NpcFlags'),
(1962105, 5000, 3, 48, 512, 1, 0, 19617, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Add UnitFlags'),
(1962105, 6000, 1, 51, 100, 1, 0, 22279, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nadja/Soren - Change FormationShape'),
(1962105, 6000, 2, 51, 101, 0, 0, 22279, 50, 7, 0, 0, 0, 0, 3, 0, 0, 0, 'Netherstorm - Nadja/Soren - Change FormationSpread'),
(1962105, 7000, 3, 20, 2, 28065, 2, 22279, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nadja - Change Movement'),
-- Bill on last waypoint remove active object
(1962106, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Set MoveIdle'), 
(1962106, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - Remove ActiveObject'), 
-- Doc starts Movement
(1962301, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Set Active Object'),
(1962301, 0, 1, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Set RunMode On'),
(1962301, 0, 2, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Remove Equipment'),
-- Doc RP with Boots 
(1962302, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Pause Waypoints'),
(1962302, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Set RunMode Off'),
(1962302, 1000, 0, 36, 0, 0, 0, 19617, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Face Boots'), -- 08:24:01.110
(1962302, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 17076, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Say Text'), -- 08:24:02.842
(1962302, 5000, 0, 15, 34332, 0, 0, 19617, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Cast Defibrillate on Boots'), -- 08:24:05.989
(1962302, 14000, 0, 0, 0, 0, 0, 0, 0, 0, 17077, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Say Text'), -- 08:24:14.173
(1962302, 17000, 0, 15, 34332, 0, 0, 19617, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Cast Defibrillate on Boots'), -- 08:24:17.305
(1962302, 22000, 0, 0, 0, 0, 0, 0, 0, 0, 17078, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Say Text'), -- 08:24:22.258
(1962302, 27000, 0, 15, 34332, 0, 0, 19617, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Cast Defibrillate on Boots'), --  08:24:27.013
(1962302, 38000, 0, 0, 0, 0, 0, 0, 0, 0, 17079, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Say Text'), -- 08:24:38.477
(1962302, 38000, 1, 14, 29266, 0, 0, 19617, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Remove Permanent Feign Death'), -- 08:24:38.697
(1962302, 39000, 0, 3, 0, 0, 0, 19617, 10, 0, 0, 0, 0, 0, 0, 0, 0, 5.410520553588867187, 'Netherstorm - Boots - Change Orientation'), -- 08:24:39.994
(1962302, 41000, 0, 1, 1, 0, 0, 19617, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Emote OneShotTalk'), -- 08:24:41.617
(1962302, 41000, 1, 0, 0, 0, 0, 19617, 10, 0, 17064, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Boots - Say Text'),
(1962302, 45000, 0, 32, 0, 0, 0, 19621, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Bill - UnPause Waypoints'),
-- Doc removing active state when rp finished
(1962303, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Set MoveIdle'), 
(1962303, 0, 1, 42, 0, 0, 0, 0, 0, 0, 13861, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Add Equipment'), 
(1962303, 0, 2, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Doc - Remove ActiveObject');