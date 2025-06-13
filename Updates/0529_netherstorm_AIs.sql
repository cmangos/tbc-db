-- ----------------
-- Netherstorm 
-- Sout East Island with Area 52 AIs
-- ---------------

-- SpellLists
-- Phase Hunter
DELETE FROM `creature_template_spells` WHERE `entry` = 18879;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887901;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887901, 'Netherstorm - Phase Hunter', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Unit Condition HAS_HARMFUL_AURA_MECHANIC (Snared, Frozen, Rooted)
(1887901, 1, 36574, 0, 1200, 2, 0, 100, 0, 1000, 8000, 10000, 16000, 'Phase Hunter - Phase Slip - self - unitCondition'),
(1887901, 2, 13321, 0, -1, 105, 0, 100, 0, 8000, 16000, 20000, 31000, 'Phase Hunter - Mana Burn - Random Player Mana User');

UPDATE `creature_template` SET `SpellList` = 1887901 WHERE `entry` = 18879;

-- Mana Snapper
DELETE FROM `creature_template_spells` WHERE `entry` = 18883;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1888301;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1888301, 'Netherstorm - Mana Snapper', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1888301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Unit Condition HAS_HARMFUL_AURA_MECHANIC (Snared, Frozen, Rooted)
(1888301, 1, 36574, 0, 1200, 2, 0, 100, 0, 1000, 8000, 10000, 16000, 'Mana Snapper - Phase Slip - self - unitCondition'),
(1888301, 2, 37176, 0, -1, 105, 0, 100, 0, 8000, 16000, 20000, 31000, 'Mana Snapper - Mana Burn - Random Player Mana User');

UPDATE `creature_template` SET `SpellList` = 1888301 WHERE `entry` = 18883;


-- Disembodied Protector
DELETE FROM `creature_template_spells` WHERE `entry` = 18873;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887301;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887301, 'Netherstorm - Disembodied Protector', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1887301, 1, 36647, 0, -1, 1, 0, 100, 0, 5000, 12000, 15000, 18000, 'Disembodied Protector - Crusader Strike - current'),
(1887301, 2, 9734, 0, -1, 1, 0, 100, 0, 3000, 10000, 8000, 14000, 'Disembodied Protector - Holy Smite - current');

UPDATE `creature_template` SET `SpellList` = 1887301 WHERE `entry` = 18873;

-- Disembodied Vindicator
DELETE FROM `creature_template_spells` WHERE `entry` = 18872;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887201;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887201, 'Netherstorm - Disembodied Vindicator', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1887201, 1, 36002, 0, -1, 1, 0, 100, 0, 6000, 18000, 18000, 28000, 'Disembodied Vindicator - Vindication - current');

UPDATE `creature_template` SET `SpellList` = 1887201 WHERE `entry` = 18872;

-- Disembodied Exarch
DELETE FROM `creature_template_spells` WHERE `entry` = 21058;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2105801;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2105801, 'Netherstorm - Disembodied Exarch', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2105801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2105801, 1, 33910, 0, -1, 204, 0, 100, 0, 2000, 10000, 2000, 10000, 'Disembodied Exarch - Heal Other - friendly missing 50% excluding self');

UPDATE `creature_template` SET `SpellList` = 2105801 WHERE `entry` = 21058;


-- Felblade Doomguard
DELETE FROM `creature_template_spells` WHERE `entry` = 19853;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1985301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1985301, 'Netherstorm - Felblade Doomguard', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1985301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1985301, 1, 35238, 0, -1, 1, 0, 100, 0, 8000, 16000, 12000, 24000, 'Felblade Doomguard - War Stomp - current'),
(1985301, 2, 32736, 0, -1, 1, 0, 100, 0, 9000, 20000, 16000, 27000, 'Felblade Doomguard - Mortal Strike - current');

UPDATE `creature_template` SET `SpellList` = 1985301 WHERE `entry` = 19853;

-- Artifact Seeker
DELETE FROM `creature_template_spells` WHERE `entry` = 19852;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1985201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1985201, 'Netherstorm - Artifact Seeker', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1985201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1985201, 1, 30849, 0, -1, 134, 0, 100, 0, 1000, 15000, 10000, 25000, 'Artifact Seeker - Spell Lock - top aggro casting'),
(1985201, 2, 11981, 0, -1, 133, 0, 100, 0, 6000, 16000, 14000, 24000, 'Artifact Seeker - Mana Burn - top aggro mana user');

UPDATE `creature_template` SET `SpellList` = 1985201 WHERE `entry` = 19852;

DELETE FROM creature_spell_targeting WHERE Id IN (133,134);
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `Comments`) VALUES 
(133, 1, 1, 0, 4, 'Attack - top aggro mana user'),
(134, 1, 1, 0, 32768, 'Attack - top aggro casting');

