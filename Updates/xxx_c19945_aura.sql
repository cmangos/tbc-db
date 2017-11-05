-- Remove aura 12550 from c.19945
-- Now handled in ACID since creature addon and creature_template_addon are not suitable for auras without infinite duration
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 19945);
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 19945;

