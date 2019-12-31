-- Stop interrupt on damage taken for these 2 spells
UPDATE `spell_template` SET `InterruptFlags` = 15 WHERE `Id` in (8016,7901);

-- fix mummies taking 10 years to catch on fire
UPDATE `gameobject_template` SET `data3` = 0 WHERE `entry` = 181148;

-- Sylvanas Lament Event
DELETE FROM creature_movement_template WHERE entry = 21628;


