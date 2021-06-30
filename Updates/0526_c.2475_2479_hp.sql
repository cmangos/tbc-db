-- Correct Health for Sloth 2475 & Sludge 2479 - classic/wotlk-db
-- wotlk sniff confirms this
UPDATE `creature_template` SET `HealthMultiplier` = 0.001, `MinLevelHealth` = 1, `MaxLevelHealth` = 1 WHERE `entry` = 2475; -- 1.2 1207
UPDATE `creature_template` SET `HealthMultiplier` = 0.001, `MinLevelHealth` = 1, `MaxLevelHealth` = 1 WHERE `entry` = 2479; -- 0.032 32

