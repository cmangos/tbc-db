-- Add Coren Direbrew brewfest quests activation
DELETE FROM `game_event_quest` WHERE `quest` in ('12318', '12062');
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES ('12318', '26'), ('12062', '26');

-- change Durotar questgiver flag to give quest
UPDATE `creature_template` SET `NpcFlags` = '2' WHERE (`Entry` = '28329');