-- Pentatharon
DELETE FROM `creature_template_spells` WHERE `entry` = 20215;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2021501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2021501, 'Netherstorm - Pentatharon', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2021501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2021501, 1, 20663, 0, -1, 101, 0, 100, 0, 1000, 15000, 10000, 25000, 'Pentatharon - Sleep - random player non tank'),
(2021501, 2, 36039, 0, -1, 1, 0, 100, 0, 6000, 16000, 14000, 24000, 'Pentatharon - Carrion Swarm - current');

UPDATE `creature_template` SET `SpellList` = 2021501 WHERE `entry` = 20215;

-- Captain Arathyn
DELETE FROM `creature_template_spells` WHERE `entry` = 19635;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1963501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1963501, 'Netherstorm - Captain Arathyn', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1963501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1963501, 1, 17207, 0, -1, 2, 0, 100, 0, 8000, 15000, 15000, 20000, 'Captain Arathyn - Whirlwind - self');

UPDATE `creature_template` SET `SpellList` = 1963501 WHERE `entry` = 19635;


-- Sunfury Bloodwarder
DELETE FROM `creature_template_spells` WHERE `entry` = 18853;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1885301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1885301, 'Netherstorm - Sunfury Bloodwarder', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1885301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1885301, 1, 8599, 0, 5364, 0, 0, 100, 0, 0, 0, 1200000, 1200000, 'Sunfury Bloodwarder - Enrage - self'),
(1885301, 2, 35877, 0, -1, 130, 0, 100, 0, 10000, 30000, 10000, 30000, 'Sunfury Bloodwarder - Mark of the Sunfury - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 1885301 WHERE `entry` = 18853;

-- Sunfury Captain
DELETE FROM `creature_template_spells` WHERE `entry` = 19453;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1945301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1945301, 'Netherstorm - Sunfury Captain', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1945301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1945301, 1, 8599, 0, 5364, 0, 0, 100, 0, 0, 0, 1200000, 1200000, 'Sunfury Captain - Enrage - self'),
(1945301, 2, 32064, 0, -1, 2, 0, 100, 0, 6000, 14000, 14000, 28000, 'Sunfury Captain - Battle Shout - self'),
(1945301, 3, 35871, 0, -1, 1, 0, 100, 0, 4000, 12000, 15000, 25000, 'Sunfury Captain - SpellBreaker - current');

UPDATE `creature_template` SET `SpellList` = 1945301 WHERE `entry` = 19453;


-- Sunfury Astromancer
DELETE FROM `creature_template_spells` WHERE `entry` = 19643;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1964301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1964301, 'Netherstorm - Sunfury Astromancer', 0, 70);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1964301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1964301, 1, 35914, 0, -1, 1, 0, 100, 0, 12000, 20000, 16000, 24000, 'Sunfury Astromancer - Astral Focus - current'),
(1964301, 2, 38391, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Sunfury Astromancer - Scorch - current');

UPDATE `creature_template` SET `SpellList` = 1964301 WHERE `entry` = 19643;

-- Sunfury Magister
DELETE FROM `creature_template_spells` WHERE `entry` = 18855;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1885501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1885501, 'Netherstorm - Sunfury Magister', 0, 70);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1885501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1885501, 1, 9053, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Sunfury Magister - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 1885501 WHERE `entry` = 18855;

-- Sunfury Geologist
DELETE FROM `creature_template_spells` WHERE `entry` = 19779;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1977901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1977901, 'Netherstorm - Sunfury Geologist', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1977901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1977901, 1, 35918, 0, -1, 130, 0, 100, 0, 10000, 20000, 10000, 20000, 'Sunfury Geologist - Puncture Armor - top aggro aura not present'),
(1977901, 2, 36645, 0, -1, 107, 0, 100, 0, 2000, 6000, 2000, 6000, 'Sunfury Geologist - Throw Rock - random not in melee');

UPDATE `creature_template` SET `SpellList` = 1977901 WHERE `entry` = 19779;

-- Sunfury Warp-Master
DELETE FROM `creature_template_spells` WHERE `entry` = 18857;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1885701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1885701, 'Netherstorm - Sunfury Warp-Master', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1885701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1885701, 1, 35919, 0, -1, 1, 0, 100, 0, 2000, 8000, 12000, 18000, 'Sunfury Warp-Master - Welding Beam - current');

UPDATE `creature_template` SET `SpellList` = 1885701 WHERE `entry` = 18857;

-- Sunfury Warp-Engineer
DELETE FROM `creature_template_spells` WHERE `entry` = 18852;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1885201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1885201, 'Netherstorm - Sunfury Warp-Engineer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1885201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1885201, 1, 35920, 0, -1, 134, 0, 100, 0, 10000, 22000, 10000, 22000, 'Sunfury Warp-Engineer - Electroshock - top aggro casting'),
(1885201, 2, 35919, 0, -1, 1, 0, 100, 0, 2000, 8000, 12000, 18000, 'Sunfury Warp-Engineer - Welding Beam - current');

