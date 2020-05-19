-- Fix size of a few Tauren NPCs so they match other Tauren size
-- UPDATE creature_template SET scale=1.35 WHERE Entry IN (7725, 7726, 7727, 10758, 10759, 11911, 11912, 11913);

/*
[11] (3) OBJECT_FIELD_ENTRY: 7725
[11] (4) OBJECT_FIELD_SCALE_X: 1.25
[3] (3) OBJECT_FIELD_ENTRY: 7726
[3] (4) OBJECT_FIELD_SCALE_X: 1.35
[19] (3) OBJECT_FIELD_ENTRY: 7727
[19] (4) OBJECT_FIELD_SCALE_X: 1.35
[6] (3) OBJECT_FIELD_ENTRY: 10758
[6] (4) OBJECT_FIELD_SCALE_X: 1
[2] (3) OBJECT_FIELD_ENTRY: 10759
[2] (4) OBJECT_FIELD_SCALE_X: 1
[0] (3) OBJECT_FIELD_ENTRY: 11911
[0] (4) OBJECT_FIELD_SCALE_X: 1
[1] (3) OBJECT_FIELD_ENTRY: 11912
[1] (4) OBJECT_FIELD_SCALE_X: 1
[8] (3) OBJECT_FIELD_ENTRY: 11913
[8] (4) OBJECT_FIELD_SCALE_X: 1
*/

UPDATE `creature_template` SET `scale` = 1.25 WHERE `entry` = 7725; -- Grimtotem Raider
UPDATE `creature_template` SET `scale` = 1.35 WHERE `entry` = 7726; -- Grimtotem Naturalist
UPDATE `creature_template` SET `scale` = 1.35 WHERE `entry` = 7727; -- Grimtotem Shaman
UPDATE `creature_template` SET `scale` = 1 WHERE `entry` = 10758; -- Grimtotem Bandit
UPDATE `creature_template` SET `scale` = 1 WHERE `entry` = 10759; -- Grimtotem Stomper
UPDATE `creature_template` SET `scale` = 1 WHERE `entry` = 11911; -- Grimtotem Mercenary
UPDATE `creature_template` SET `scale` = 1 WHERE `entry` = 11912; -- Grimtotem Brute
UPDATE `creature_template` SET `scale` = 1 WHERE `entry` = 11913; -- Grimtotem Sorcerer

