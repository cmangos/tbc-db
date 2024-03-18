-- Laughing Skull Enforcer 17370
DELETE FROM `creature_template_spells` WHERE `entry` IN (17370, 18608);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1737001, 1860801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1737001, 'Blood Furnace - Laughing Skull Enforcer - Normal', 0, 90),
(1860801, 'Blood Furnace - Laughing Skull Enforcer - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1737001, 1860801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1737001, 1, 30688, 0, -1, 1, 0, 100, 0, 4000, 18000, 8000, 21000, 'Laughing Skull Enforcer - Shield Slam - current'),
(1737001, 2, 14516, 0, -1, 1, 0, 100, 0, 2000, 15000, 7000, 23000, 'Laughing Skull Enforcer - Strike - current'),
(1860801, 1, 30688, 0, -1, 1, 0, 100, 0, 4000, 18000, 8000, 21000, 'Laughing Skull Enforcer - Shield Slam - current'),
(1860801, 2, 14516, 0, -1, 1, 0, 100, 0, 2000, 15000, 7000, 23000, 'Laughing Skull Enforcer - Strike - current');

UPDATE `creature_template` SET `SpellList` = 1737001 WHERE `entry` = 17370;
UPDATE `creature_template` SET `SpellList` = 1860801 WHERE `entry` = 18608;



-- Shadowmoon Warlock
DELETE FROM `creature_template_spells` WHERE `entry` IN (17371, 18619);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1737101, 1861901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1737101, 'Blood Furnace - Shadowmoon Warlock - Normal', 0, 90),
(1861901, 'Blood Furnace - Shadowmoon Warlock - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1737101, 1861901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1737101, 1, 13338, 0, -1, 105, 0, 100, 0, 1000, 13000, 11000, 23000, 'Shadowmoon Warlock - Curse of Tongues on Random Player Mana User'),
(1737101, 2, 32197, 0, -1, 1, 0, 100, 0, 1000, 15000, 10000, 22000, 'Shadowmoon Warlock - Corruption - current'),
(1737101, 3, 12739, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Shadowmoon Warlock - Shadow Bolt - current'),
(1861901, 1, 13338, 0, -1, 105, 0, 100, 0, 1000, 13000, 11000, 23000, 'Shadowmoon Warlock - Curse of Tongues on Random Player Mana User'),
(1861901, 2, 37113, 0, -1, 1, 0, 100, 0, 1000, 15000, 10000, 22000, 'Shadowmoon Warlock - Corruption - current'),
(1861901, 3, 15472, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Shadowmoon Warlock - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1737101 WHERE `entry` = 17371;
UPDATE `creature_template` SET `SpellList` = 1861901 WHERE `entry` = 18619;
