-- Remove CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT from Town Crier 468
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~2 WHERE `Entry` = 468;

