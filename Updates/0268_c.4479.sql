-- Remove wrong auras for Fardel Dabyrie 4479
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 4479;

