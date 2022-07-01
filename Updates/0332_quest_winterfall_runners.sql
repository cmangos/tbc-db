-- Quest 'Winterfall Runners'
-- This part always happens
DELETE FROM `dbscripts_on_quest_end` WHERE id = '5087';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(5087,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Set Active'),
(5087,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove QuestFlags'),
(5087,0,3,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Start Waypoints');

UPDATE `quest_template` SET `CompleteScript`='5087' WHERE `entry`='5087';

-- Donova Snowden waypoints
SET @PATH := 9298;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,0,1,6393.311,-2531.2017,541.43024,100,0,0),
(@PATH,0,2,6390.147,-2529.2485,540.6507,100,1000,929800),
(@PATH,0,3,6395.5728,-2536.7476,541.6417,100,0,0),
(@PATH,0,4,6395.5728,-2536.7476,541.6417,2.426007747650146484,1000,929801);

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (929800, 929801, 1437200);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(929800,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Pause Waypoints'),
(929800,0,1,0,0,0,0,0,0,0,6231,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say EmoteText'),
(929800,3000,0,0,0,0,0,0,0,0,6232,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say Text'),
(929800,3000,1,10,14372,180000,1,0,0,8,1,0,0,0,0,6389.5317,-2501.9636,541.0671, 1.6231,0,20000,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,3000,2,10,14372,180000,1,0,0,8,1,0,0,0,0,6386.3447,-2501.3552,540.42206,3.52556,0,20000,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,3000,3,10,14372,180000,1,0,0,8,1,0,0,0,0,6389.5327,-2498.4856,540.7365,5.2010,0,20000,'Donova Snowden - Spawn Winterfall Ambusher'),
(929800,6000,0,0,0,0,0,0,0,0,6233,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Say Text'),
(929800,11000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Set Run'),
(929800,12000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Unpause Waypoints'),
(929801,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Waypoint Movement'),
(929800,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Run'),
(929801,2000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Remove Active'),
(929801,2000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Donova Snowden - Add QuestFlags'),
(1437200,2000,0,20,1,10,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,'Winterfall Ambusher - Start RandomMovement');

UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='14372');

SET @PATH := 14372;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES 
(@PATH,1,1,6380.987,-2520.9492,538.0356,100,5000,1437200, '');

-- Text emote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='6231');

DELETE FROM conditions WHERE condition_entry = '20000';
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `flags`, `comments`) VALUES 
('20000', '37', '14372', '20', '1', 'Winterfall Ambusher in Range');

