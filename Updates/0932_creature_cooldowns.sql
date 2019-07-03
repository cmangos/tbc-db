ALTER TABLE db_version CHANGE COLUMN required_s2390_01_mangos_creature_spawn_entry required_s2391_01_mangos_creature_cooldown bit;

DROP TABLE IF EXISTS creature_cooldowns;
CREATE TABLE creature_cooldowns (
  `Entry` mediumint(8) unsigned NOT NULL,
  `SpellId` int(11) unsigned NOT NULL,
  `CooldownMin` int(10) unsigned NOT NULL,
  `CooldownMax` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry`, `SpellId`)
);

-- Fel and the Furious cooldowns  - TODO
DELETE FROM creature_cooldowns WHERE entry IN(21949);
INSERT INTO creature_cooldowns VALUES
(21949,38055,10000,10000),
(21949,38052,15000,15000),
(21949,38006,10000,10000),
(21949,37920,30000,30000);
/*UPDATE `spell_template` SET `RecoveryTime`=10000, `AttributesServerside`=0x00000002 WHERE `Id`=38055;
UPDATE `spell_template` SET `RecoveryTime`=15000, `AttributesServerside`=0x00000002 WHERE `Id`=38052;
UPDATE `spell_template` SET `RecoveryTime`=10000, `AttributesServerside`=0x00000002 WHERE `Id`=38006;
UPDATE `spell_template` SET `RecoveryTime`=30000, `AttributesServerside`=0x00000002 WHERE `Id`=37920;*/

-- add cooldown and forcible sending for Teron Gorefiend possess spells - verified values against sniffs
DELETE FROM creature_cooldowns WHERE entry IN(21867);
INSERT INTO creature_cooldowns VALUES
(21867,37729,10000,10000),
(21867,37727,25000,25000),
(21867,37788,10000,10000),
(21867,37728,180000,180000);
/*UPDATE `spell_template` SET `RecoveryTime`=10000, `AttributesServerside`=0x00000002 WHERE `Id`=37729;
UPDATE `spell_template` SET `RecoveryTime`=25000, `AttributesServerside`=0x00000002 WHERE `Id`=37727;
UPDATE `spell_template` SET `RecoveryTime`=10000, `AttributesServerside`=0x00000002 WHERE `Id`=37788;
UPDATE `spell_template` SET `RecoveryTime`=180000, `AttributesServerside`=0x00000002 WHERE `Id`=37728;*/

-- Add cooldown for Unholy Frenzy - Controlled ability Shadowy Necromancer c.17899
DELETE FROM creature_cooldowns WHERE entry IN(17899);
INSERT INTO creature_cooldowns VALUES
(17899,31626,4000,4000);
-- UPDATE `spell_template` SET `RecoveryTime`=4000, `AttributesServerside`=0x00000002 WHERE `Id`=31626;


