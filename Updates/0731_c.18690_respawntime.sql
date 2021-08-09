-- Correct Respawntime for Morcrush 18690 - spawns had 300, 21600, 28800, 43200 flat
UPDATE `creature` SET `spawntimesecsmin` = 21600, `spawntimesecsmax` = 43200 WHERE `id` = 18690 AND `guid` IN (66948,99233,99234,99235);

