-- Improve Melee Damage for Tempest-Forge Patroller 19166 normal
-- ~1319-1870 sample size 73 sniff -> Now hits for 1303-1799 sample size 600+
UPDATE `creature_template` SET `DamageMultiplier` = 4.25 WHERE `entry` = 19166; -- 2,15284 - 2 befor that.

