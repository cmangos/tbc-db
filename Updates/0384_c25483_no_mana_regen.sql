-- Shadowsword Manafiend 25483 dont regen mana due to their AI
UPDATE `creature_template` SET `RegenerateStats` = 2 WHERE `entry` = 25483;

