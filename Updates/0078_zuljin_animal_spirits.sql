-- https://github.com/cmangos/mangos-tbc/commit/c16d70b7d280f0ba540a9ce197e5437ab67fd8cd
-- [s2494] Creature: Add creature immunity flags
ALTER TABLE db_version CHANGE COLUMN required_s2492_01_mangos_gobject_near_link required_s2494_01_mangos_creature_immunity_flags bit;

ALTER TABLE creature_template ADD COLUMN `ImmunityFlags` INT UNSIGNED NOT NULL DEFAULT 0 AFTER `SchoolImmuneMask`;

-- Correct Stats for Zul'jin Animal Spirits
-- s.43095 should exclude them in targeting map.
UPDATE `creature_template` SET `MinLevel` = 73, `MaxLevel` = 73, `HealthMultiplier` = 0.7, `MinLevelHealth` = 5312, `MaxLevelHealth` = 5312, `DamageMultiplier` = 1, `ImmunityFlags` = 1 WHERE `entry` IN (23877,23878,23879,23880); -- 23879 was still 70

