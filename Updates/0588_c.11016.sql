-- Correct Stats for Captured Arko'narin 11016 & Arko'narin 11018
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 11016;
UPDATE `creature_template` SET `Faction` = 250, `MeleeBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 11018;

