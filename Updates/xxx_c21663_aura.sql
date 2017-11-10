-- Remove aura 12550 from c.21663
-- Now handled in ACID since creature addon is not suitable for auras without infinite duration
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 21663;

