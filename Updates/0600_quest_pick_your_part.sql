-- Pick your Part endscript
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10206;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(10206, 0, 0, 21, 1, 0, 0, 21751, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Set ActiveObject'),
(10206, 0, 1, 20, 0, 0, 0, 21751, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Set Idle Movement'),
(10206, 0, 2, 35, 9, 0, 0, 21751, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Send AiEvent D'),
(10206, 0, 3, 1, 0, 0, 0, 21751, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Remove EmoteState'),
(10206, 0, 4, 42, 0, 0, 0, 21751, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Remove Equipment'),
(10206, 2000, 4, 20, 2, 1, 0, 21751, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Start Waypoint Path 1'),
(10206, 2000, 5, 0, 0, 0, 0, 21751, 15, 0, 17146, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Say Text'); -- Alright, let's see what makes this tech tick!

-- Ethereal Technology
DELETE FROM gameobject WHERE id IN (184255, 183820);
DELETE FROM gameobject WHERE guid IN (183775, 183776);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(183775, 183820, 530, 1, 3058.78466796875, 3622.130615234375, 143.4428253173828125, 5.95157480239868164, 0, 0, -0.16504669189453125, 0.986285746097564697, -24, -24),
(183776, 184255, 530, 1, 3056.74560546875, 3628.545166015625, 143.2517852783203125, 5.017822265625, 0, 0, -0.5913095474243164, 0.806444704532623291, 300, 300); -- Long Neck Spectrum Analyzer

DELETE FROM creature_movement_template WHERE entry = 21751 AND pathId = 1;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path triggered when player completes quest Pick Your Part (Quest Entry: 10206)
(21751, 1, 1, 3051.439,3632.5608,143.22763, 100, 0, 0),
(21751, 1, 2, 3053.2622,3626.0508,143.43706, 100, 0, 0),
(21751, 1, 3, 3057.0713,3623.1707,143.44283, 100, 7000, 2175104),
(21751, 1, 4, 3054.167,3627.9514,143.35098, 100, 100, 0),
(21751, 1, 5, 3054.167,3627.9514,143.35098,0.366519153118133544, 16000, 2175105),
(21751, 1, 6, 3054.167,3627.9514,143.35098,5.515240192413330078, 20000, 2175106),
(21751, 1, 7, 3051.8655,3638.189,143.12701, 100, 100, 2175107);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2175104 AND 2175107;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2175104, 1000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Emote OneshotKneel'),  -- 11:37:03.219 Sniff says he should kneel, but goblins got no kneel animation in tbc
(2175104, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 17182, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - SayText'),  --  11:37:03.328 This thing kind of reminds me of a Zed Power Nodule I once took half of Papa Wheeler\'s old garage out with.
(2175104, 1000, 2, 9, 183775, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Gameobject (Ethereal Technology)'),
-- Part 2
(2175105, 1000, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Emote StateuseStandingNoSheathe'),
(2175105, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 17147, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - SayText'), -- The Long Tube Gadget Analyzer should tell me what I need to know.
(2175105, 6000, 1, 13, 0, 0, 0, 184255, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Activate Long Neck Spectrum Analyzer'),
(2175105, 7000, 1, 15, 34397, 0, 0, 19654, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Area 52 Analyzer Bunny - Cast Red Beam'),
(2175105, 16000, 1, 15, 34397, 0, 0, 19655, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Area 52 Ethereal Technology Bunny - Cancel Aura'),
-- Part 3
(2175106, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Remove EmoteState'),
(2175106, 1000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Emote OneShotExclamation'),
(2175106, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 17149, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - SayText'), -- Ack, disintegrated!  I guess I had the power setting too high?  And it almost hit the Wheeler Mobile!  Yikes, don't tell him!
(2175106, 12000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Emote OneShotTalk'),
(2175106, 12000, 1, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Add Equipment'),
(2175106, 12000, 2, 0, 0, 0, 0, 0, 0, 0, 18063, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - SayText'), -- Good thing you brought us nine others.  I think I'll finish this later.
-- Back to normal Pathing
(2175107, 0, 0, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Chubis - Change Movement');

