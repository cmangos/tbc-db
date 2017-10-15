-- Added spawn and attack script for Thenan when completing quest 652 Breaking the keystone
-- Sources: http://www.wowhead.com/quest=652#comments
-- http://www.wowwiki.com/Thenan
UPDATE `quest_template` SET `CompleteScript` = 652 WHERE `entry` = 652;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 652;
INSERT INTO `dbscripts_on_quest_end` (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(652, 1, 10, 2763, 180000, 0, 0, 0, 0, 0, 0, 0, -1539.12, -2172.93, 17.29, 0.56, 'Summon Thenan'),
(652, 3, 26, 0, 0, 2763, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Start Attack');

