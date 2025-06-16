-- Invaluable Asset Zapping (Quest 10203)

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10203;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(10203, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Set ActiveObject'),
(10203, 0, 1, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Set RunOn'),
(10203, 0, 1, 1, 5, 0, 0, 21259, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Crash Bigbomb - Emote OneShotExclamation'),
(10203, 4000, 0, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Start Path1'),
(10203, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 18870, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Say text'); -- Ack!  Everyone run... the last asset is materializing!!!

DELETE FROM creature_movement_template WHERE entry = 19634 AND pathId = 1;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path triggered when player completes quest Invaluable Asset Zapping
(19634, 1, 1, 2930.2434, 3579.1152, 129.41418, 100, 1000, 1963401),
(19634, 1, 2, 2923.388, 3577.3909, 129.30533, 0.680678427219390869, 1000, 1963402);


DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1963401 AND 1963402;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1963401, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Pause Waypoint'),
(1963401, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Set RunOff'),
(1963401, 1000, 0, 36, 0, 0, 0, 21259, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Face Crash Bigbomb'),
(1963401, 1000, 1, 15, 34427, 0, 0, 21262, 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Goblin Equipment Trigger - Cast Ethereal Teleport'),
(1963401, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 18871, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Say Text'),
(1963401, 2000, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Emote OneShotExclamation'),
(1963401, 2000, 2, 15, 29266, 0, 0, 21259, 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Crash Bigbomb - Cast Permanent Feign Death'),
(1963401, 2000, 3, 9, 183778, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Respawn Gameobject (Big Wagon Full of Explosives)'),
(1963401, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 18872, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Say Text'),
(1963401, 10000, 1, 15, 30934, 0, 0, 21261, 5306931, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Big Wagon Full of Explosives Trigger - Cast Explosion'),
(1963401, 12000, 0, 15, 30934, 0, 0, 21261, 5306930, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Big Wagon Full of Explosives Trigger - Cast Explosion'),
(1963401, 14000, 0, 15, 30934, 0, 0, 21261, 5306932, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Big Wagon Full of Explosives Trigger - Cast Explosion'),
(1963401, 17000, 0, 14, 29266, 0, 0, 21259, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Crash Bigbomb - Remove Permanent Feign Death'),
(1963401, 18000, 0, 9, 183779, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Respawn Gameobject (Smoke)'),
(1963401, 18000, 1, 9, 183780, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Respawn Gameobject (Smoke)'), 
(1963401, 18000, 2, 9, 183781, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Respawn Gameobject (Smoke)'),
(1963401, 18000, 3, 1, 15, 0, 0, 21259, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Crash Bigbomb - Emote OneShotRoar'),
(1963401, 18000, 4, 0, 0, 0, 0, 21259, 10, 0, 18873, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Crash Bigbomb - Say Text'),
(1963401, 22000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Emote OneShotExclamation'),
(1963401, 22000, 1, 0, 0, 0, 0, 0, 0, 0, 18874, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Say Text'),
(1963401, 30000, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - UnPause Waypoint'),
(1963402, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Move Idle'),
(1963402, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Lead Sapper Blastfizzle - Remove ActiveObject');


DELETE FROM `gameobject` WHERE `guid` BETWEEN 200004 AND 200007;
DELETE FROM gameobject WHERE guid IN (183778, 183779, 183780, 183781);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(183778, 184700, 530, 1, 2923.394775390625, 3584.40576171875, 129.6645050048828125, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, -14, -14),
(183779, 183797, 530, 1, 2923.79345703125, 3587.238037109375, 129.5693359375, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041, -17, -17), -- Long Neck Spectrum Analyzer
(183780, 183797, 530, 1, 2923.392578125, 3584.423583984375, 129.667327880859375, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, -17, -17),
(183781, 183797, 530, 1, 2923.411865234375, 3581.182373046875, 129.3627471923828125, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708, -17, -17);

-- Delete old spawns
DELETE from creature WHERE guid IN (74499, 74496, 74497, 74498);
DELETE FROM creature WHERE guid BETWEEN 5306930 AND 5306933;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Big Wagon Full of Explosives Trigger
(5306930, 21261, 530, 1, 2924.9658203125, 3587.231689453125, 132.2790069580078125, 0.314159274101257324, 300, 300, 0, 0),
(5306931, 21261, 530, 1, 2923.69677734375, 3581.135498046875, 132.6041259765625, 6.021385669708251953, 300, 300, 0, 0),
(5306932, 21261, 530, 1, 2923.3603515625, 3584.44091796875, 133.84429931640625, 2.792526721954345703, 300, 300, 0, 0),
-- Goblin Equipment Trigger
(5306933, 21262, 530, 1, 2923.26904296875, 3584.42138671875, 129.752777099609375, 4.939281940460205078, 300, 300, 0, 0);
