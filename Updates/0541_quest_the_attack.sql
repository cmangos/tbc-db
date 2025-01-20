-- ----------------
-- Stormwind
-- Quest - The Attack (id 434) new script 
-- ---------------

-- Tyrion's Spybot
-- Correct spawn points to sniffed ones. Always spawning in the back and running to Tyrion
DELETE FROM creature WHERE guid = 45707;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(45707, 8856, 0, 1, -8430.7021484375, 442.3575439453125, 122.3577651977539062, 0.856539845466613769, 120, 120, 0, 2);

-- Also set him as active object all the time, to make sure he stays next to tyrion after respawn
-- ExtraFlags before change: 65538 (CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT, CREATURE_EXTRA_FLAG_CIVILIAN)
UPDATE creature_template SET ExtraFlags = 69634 WHERE entry = 8856;

DELETE FROM `creature_movement_template` WHERE `entry` IN (1754, 8856);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Tyrion's Spybot Waypoints after spawn
(8856, 0, 1, -8430.70, 442.358, 122.35777, 100, 0, 0), 
(8856, 0, 2, -8425.42,450.03125,122.39285, 100, 0, 0),
(8856, 0, 3, -8411.389,454.83572,123.78348, 100, 0, 0),
(8856, 0, 4, -8408.254,451.89584,123.783485, 100, 1000, 885601),
-- Tyrion's Spybot Waypoints at event
(8856, 1, 1, -8412.176,460.8763,123.783485, 100, 0, 0),
(8856, 1, 2, -8406.333,464.6441,123.78349, 100, 0, 0),
(8856, 1, 3, -8399.351,462.39334,123.783485, 100, 0, 0),
(8856, 1, 4, -8392.573,452.64474,123.783485, 100, 9000, 885602),
(8856, 1, 5, -8386.71,445.73547,122.39286, 100, 0, 0),
(8856, 1, 6, -8374.295,429.968,122.39287, 100, 0, 0),
(8856, 1, 7, -8358.038,410.0895,122.44067, 100, 0, 0),
(8856, 1, 8, -8358.805,403.92914,122.41772, 100, 0, 0),
(8856, 1, 9, -8365.185,399.00433,122.39286, 100, 0, 0),
(8856, 1, 10, -8363.312,393.71854,122.39286, 100, 0, 0),
(8856, 1, 11, -8354.072,382.36456,122.39285, 100, 0, 0),
(8856, 1, 12, -8349.102,382.11633,122.39285, 100, 0, 0),
(8856, 1, 13, -8335.313,393.4412,122.39286, 100, 15000, 885603),
(8856, 1, 14, -8349.13,384.37653,122.39285, 100, 0, 0),
(8856, 1, 15, -8353.647,383.87717,122.39285, 100, 0, 0),
(8856, 1, 16, -8358.619,389.25305,122.39287, 100, 0, 0),
(8856, 1, 17, -8364.875,397.16666,122.39286, 100, 0, 0),
(8856, 1, 18, -8363.694,402.10483,122.39286, 100, 0, 0),
(8856, 1, 19, -8358.419,406.0267,122.42341, 100, 0, 0),
(8856, 1, 20, -8364.902,417.56165,122.39287, 100, 0, 0),
(8856, 1, 21, -8374.261,429.31195,122.39287, 100, 0, 0),
(8856, 1, 22, -8383.889,442.11417,122.39285, 100, 0, 0),
(8856, 1, 23, -8388.459,441.51324,122.39286, 100, 0, 0),
(8856, 1, 24, -8395.419,435.65833,122.39287, 100, 0, 0),
(8856, 1, 25, -8407.389,424.5023,122.39286, 100, 0, 0),
(8856, 1, 26, -8411.205,425.02985,122.39286, 100, 0, 0),
(8856, 1, 27, -8414.286,429.88303,122.39285, 100, 0, 0),
(8856, 1, 28, -8424.685,444.273,122.39285, 100, 8500, 885604),
(8856, 1, 29, -8435.206055, 442.783142, 122.504227, 100, 0, 0),
(8856, 1, 30, -8445.728,433.7933,119.1284, 100, 1000, 1);

