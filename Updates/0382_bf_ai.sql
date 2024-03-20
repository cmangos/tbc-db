-- Laughing Skull Enforcer 17370
DELETE FROM `creature_template_spells` WHERE `entry` IN (17370, 18608);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1737001, 1860801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1737001, 'Blood Furnace - Laughing Skull Enforcer - Normal', 0, 0),
(1860801, 'Blood Furnace - Laughing Skull Enforcer - Heroic', 0, 0);

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
(1739501, 'Blood Furnace - Shadowmoon Summoner - Normal', 0, 0),
(1861701, 'Blood Furnace - Shadowmoon Summoner - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1739501, 1861701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1739501, 1, 30851, 0, -1, 0, 0, 20, 0, 5000, 15000, 30000, 40000, 'Shadowmoon Summoner - Summon Felhound Manastalker'),
(1739501, 2, 30853, 0, -1, 1, 0, 100, 0, 5000, 13000, 20000, 30000, 'Shadowmoon Summoner - Summon Seductress'),
(1739501, 3, 18399, 0, -1, 1, 0, 100, 0, 7000, 20000, 14000, 22000, 'Shadowmoon Summoner - Flamestrike - current'),
(1739501, 4, 15242, 0, -1, 1, 0, 100, 0, 2500, 8000, 4000, 15000, 'Shadowmoon Summoner - Fireball - current'),
(1861701, 1, 30851, 0, -1, 0, 0, 20, 0, 5000, 15000, 30000, 40000, 'Shadowmoon Summoner - Summon Felhound Manastalker'),
(1861701, 2, 30853, 0, -1, 0, 0, 100, 0, 5000, 13000, 20000, 30000, 'Shadowmoon Summoner - Summon Seductress'),
(1861701, 3, 16102, 0, -1, 1, 0, 100, 0, 7000, 20000, 14000, 22000, 'Shadowmoon Summoner - Flamestrike - current'),
(1861701, 4, 17290, 0, -1, 1, 0, 100, 0, 2500, 8000, 4000, 15000, 'Shadowmoon Summoner - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 1739501 WHERE `entry` = 17395;
UPDATE `creature_template` SET `SpellList` = 1861701 WHERE `entry` = 18617;


-- Shadowmoon Adept
DELETE FROM `creature_template_spells` WHERE `entry` IN (17397, 18615);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1739701, 1861501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1739701, 'Blood Furnace - Shadowmoon Adept - Normal', 0, 0),
(1861501, 'Blood Furnace - Shadowmoon Adept - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1739701, 1861501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1739701, 1, 11978, 0, -1, 122, 0, 100, 0, 5000, 12000, 8000, 16000, 'Shadowmoon Adept - Kick - on casting'),
(1861501, 2, 11978, 0, -1, 122, 0, 100, 0, 5000, 12000, 8000, 16000, 'Shadowmoon Adept - Kick - on casting');


UPDATE `creature_template` SET `SpellList` = 1739701 WHERE `entry` = 17397;
UPDATE `creature_template` SET `SpellList` = 1861501 WHERE `entry` = 18615;


-- Seductress
DELETE FROM `creature_template_spells` WHERE `entry` IN (17399, 18614);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1739901, 1861401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1739901, 'Blood Furnace - Seductress - Normal', 0, 0),
(1861401, 'Blood Furnace - Seductress - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1739901, 1861401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1739901, 1, 32202, 0, -1, 1, 0, 100, 0, 0, 10000, 9000, 20000, 'Seductress - Lash of Pain - on current'),
(1739901, 2, 31865, 0, -1, 101, 0, 100, 0, 4000, 16000, 11000, 23000, 'Seductress - Seduction - on random not tank'),
(1861401, 1, 32202, 0, -1, 1, 0, 100, 0, 0, 10000, 9000, 20000, 'Seductress - Lash of Pain - on current'),
(1861401, 2, 31865, 0, -1, 101, 0, 100, 0, 4000, 16000, 11000, 23000, 'Seductress - Seduction - on random not tank');

UPDATE `creature_template` SET `SpellList` = 1739901 WHERE `entry` = 17399;
UPDATE `creature_template` SET `SpellList` = 1861401 WHERE `entry` = 18615;

-- Felhound Manastalker
DELETE FROM `creature_template_spells` WHERE `entry` IN (17401, 18605);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1740101, 1860501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1740101, 'Blood Furnace - Felhound Manastalker - Normal', 0, 0),
(1860501, 'Blood Furnace - Felhound Manastalker - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1740101, 1861401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1740101, 1, 13321, 0, -1, 105, 0, 100, 0, 4000, 8000, 11000, 17000, 'Felhound Manastalker - Mana Burn - on random player mana user'),
(1740101, 2, 30849, 0, -1, 122, 0, 100, 0, 3000, 12000, 6000, 13000, 'Felhound Manastalker - Spell Lock - on random player casting'),
(1860501, 1, 13321, 0, -1, 105, 0, 100, 0, 4000, 8000, 11000, 17000, 'Felhound Manastalker - Mana Burn - on random player mana user'),
(1860501, 2, 30849, 0, -1, 122, 0, 100, 0, 3000, 12000, 6000, 13000, 'Felhound Manastalker - Spell Lock - on random player casting');

UPDATE `creature_template` SET `SpellList` = 1740101 WHERE `entry` = 17401;
UPDATE `creature_template` SET `SpellList` = 1860501 WHERE `entry` = 18605;

-- Shadowmoon Technican
DELETE FROM `creature_template_spells` WHERE `entry` IN (17414, 18618);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1741401, 1861801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1741401, 'Blood Furnace - Shadowmoon Technician - Normal', 0, 0),
(1861801, 'Blood Furnace - Shadowmoon Technician - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1741401, 1861801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1741401, 1, 6726, 0, -1, 122, 0, 100, 0, 3000, 16000, 11000, 21000, 'Shadowmoon Technician - Silence - on random player casting'),
(1741401, 2, 30846, 0, -1, 100, 1741401, 100, 0, 0, 12000, 14000, 23400, 'Shadowmoon Technician - Throw Proximity Bomb - on random player'),
(1741401, 3, 40062, 0, -1, 1, 0, 100, 0, 0, 6000, 1000, 7000, 'Shadowmoon Technician - Throw Dynamite - on current'),
(1861801, 1, 6726, 0, -1, 122, 0, 100, 0, 3000, 16000, 11000, 21000, 'Shadowmoon Technician - Silence - on random player casting'),
(1861801, 2, 32784, 0, -1, 100, 1741401, 100, 0, 0, 12000, 14000, 23400, 'Shadowmoon Technician - Throw Proximity Bomb - on random player'),
(1861801, 3, 40064, 0, -1, 1, 0, 100, 0, 0, 6000, 1000, 7000, 'Shadowmoon Technician - Throw Dynamite - on current');

UPDATE `creature_template` SET `SpellList` = 1741401 WHERE `entry` = 17414;
UPDATE `creature_template` SET `SpellList` = 1861801 WHERE `entry` = 18618;

DELETE FROM dbscripts_on_relay WHERE id = 1741401;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1741401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15129, 0, 0, 0, 0, 0, 0, 0, 'Shadowmoon Technician - Emote');

-- Hellfire Imp
DELETE FROM `creature_template_spells` WHERE `entry` IN (17477, 18606);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1747701, 1860601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1747701, 'Blood Furnace - Hellfire Imp - Normal', 0, 90),
(1860601, 'Blood Furnace - Hellfire Imp - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1747701, 1860601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1747701, 1, 15242, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Hellfire Imp - Fire Ball - on current'),
(1860601, 1, 17290, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Hellfire Imp - Fire Ball - on current');

UPDATE `creature_template` SET `SpellList` = 1747701 WHERE `entry` = 17477;
UPDATE `creature_template` SET `SpellList` = 1860601 WHERE `entry` = 18606;

-- Laughing Skull Rogue
DELETE FROM `creature_template_spells` WHERE `entry` IN (17491, 18610);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1749101, 1861001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1749101, 'Blood Furnace - Laughing Skull Rogue - Normal', 0, 0),
(1861001, 'Blood Furnace - Laughing Skull Rogue - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1749101, 1861001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1749101, 1, 34969, 0, -1, 1, 0, 100, 0, 3000, 9000, 3000, 10000, 'Laughing Skull Rogue - Poison - on current'),
(1749101, 2, 6434, 0, -1, 0, 1741401, 100, 0, 0, 5900, 15000, 20000, 'Laughing Skull Rogue - Slice and Dice - on self'),
(1749101, 3, 30832, 0, -1, 1, 0, 100, 0, 4100, 7800, 12000, 15000, 'Laughing Skull Rogue - Kidney Shot - on current'),
(1861001, 1, 34969, 0, -1, 1, 0, 100, 0, 3000, 9000, 3000, 10000, 'Laughing Skull Rogue - Poison - on current'),
(1861001, 2, 6434, 0, -1, 0, 1741401, 100, 0, 0, 5900, 15000, 20000, 'Laughing Skull Rogue - Slice and Dice - on self'),
(1861001, 3, 30832, 0, -1, 1, 0, 100, 0, 4100, 7800, 12000, 15000, 'Laughing Skull Rogue - Kidney Shot - on current');

UPDATE `creature_template` SET `SpellList` = 1749101 WHERE `entry` = 17491;
UPDATE `creature_template` SET `SpellList` = 1861001 WHERE `entry` = 18610;

-- Laughing Skull Warden
DELETE FROM `creature_template_spells` WHERE `entry` IN (17624, 18611);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1762401, 1861101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1762401, 'Blood Furnace - Laughing Skull Warden - Normal', 0, 0),
(1861101, 'Blood Furnace - Laughing Skull Warden - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1762401, 1861101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1762401, 1, 9128, 0, -1, 0, 0, 100, 0, 300, 1200, 15800, 15800, 'Laughing Skull Warden - Battle Shout - on self'),
(1861101, 1, 9128, 0, -1, 0, 0, 100, 0, 300, 1200, 15800, 15800, 'Laughing Skull Warden - Battle Shout - on self');

UPDATE `creature_template` SET `SpellList` = 1762401 WHERE `entry` = 17624;
UPDATE `creature_template` SET `SpellList` = 1861101 WHERE `entry` = 18611;


-- Laughing Skull Legionaire
DELETE FROM `creature_template_spells` WHERE `entry` IN (17626, 18609);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1762601, 1860901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1762601, 'Blood Furnace - Laughing Skull Legionaire - Normal', 0, 0),
(1860901, 'Blood Furnace - Laughing Skull Legionaire - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1762601, 1860901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1762601, 1, 10966, 0, -1, 1, 0, 100, 0, 5800, 7200, 11900, 12400, 'Laughing Skull Legionaire - Uppercut - on current'),
(1860901, 1, 10966, 0, -1, 1, 0, 100, 0, 5800, 7200, 11900, 12400, 'Laughing Skull Legionaire - Uppercut - on current');

UPDATE `creature_template` SET `SpellList` = 1762601 WHERE `entry` = 17626;
UPDATE `creature_template` SET `SpellList` = 1860901 WHERE `entry` = 18609;
