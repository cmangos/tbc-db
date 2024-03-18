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


-- Shadowmoon Summoner
-- Important Notes:
-- This npc has no caster mode, he will melee and cast spells
-- Can have multiple Seductress summoned 
-- Has a low chance to also summon multiple Felhound Manastalkers
DELETE FROM `creature_template_spells` WHERE `entry` IN (17395, 18617);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1739501, 1861701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1739501, 'Blood Furnace - Shadowmoon Summoner - Normal', 0, 90),
(1861701, 'Blood Furnace - Shadowmoon Summoner - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1739501, 1861701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1739501, 1, 30851, 0, -1, 0, 0, 20, 0, 5000, 15000, 30000, 40000, 'Shadowmoon Summoner - Summon Felhound Manastalker'),
(1739501, 2, 30853, 0, -1, 0, 0, 100, 0, 5000, 13000, 20000, 30000, 'Shadowmoon Summoner - Summon Seductress'),
(1739501, 3, 18399, 0, -1, 1, 0, 100, 0, 7000, 20000, 14000, 22000, 'Shadowmoon Summoner - Flamestrike - current'),
(1739501, 4, 15242, 0, -1, 1, 0, 100, 0, 2500, 8000, 4000, 15000, 'Shadowmoon Summoner - Fireball - current'),
(1861701, 1, 30851, 0, -1, 0, 0, 20, 0, 5000, 15000, 30000, 40000, 'Shadowmoon Summoner - Summon Felhound Manastalker'),
(1861701, 2, 30853, 0, -1, 0, 0, 100, 0, 5000, 13000, 20000, 30000, 'Shadowmoon Summoner - Summon Seductress'),
(1861701, 3, 16102, 0, -1, 1, 0, 100, 0, 7000, 20000, 14000, 22000, 'Shadowmoon Summoner - Flamestrike - current'),
(1861701, 4, 17290, 0, -1, 1, 0, 100, 0, 2500, 8000, 4000, 15000, 'Shadowmoon Summoner - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 1739501 WHERE `entry` = 17395;
UPDATE `creature_template` SET `SpellList` = 1861701 WHERE `entry` = 18617;


