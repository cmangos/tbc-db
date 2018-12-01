-- Void Zone 16697 - npc_aoe_damage_trigger
-- Lesser Shadow Fissure 17471,20570 - npc_aoe_damage_trigger
UPDATE `creature_template` SET `HeroicEntry` = 20570, `MinLevel` = 70, `MaxLevel` = 70, `MovementType` = 0 WHERE `entry` = 17471;
UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14, `UnitFlags` = 33554432 WHERE `entry` = 20570;
-- Wild Shadow Fissure 18370,20598
UPDATE `creature_template` SET `HeroicEntry` = 20598, `MinLevel` = 70, `MaxLevel` = 70, `MovementType` = 0 WHERE `entry` = 18370;
UPDATE `creature_template` SET `MinLevel` = 71, `MaxLevel` = 71, `FactionAlliance` = 14, `FactionHorde` = 14, `UnitFlags` = 33554432, `MovementType` = 0 WHERE `entry` = 20598;

-- Broggok Poison Cloud 17662,18602 - mob_broggok_poisoncloud
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 17662;
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 18602;