-- Movement Script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (885601, 885602, 885603, 885604);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Tyrion\'s Spybot after waypoints to Tyrion
(885601, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion\'s Spybot -  Change Movement To 0 - Idle'),
(885601, 4000, 0, 36, 0, 0, 0, 7766, 10, 515, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Face Tyrion\'s Spybot'),
(885601, 4000, 1, 1, 4, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Emote OneShotCheer'),
(885601, 4000, 2, 0, 0, 0, 0, 7766, 10, 0, 4612, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Say Text'),
(885601, 8000, 0, 36, 1, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Reset Orientation'),
(885601, 8000, 1, 29, 3, 1, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Add QuestGiver Flag'),
(885601, 8000, 3, 21, 0, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Remove ActiveObject'),
-- Tyrion's Spybot RP 1 
(885602, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Emote OneShotTalk'),
(885602, 0, 1, 36, 0, 0, 0, 1756, 10, 515, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Face Tyrion\'s Spybot'),
(885602, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3781, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
(885602, 1000, 0, 1, 16, 0, 0, 1756, 10, 512, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Emote OneShotKneel'),
(885602, 4000, 0, 0, 0, 0, 0, 1756, 10524, 16, 3783, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Say Text'),
(885602, 7000, 0, 36, 1, 0, 0, 1756, 10, 515, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Stormwind Royal Guard - Reset Orientation'),
(885602, 8000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Emote OneShotTalk'),
(885602, 8000, 1, 0, 0, 0, 0, 0, 0, 0, 3782, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
-- Tyrion'S Spybot RP 2
(885603, 1000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Emote OneShotTalk'),
(885603, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 3762, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
(885603, 1000, 2, 36, 0, 0, 0, 1754, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Face Tyrion\'s Spybot'),
(885603, 5000, 0, 1, 1, 0, 0, 1754, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Emote OneShotTalk'),
(885603, 5000, 1, 0, 0, 0, 0, 1754, 10, 0, 3784, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Say Text'),
(885603, 11000, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Emote OneShotBow'),
(885603, 11000, 1, 0, 0, 0, 0, 0, 0, 0, 3791, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
(885603, 12000, 0, 20, 2, 0, 0, 1754, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Lord Gregor Lescovar - Start Waypoints'),
-- Tyrion's Spybot RP 3
(885604, 2000, 0, 15, 11067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Cast Spell Perm. Illusion Tyrion'),
(885604, 5000, 0, 23, 8856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Update Entry to Tyrion\'s Spybot'),
(885604, 6000, 0, 15, 11013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Cast Spell Sneak');


-- On Retail Tyrion only has the QuestGiver flag when the Spybot is staying next to him
-- UPDATE creature_template SET NpcFlags = 1 WHERE entry = 7766;

-- Remove emotes from quest
UPDATE quest_template SET CompleteEmote = 0, OfferRewardEmote1 = 0, OfferRewardEmote2 = 0, OfferRewardEmote3 = 0 WHERE entry = 434;

-- Start script for quest The Attack.
DELETE FROM dbscripts_on_quest_start WHERE id = 434;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- On Retail Tyrion only has the QuestGiver flag when the Spybot is staying next to him
(434, 0, 0, 31, 8856, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Terminate Script if Spybot is Dead'),
-- Make sure RP goes threw
(434, 1, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Set ActiveObject'),
(434, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8326, 'The Attack: Tyrion - Set Orientation'),
(434, 1, 3, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Set Emote State to STATE_USESTANDING'),
(434, 1, 4, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Remove NpcFlags'),
(434, 4000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Set Emote State to ONESHOT_NONE'),
(434, 4000, 1, 0, 0, 0, 0, 8856, 10, 0, 4593, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Say Text'),
(434, 7000, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Face Player'),
(434, 7000, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Emote OneShotTalk'),
(434, 7000, 2, 0, 0, 0, 0, 0, 0, 0, 3761, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Say Text'),
(434, 7000, 3, 15, 11048, 0, 0, 8856, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Add Aura Perm. Illusion Bishop Tyriona'),
(434, 9000, 2, 23, 7779, 0, 0, 8856, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Update Entry to Priestess Tyriona'),
(434, 12000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0523599, 'The Attack: Tyrion - Reset Orientation'),
(434, 14000, 0, 20, 2, 1, 0, 8856, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion\'s Spybot - Start Waypoints'),
-- Give quest explore credit, have to be in quest_start script to get correct player as target
(434, 188000, 0, 7, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Quest Credit');
