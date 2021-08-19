-- Correct Stats for Scorched Guardian 2726, Blacklash 2757, Hematus 2759 after ~2.4.1
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `Rank` = 0, `HealthMultiplier` = 1, `DamageMultiplier` = 1, `MinLevelHealth` = 1716, `MaxLevelHealth` = 1848 WHERE `entry` = 2726;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `Rank` = 0, `HealthMultiplier` = 1, `DamageMultiplier` = 1, `MinLevelHealth` = 2215, `MaxLevelHealth` = 2215 WHERE `entry` = 2757;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `Rank` = 0, `HealthMultiplier` = 1, `DamageMultiplier` = 1, `MinLevelHealth` = 2215, `MaxLevelHealth` = 2215 WHERE `entry` = 2759;

