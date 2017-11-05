-- Remove aura 12550 from Ashtongue Shaman c.21453
-- Now handled in ACID since creature addon and creature_template_addon are not suitable for auras without infinite duration
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 21453);
UPDATE `creature_template_addon` SET `auras` = NULL WHERE entry = 21453;

