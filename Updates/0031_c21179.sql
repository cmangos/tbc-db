-- Add Invisibility and Stealth Detection 18950 for Demon Hunter Supplicant 21179
UPDATE `creature_addon` SET `auras` = '18950' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 21179);
UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` = 21179;

