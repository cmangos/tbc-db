-- Add Quest scripts for Mage's wand quest series
-- Add quest start script for quest 'Journey to the Marsh' id 1947
DELETE FROM dbscripts_on_quest_end WHERE id = '1947';
UPDATE `quest_template` SET `CompleteScript`='1947' WHERE `entry`='1947';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1947,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Set Active'),
(1947,0,1,0,0,0,0,0,0,0,2656,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Say Text'),
(1947,1000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.4712,0,0,'Journey to the Marsh - Tabetha - Set Orientation'),
(1947,1000,1,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Emote STATE_USESTANDING_NOSHEATHE'),
(1947,4000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Remove Emote'),
(1947,5000,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Emote ONESHOT_CHEER_NOSHEATHE'),
(1947,5000,1,0,0,0,0,0,0,0,2657,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Say Text'),
(1947,8000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Face Player'),
(1947,8000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Emote Talk'),
(1947,8000,2,0,0,0,0,0,0,0,2658,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Say Text'),
(1947,11000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2.1293,0,0,'Journey to the Marsh - Tabetha - Set Orientation'),
(1947,11000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Journey to the Marsh - Tabetha - Remove Active');

-- Rituals of Power id 1951
DELETE FROM dbscripts_on_quest_end WHERE id = '1951';
UPDATE `quest_template` SET `CompleteScript`='1951' WHERE `entry`='1951';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1951,0,0,0,0,0,0,0,0,0,2659,0,0,0,0,0,0,0,0,0,0,'Rituals of Power - Tabetha - Say Text'),
(1951,0,1,3,0,0,0,0,0,0,0,0,0,0,0,-4031.2214,-3394.1526,39.01234,5.033,0,0,'Rituals of Power - Tabetha - Move'),
(1951,6000,0,3,0,0,0,0,0,0,0,0,0,0,0,-4031.56,-3392.96,39.01,2.129,0,0,'Rituals of Power - Tabetha - Move');

-- Mage's Wand id 1952
DELETE FROM dbscripts_on_quest_start WHERE id = '1952';
UPDATE `quest_template` SET `StartScript`='1952' WHERE `entry`='1952';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1952,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mages Wand - Tabetha - Emote Talk'),
(1952,0,1,0,0,0,0,0,0,0,2708,0,0,0,0,0,0,0,0,0,0,'Mages Wand - Tabetha - Say Text'),
(1952,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mages Wand - Tabetha - Remove NPC Flags'),
(1952,6000,0,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mages Wand - Tabetha - Emote Cheer'),
(1952,6000,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mages Wand - Tabetha - Add NPC Flags'),
(1952,6000,2,0,0,0,0,0,0,0,2709,0,0,0,0,0,0,0,0,0,0,'Mages Wand - Tabetha - Say Text');

