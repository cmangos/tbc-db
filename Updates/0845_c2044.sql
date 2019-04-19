-- Fix Forlorn Spirit 2044 not attacking Player on Spawn
UPDATE `dbscripts_on_quest_start` SET `data_flags` = 0 WHERE `id` IN (68,74);

