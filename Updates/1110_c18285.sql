-- Prevent Mana Regeneration OOC for Count Ungula 18285
UPDATE `creature_template` SET `RegenerateStats` = '1' WHERE `entry` = 18285;

