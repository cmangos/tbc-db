-- Disciple of Naralex should have a small Detection
UPDATE `creature_template` SET `Detection`='5' WHERE (`Entry`='3678');

-- Correct broadcast text emote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1265');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1268');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1269');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1270');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (367800, 367801, 367802);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(367800,10000,0,0,0,0,0,0,0,0,1255,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text'),
(367800,10000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Emote Talk'),
(367800,10000,1,0,0,0,0,0,0,0,1255,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text'),
(367801,0,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Emote Point'),
(367801,0,1,0,0,0,0,0,0,0,1257,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text');
(367801,0,1,0,0,0,0,0,0,0,1257,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text'),
(367802,0,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Emote Point'),
(367802,0,1,0,0,0,0,0,0,0,1263,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text');


SET @PATH := 3636;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
-- Raptor 1
(@PATH,1,1,-85.90598,227.61963,-93.03453,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,1,2,-102.71141,230.54904,-90.739334,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,1,3,-102.71141,230.54904,-90.739334,100,0,0,'Wailing Caverns - Deviate Raptor'),
-- Raptor 2
(@PATH,2,1,-81.29124,221.22562,-93.76229,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,2,-92.94477,227.76524,-90.75813,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,3,-102.23611,230.12544,-90.6959,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,4,-104.091354,230.78859,-90.55948,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,5,-104.091354,230.78859,-90.55948,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,6,-104.091354,230.78859,-90.55948,0.82534259557723999,0,0,'Wailing Caverns - Deviate Raptor');

-- Let Raptor move on spawn
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='3636');