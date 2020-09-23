-- Remove wrong dbscripts_on_quest_start for quest 10163 Mission: The Abyssal Shelf
-- Handled by dbscripts_on_gossip 809601 in gossip_menu 8096 (s.33899)
-- https://www.wowhead.com/quest=10163/mission-the-abyssal-shelf#videos:id=53176
UPDATE `quest_template` SET `StartScript` = 0 WHERE `entry` = 10163;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 10163;

