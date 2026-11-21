-- Correct Stats for Zul'jin Animal Spirits
-- s.43095 should exclude them in targeting map.
UPDATE `creature_template` SET `MinLevel` = 73, `MaxLevel` = 73, `HealthMultiplier` = 0.7, `MinLevelHealth` = 5312, `MaxLevelHealth` = 5312, `DamageMultiplier` = 1 WHERE `entry` IN (23877,23878,23879,23880); -- 23879 was still 70