UPDATE `creature_template` SET `SpellList` = 1885201 WHERE `entry` = 18852;

-- Overseer Theredis
DELETE FROM `creature_template_spells` WHERE `entry` = 20416;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2041601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2041601, 'Netherstorm - Overseer Theredis', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2041601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2041601, 1, 6713, 0, -1, 1, 0, 100, 0, 10000, 20000, 20000, 34000, 'Overseer Theredis - Disarm - current'),
(2041601, 2, 35871, 0, -1, 1, 0, 100, 0, 8000, 16000, 12000, 18000, 'Overseer Theredis - Spellbreaker - current');

UPDATE `creature_template` SET `SpellList` = 2041601 WHERE `entry` = 20416;

-- Arcane Annihilator
DELETE FROM `creature_template_spells` WHERE `entry` = 18856;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1885601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1885601, 'Netherstorm - Arcane Annihilator', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1885601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1885601, 1, 33860, 0, -1, 2, 0, 100, 0, 12000, 18000, 18000, 24000, 'Arcane Annihilator - Arcane Explosion - self'),
(1885601, 2, 35892, 0, -1, 2, 0, 100, 0, 6000, 10000, 16000, 22000, 'Arcane Annihilator - Suppression - self');

UPDATE `creature_template` SET `SpellList` = 1885601 WHERE `entry` = 18856;

-- Zaxxis Raider
DELETE FROM `creature_template_spells` WHERE `entry` = 18875;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887501, 'Netherstorm - Zaxxis Raider', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1887501, 1, 35922, 0, -1, 2, 0, 100, 0, 5000, 18000, 15000, 23000, 'Zaxxis Raider - Energy Flare - self');

UPDATE `creature_template` SET `SpellList` = 1887501 WHERE `entry` = 18875;

-- Warp-Raider Nesaad
DELETE FROM `creature_template_spells` WHERE `entry` = 19641;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1964101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1964101, 'Netherstorm - Warp-Raider Nesaad', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1964101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1964101, 1, 35924, 0, -1, 2, 0, 100, 0, 9000, 16000, 9000, 16000, 'Warp-Raider Nesaad - Energy Flux - self');

UPDATE `creature_template` SET `SpellList` = 1964101 WHERE `entry` = 19641;

-- Zaxxis Stalker
DELETE FROM `creature_template_spells` WHERE `entry` = 19642;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1964201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1964201, 'Netherstorm - Zaxxis Stalker', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1964201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1964201, 1, 7159, 0, -1, 1, 0, 100, 0, 2000, 8000, 10000, 24000, 'Zaxxis Stalker - Backstab - current'),
-- UnitCondition  number of melee attackers >=1
(1964201, 2, 32920, 0, 1071, 1, 0, 100, 0, 4000, 10000, 10000, 20000, 'Zaxxis Stalker - Warp - current');

UPDATE `creature_template` SET `SpellList` = 1964201 WHERE `entry` = 19642;

-- Warp Aberration
DELETE FROM `creature_template_spells` WHERE `entry` = 18865;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1886501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1886501, 'Netherstorm - Warp Aberration', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1886501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1886501, 1, 36577, 0, -1, 0, 0, 100, 0, 10000, 20000, 20000, 30000, 'Warp Aberration - Warp Storm - none');

UPDATE `creature_template` SET `SpellList` = 1886501 WHERE `entry` = 18865;

-- Exarch Orelis
DELETE FROM `creature_template_spells` WHERE `entry` = 19466;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1946601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1946601, 'Netherstorm - Exarch Orelis', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1946601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1946601, 1, 13730, 0, -1, 2, 0, 100, 0, 4000, 20000, 8000, 30000, 'Exarch Orelis - Demoralizing Shout - self'),
(1946601, 2, 16509, 0, -1, 1, 0, 100, 0, 16000, 20000, 32000, 36000, 'Exarch Orelis - Rend - current'),
(1946601, 3, 29426, 0, -1, 1, 0, 100, 0, 2000, 10000, 30000, 38000, 'Exarch Orelis - Heroic Strike - current');

UPDATE `creature_template` SET `SpellList` = 1946601 WHERE `entry` = 19466;


-- Anchorite Karja
DELETE FROM `creature_template_spells` WHERE `entry` = 19467;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1946701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1946701, 'Netherstorm - Anchorite Karja', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1946701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1946701, 1, 17141, 0, -1, 1, 0, 100, 0, 15000, 20000, 15000, 20000, 'Anchorite Karja - Holy Fire - current');

UPDATE `creature_template` SET `SpellList` = 1946701 WHERE `entry` = 19467;
