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