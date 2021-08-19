ALTER TABLE db_version CHANGE COLUMN required_s2427_01_mangos_command required_s2428_01_mangos_column_fix bit;

ALTER TABLE creature_spawn_data_template MODIFY CurHealth INT UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE db_version CHANGE COLUMN required_s2428_01_mangos_column_fix required_s2430_01_mangos_creature_immunity bit;

DROP TABLE IF EXISTS creature_immunities;
CREATE TABLE creature_immunities(
`Entry` INT UNSIGNED NOT NULL COMMENT 'creature_template entry',
`SetId` INT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'immunity set ID',
`Type` TINYINT UNSIGNED NOT NULL COMMENT 'enum SpellImmunity',
`Value` INT UNSIGNED NOT NULL COMMENT 'value depending on type',
PRIMARY KEY(`Entry`,`SetId`,`Type`,`Value`)
);


-- taunt effect and aura
INSERT INTO creature_immunities SELECT entry, 0, 0, 114 FROM creature_template WHERE ExtraFlags&0x00000100;
INSERT INTO creature_immunities SELECT entry, 0, 1, 11 FROM creature_template WHERE ExtraFlags&0x00000100;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x00000100 WHERE ExtraFlags&0x00000100;
-- haste auras
INSERT INTO creature_immunities SELECT entry, 0, 1, 216 FROM creature_template WHERE ExtraFlags&0x00400000;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x00400000 WHERE ExtraFlags&0x00400000;
-- poison auras
INSERT INTO creature_immunities SELECT entry, 0, 4, 4 FROM creature_template WHERE ExtraFlags&0x01000000;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x01000000 WHERE ExtraFlags&0x01000000;

REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES
-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
(24664, 0, 1, 216), -- Kael'thas Sunstrider
(24857, 0, 1, 216), -- Kael'thas Sunstrider (1)
(24744, 0, 1, 216), -- Vexallus
(25573, 0, 1, 216), -- Vexallus (1)
(24723, 0, 1, 216), -- Selin Fireheart
(25562, 0, 1, 216); -- Selin Fireheart (1)

REPLACE INTO `creature_immunities` (`entry`, `SetId`, `Type`, `Value`) VALUES
(24972, 0, 0, 114), -- SPELL_EFFECT_ATTACK_ME
(24972, 0, 1, 11), -- SPELL_AURA_MOD_TAUNT

(24972, 0, 0, 9), -- SPELL_EFFECT_HEALTH_LEECH
(24972, 0, 1, 53), -- SPELL_AURA_PERIODIC_LEECH

(24972, 0, 4, 4); -- DISPEL_POISON

