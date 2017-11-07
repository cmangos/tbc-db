-- Remove aura 36576 from c.20210 c.20606
-- Now handled in ACID since creature addon and creature_template_addon are not suitable for auras without infinite duration
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (20210,20606));
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (20210,20606);

