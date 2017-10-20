-- Fixed scripts for quest 1043 (The Scythe of Elune)

-- Defined DB string entries for easier backport
SET @STRING4 := 2000000241;
SET @STRING5 := 2000000242;

-- Added script for quest 1043 (The Scythe of Elune)
-- Source: http://www.wowwiki.com/Quest:The_Scythe_of_Elune
-- http://www.wowhead.com/quest=1043
DELETE FROM `dbscripts_on_event` WHERE `id` = 664;
INSERT INTO `dbscripts_on_event` (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(664, 0, 10, 3946, 22000, 0, 0, 0, 0, 0, 0, 0, -11142.509, -1151.725, 43.598, 4.849, 'spawn Velinde Starsong'),
(664, 5, 0, 0, 0, 3946, 10, 0, @STRING4, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 5, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 10, 0, 0, 0, 3946, 10, 0, @STRING5, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 10, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 15, 1, 18, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cries');

-- Added DB strings for the scripts above
DELETE FROM `dbscript_string` WHERE `entry` IN (@STRING4, @STRING5);
INSERT INTO `dbscript_string` VALUES
(@STRING4, 'I have failed... I have failed in my duty... failed my people... The worgen run rampant, and the Scythe of my goddess is lost.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING5, 'This evil I have unleashed... In whose hand does the power my goddess granted to me now lie... By whose hand is it directed?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

