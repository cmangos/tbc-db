-- Tirisfal Pumpkin 375 - Update rotation values and align spawntimesecs and animprogress
UPDATE `gameobject` SET `rotation2` = 0.241922, `rotation3` = 0.970296 WHERE `id` = 375 AND `guid` = 45042;
UPDATE `gameobject` SET `rotation2` = 0.146286, `rotation3` = 0.989242 WHERE `id` = 375 AND `guid` = 45043;
UPDATE `gameobject` SET `rotation2` = 0.573576, `rotation3` = 0.819152 WHERE `id` = 375 AND `guid` = 45157;
UPDATE `gameobject` SET `rotation2` = -0.700908, `rotation3` = 0.713252 WHERE `id` = 375 AND `guid` = 45194;
UPDATE `gameobject` SET `rotation2` = 0.930417, `rotation3` = 0.366502 WHERE `id` = 375 AND `guid` = 45195;
UPDATE `gameobject` SET `rotation2` = -0.366501, `rotation3` = 0.930418 WHERE `id` = 375 AND `guid` = 45196;
UPDATE `gameobject` SET `rotation2` = 0.989016, `rotation3` = 0.147808 WHERE `id` = 375 AND `guid` = 45197;
UPDATE `gameobject` SET `rotation2` = 0.669132, `rotation3` = 0.743144 WHERE `id` = 375 AND `guid` = 45198;
UPDATE `gameobject` SET `rotation2` = -0.766045, `rotation3` = 0.642787 WHERE `id` = 375 AND `guid` = 45200;
UPDATE `gameobject` SET `rotation2` = 0.833885, `rotation3` = 0.551938 WHERE `id` = 375 AND `guid` = 45201;

-- update for existing ones
UPDATE gameobject SET spawntimesecsmin = 120, spawntimesecsmax = 120, animprogress = 255 WHERE id = 375;

