-- Fixed quest level of Lunar Festival quest because they should be available to any player
-- while they are currently flagged as lvl 70 or with minlevel = 68, making them 100% unavailable in Classic
-- Source: http://www.wowwiki.com/Lunar_Festival
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = -1 WHERE `entry` BETWEEN 8870 AND 8875; -- "Lunar Festival" for each race
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 8874; -- Fix "Lunar Festival" for Undercity version
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = -1 WHERE `entry` IN (8867, 8883); -- "Lunar Fireworks" and "Valadar Starsong" quests
UPDATE `quest_template` SET `ZoneOrSort` = -366 WHERE `entry` = 8868; -- Killing Omen raid quest
UPDATE `quest_template` SET `QuestLevel` = -1 WHERE `entry` IN (8864, 8865, 8878); -- Quests rewarding robes, suits or patterns (removed in WotLK)
UPDATE `quest_template` SET `MinLevel` = 1 WHERE `entry` IN (8864,8865);

-- Fixed gossip of creature 15895 (Lunar Festival Harbinger) to make it offer Lunar Festival Invitation
-- Source: YTDB
UPDATE `gossip_menu_option` SET `action_menu_id` = -1, `action_script_id` = 691801, `condition_id` = 1343 WHERE `menu_id` = 6918 AND `id` = 0;
-- Added conditions for above gossip
DELETE FROM `conditions` WHERE `condition_entry` IN (1341, 1342, 1343);
INSERT INTO `conditions` VALUES
(1341, 8, 8867, 0, NULL),
(1342, 24, 21711, 1, NULL),
(1343, -1, 1341, 1342, NULL);
-- Added script to create Lunar Festival Invitation
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 691801;
INSERT INTO `dbscripts_on_gossip` (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(691801, 0, 15, 26375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Lunar Festival Invitation');

-- Fixed spells, NPCs and gameobjects for quest "Lunar Fireworks"

-- Fixed some of the spell focus objects not working
UPDATE `gameobject_template` SET `type` = 8, `data0` = 1351 WHERE `entry` = 180850;
UPDATE `gameobject_template` SET `data0` = 1352, `data1` = 35 WHERE `entry` = 180874;

