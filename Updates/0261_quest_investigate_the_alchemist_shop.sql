-- Investigate the Alchemist Shop
DELETE FROM dbscripts_on_quest_start WHERE id = '1960';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1960,0,0,1,1,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Investigate the Alchemist Shop - Emote Talk'),
(1960,0,1,0,0,0,0,0,0,0,2682,0,0,0,0,0,0,0,0,0,0,'Investigate the Alchemist Shop - Say Text');

UPDATE `quest_template` SET `StartScript`='4821' WHERE `entry`='4821'; 

-- Quest Investigate the Blue Recluse
DELETE FROM dbscripts_on_quest_start WHERE id = '1920';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1960,0,0,1,1,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Investigate the Blue Recluse - Emote Talk'),
(1960,0,1,0,0,0,0,0,0,0,2681,0,0,0,0,0,0,0,0,0,0,'Investigate the Blue Recluse - Say Text');

UPDATE `quest_template` SET `StartScript`='1920' WHERE `entry`='1920'; 