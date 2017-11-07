-- Add aura 16592 to c.20619
UPDATE `creature_addon` SET `auras` = '16592 39596' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 21453);
UPDATE `creature_template_addon` SET `auras` = '16592 39596' WHERE entry = 21453;

