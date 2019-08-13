-- Add emote ending for Denalan 2080 on quest 931 end
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 931 AND `delay` IN (8,9);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
(931, 9, 1, 0, 'Denalan 2080 - Stop Emote');

