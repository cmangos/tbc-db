-- Correct Stats for Darkwater Crocolisk (17952,22163), Sable Jaguar (18982,22173), Blackfang Tarantula (18983,22162)
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `MeleeBaseAttackTime` = 2000 WHERE `entry` = 18983; -- Blackfang Tarantula
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5) WHERE `entry` = 22162; -- Blackfang Tarantula (1)
UPDATE `creature_template` SET `Faction` = 16, `SpeedWalk` = (2.5 / 2.5), `MeleeBaseAttackTime` = 2000 WHERE `entry` = 17952; -- Darkwater Crocolisk
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `LootId` = 22163 WHERE `entry` = 22163; -- Darkwater Crocolisk (1)
UPDATE `creature_template` SET `SpeedRun` = (8 / 7), `MeleeBaseAttackTime` = 1000 WHERE `entry` = 18982; -- Sable Jaguar
UPDATE `creature_template` SET `SpeedRun` = (8 / 7), `MeleeBaseAttackTime` = 1000 WHERE `entry` = 22173; -- Sable Jaguar (1)

DELETE FROM `creature_loot_template` WHERE `entry` = 22163;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22163, 25418, 77.53, 0, 1, 1, 0, 'Razor Sharp Fang'),
(22163, 25421, 18.2, 0, 1, 1, 0, 'Gnarled Claw'),
(22163, 31952, 0.04, 0, 1, 1, 0, 'Khorium Lockbox'),
(22163, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22163, 50501, 0.03, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22163, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22163, 61119, 2, 0, -61119, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 102-111) - (NPC Levels: 67-68) - TBC NPC ONLY'),
(22163, 61219, 0.05, 0, -61219, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 103-112) - (NPC Levels: 67-68) - TBC NPC ONLY');

