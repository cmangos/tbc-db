-- ---------------------------
-- Mana Tombs Spell Lists
-- ---------------------------

-- Ethereal Scavenger
DELETE FROM `creature_template_spells` WHERE `entry` = 18309;
DELETE FROM `creature_template_spells` WHERE `entry` = 20258;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1830901, 2025801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1830901, 'Mana Tombs - Ethereal Scavenger - Normal', 0, 0),
(2025801, 'Mana Tombs - Ethereal Scavenger - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1830901, 2025801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1830901, 1, 33871, 0, -1, 122, 0, 100, 0, 1000, 16000, 6000, 21000, 'Ethereal Scavenger - Shield Bash - random player casting'),
(1830901, 2, 33865, 0, -1, 130, 0, 100, 0, 6000, 18000, 12000, 22000, 'Ethereal Scavenger - Singe - top aggro aura not present'),
(1830901, 3, 34920, 0, -1, 1, 0, 100, 0, 3000, 14000, 6000, 17000, 'Ethereal Scavenger - Strike - current'),

(2025801, 1, 33871, 0, -1, 122, 0, 100, 0, 1000, 16000, 6000, 21000, 'Ethereal Scavenger - Shield Bash - random player casting'),
(2025801, 2, 33865, 0, -1, 130, 0, 100, 0, 6000, 18000, 12000, 22000, 'Ethereal Scavenger - Singe - top aggro aura not present'),
(2025801, 3, 34920, 0, -1, 1, 0, 100, 0, 3000, 14000, 6000, 17000, 'Ethereal Scavenger - Strike - current');

UPDATE `creature_template` SET `SpellList` = 1830901 WHERE `entry` = 18309;
UPDATE `creature_template` SET `SpellList` = 2025801 WHERE `entry` = 20258;


-- Ethereal Crypt Raider
-- Some reasearch infos;
-- Charges random player during fight not only main target
-- Battle Shout gets casted even if its up (can refresh it mid fight)
DELETE FROM `creature_template_spells` WHERE `entry` = 18311;
DELETE FROM `creature_template_spells` WHERE `entry` = 20255;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1831101, 2025501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1831101, 'Mana Tombs - Ethereal Crypt Raider - Normal', 0, 0),
(2025501, 'Mana Tombs - Ethereal Crypt Raider - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1831101, 2025501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1831101, 1, 22911, 0, -1, 100, 0, 100, 0, 0, 13000, 15000, 30000, 'Ethereal Crypt Raider - Charge - random player'),
(1831101, 2, 32315, 0, -1, 130, 0, 100, 0, 5000, 22000, 5000, 22000, 'Ethereal Crypt Raider - Soul Strike - top aggro aura not present'),
(1831101, 3, 31403, 0, -1, 2, 0, 100, 0, 10000, 21000, 40000, 120000, 'Ethereal Crypt Raider - Battle Shout - self'),

(2025501, 1, 22911, 0, -1, 100, 0, 100, 0, 0, 13000, 15000, 30000, 'Ethereal Crypt Raider - Charge - random player'),
(2025501, 2, 32315, 0, -1, 130, 0, 100, 0, 5000, 22000, 5000, 22000, 'Ethereal Crypt Raider - Soul Strike - top aggro aura not present'),
(2025501, 3, 31403, 0, -1, 2, 0, 100, 0, 10000, 21000, 40000, 120000, 'Ethereal Crypt Raider - Battle Shout - self');

UPDATE `creature_template` SET `SpellList` = 1831101 WHERE `entry` = 18311;
UPDATE `creature_template` SET `SpellList` = 2025501 WHERE `entry` = 20255;


-- Ethereal Sorcerer
-- Research Info:
-- Ethereal Sorcerer can have more then 2 arcane friends up
-- Main spell is 32348 that triggers 32349 and 32353 via dbscript
DELETE FROM `creature_template_spells` WHERE `entry` = 18313;
DELETE FROM `creature_template_spells` WHERE `entry` = 20259;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1831301, 2025901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1831301, 'Mana Tombs - Ethereal Sorcerer - Normal', 0, 0),
(2025901, 'Mana Tombs - Ethereal Sorcerer - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1831301, 2025901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1831301, 1, 32348, 0, -1, 0, 0, 100, 0, 20000, 25000, 20000, 25000, 'Ethereal Sorcerer - Summon Arcane Fiends - none'),
(1831301, 2, 25603, 0, -1, 130, 0, 100, 0, 3000, 8000, 12000, 21000, 'Ethereal Sorcerer - Slow - top aggro aura not present'),
(1831301, 3, 15790, 0, -1, 1, 0, 100, 0, 5000, 17000, 17000, 26000, 'Ethereal Sorcerer - Arcane Missiles - current'),

(2025901, 1, 32348, 0, -1, 0, 0, 100, 0, 20000, 25000, 20000, 25000, 'Ethereal Sorcerer - Summon Arcane Fiends - none'),
(2025901, 2, 25603, 0, -1, 130, 0, 100, 0, 3000, 8000, 12000, 21000, 'Ethereal Sorcerer - Slow - top aggro aura not present'),
(2025901, 3, 15790, 0, -1, 1, 0, 100, 0, 5000, 17000, 17000, 26000, 'Ethereal Sorcerer - Arcane Missiles - current');

UPDATE `creature_template` SET `SpellList` = 1831301 WHERE `entry` = 18313;
UPDATE `creature_template` SET `SpellList` = 2025901 WHERE `entry` = 20259;


-- Arcane Fiend
DELETE FROM `creature_template_spells` WHERE `entry` = 18429;
DELETE FROM `creature_template_spells` WHERE `entry` = 20252;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1842901, 2025201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1842901, 'Mana Tombs - Arcane Fiend - Normal', 0, 0),
(2025201, 'Mana Tombs - Arcane Fiend - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1842901, 2025201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1842901, 1, 15122, 0, -1, 122, 0, 100, 0, 10000, 15000, 10000, 15000, 'Arcane Fiend - Counter Spell - random player casting'),
(1842901, 2, 33860, 0, -1, 2, 0, 100, 0, 5000, 10000, 9000, 14000, 'Arcane Fiend - Arcane Explosion - self'),

(2025201, 1, 15122, 0, -1, 122, 0, 100, 0, 10000, 15000, 10000, 15000, 'Arcane Fiend - Counter Spell - random player casting'),
(2025201, 2, 15253, 0, -1, 2, 0, 100, 0, 5000, 10000, 9000, 14000, 'Arcane Fiend - Arcane Explosion - self');

UPDATE `creature_template` SET `SpellList` = 1842901 WHERE `entry` = 18429;
UPDATE `creature_template` SET `SpellList` = 2025201 WHERE `entry` = 20252;


-- Ethereal Priest
DELETE FROM `creature_template_spells` WHERE `entry` = 18317;
DELETE FROM `creature_template_spells` WHERE `entry` = 20257;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1831701, 2025701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1831701, 'Mana Tombs - Ethereal Priest - Normal', 0, 0),
(2025701, 'Mana Tombs - Ethereal Priest - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1831701, 2025701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1831701, 1, 34945, 0, -1, 206, 0, 100, 0, 2000, 12000, 6000, 18000, 'Ethereal Priest - Heal - Missing 25% including self'),
(1831701, 2, 17139, 0, -1, 5, 0, 100, 0, 6000, 22000, 6000, 22000, 'Ethereal Priest - Power Word: Shield - friendly missing buff'),
(1831701, 3, 34944, 0, -1, 2, 0, 100, 0, 4000, 17000, 11000, 25000, 'Ethereal Priest - Holy Nova - self'),

(2025701, 1, 22883, 0, -1, 206, 0, 100, 0, 2000, 12000, 6000, 18000, 'Ethereal Priest - Heal - Missing 25% including self'),
(2025701, 2, 35944, 0, -1, 5, 0, 100, 0, 6000, 22000, 6000, 22000, 'Ethereal Priest - Power Word: Shield - friendly missing buff'),
(2025701, 3, 37669, 0, -1, 2, 0, 100, 0, 4000, 17000, 11000, 25000, 'Ethereal Priest - Holy Nova - self');

UPDATE `creature_template` SET `SpellList` = 1831701 WHERE `entry` = 18317;
UPDATE `creature_template` SET `SpellList` = 2025701 WHERE `entry` = 20257;


-- Ethereal Darkcaster
DELETE FROM `creature_template_spells` WHERE `entry` = 18331;
DELETE FROM `creature_template_spells` WHERE `entry` = 20256;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1833101, 2025601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1833101, 'Mana Tombs - Ethereal Darkcaster - Normal', 0, 0),
(2025601, 'Mana Tombs - Ethereal Darkcaster - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1833101, 2025701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1833101, 1, 34930, 0, -1, 105, 0, 100, 0, 9000, 22000, 12000, 23000, 'Ethereal Darkcaster - Mana Burn - random mana user'),
(1833101, 2, 34942, 0, -1, 130, 0, 100, 0, 6000, 18000, 6000, 18000, 'Ethereal Darkcaster - Shadow Word Pain - top aggro aura not present'),

(2025601, 1, 34931, 0, -1, 105, 0, 100, 0, 9000, 22000, 12000, 23000, 'Ethereal Darkcaster - Mana Burn - random mana user'),
(2025601, 2, 34942, 0, -1, 130, 0, 100, 0, 6000, 18000, 6000, 18000, 'Ethereal Darkcaster - Shadow Word Pain - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 1833101 WHERE `entry` = 18331;
UPDATE `creature_template` SET `SpellList` = 2025601 WHERE `entry` = 20256;


-- Mana Leech
DELETE FROM `creature_template_spells` WHERE `entry` = 19306;
DELETE FROM `creature_template_spells` WHERE `entry` = 20263;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1930601, 2026301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1930601, 'Mana Tombs - Mana Leech - Normal', 0, 0),
(2026301, 'Mana Tombs - Mana Leech - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1930601, 2026301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1930601, 1, 25602, 0, -1, 130, 0, 100, 0, 12000, 26000, 12000, 26000, 'Mana Leech - Faerie Fire - top aggro aura not present'),
(1930601, 2, 15785, 0, -1, 105, 0, 100, 0, 12000, 25000, 12000, 25000, 'Mana Leech - Mana Burn - random mana user'),

(2026301, 1, 25602, 0, -1, 130, 0, 100, 0, 12000, 26000, 12000, 26000, 'Mana Leech - Faerie Fire - top aggro aura not present'),
(2026301, 2, 15785, 0, -1, 105, 0, 100, 0, 12000, 25000, 12000, 25000, 'Mana Leech - Mana Burn - random mana user');

UPDATE `creature_template` SET `SpellList` = 1930601 WHERE `entry` = 19306;
UPDATE `creature_template` SET `SpellList` = 2026301 WHERE `entry` = 20263;


-- Nexus Terror
DELETE FROM `creature_template_spells` WHERE `entry` = 19307;
DELETE FROM `creature_template_spells` WHERE `entry` = 20265;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1930701, 2026501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1930701, 'Mana Tombs - Nexus Terror - Normal', 0, 0),
(2026501, 'Mana Tombs - Nexus Terror - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1930701, 2026501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1930701, 1, 34925, 0, -1, 131, 0, 100, 0, 11000, 29000, 11000, 29000, 'Nexus Terror - Curse of Impotence - Random Player Mana User aura not present'),
(1930701, 2, 34322, 0, -1, 2, 0, 100, 0, 12000, 21000, 14000, 25000, 'Nexus Terror - Psychic Scream - self'),
(1930701, 3, 38065, 0, -1, 1, 0, 100, 0, 8000, 17000, 15000, 25000, 'Nexus Terror - Death Coil - current'),
(1930701, 4, 34922, 0, -1, 100, 0, 100, 0, 3000, 22000, 11000, 30000, 'Nexus Terror - Shadows Embrace - random'),

(2026501, 1, 34925, 0, -1, 131, 0, 100, 0, 11000, 29000, 11000, 29000, 'Nexus Terror - Curse of Impotence - Random Player Mana User aura not present'),
(2026501, 2, 34322, 0, -1, 2, 0, 100, 0, 12000, 21000, 14000, 25000, 'Nexus Terror - Psychic Scream - self'),
(2026501, 3, 38065, 0, -1, 1, 0, 100, 0, 8000, 17000, 15000, 25000, 'Nexus Terror - Death Coil - current'),
(2026501, 4, 34922, 0, -1, 100, 0, 100, 0, 3000, 22000, 11000, 30000, 'Nexus Terror - Shadows Embrace - random');

UPDATE `creature_template` SET `SpellList` = 1930701 WHERE `entry` = 19307;
UPDATE `creature_template` SET `SpellList` = 2026501 WHERE `entry` = 20265;


-- Ethereal Spellbinder
DELETE FROM `creature_template_spells` WHERE `entry` = 18312;
DELETE FROM `creature_template_spells` WHERE `entry` = 20260;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1831201, 2026001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1831201, 'Mana Tombs - Ethereal Spellbinder - Normal', 0, 0),
(2026001, 'Mana Tombs - Ethereal Spellbinder - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1831201, 2026001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1831201, 1, 32316, 0, -1, 2, 0, 100, 0, 20000, 20000, 20000, 20000, 'Ethereal Spellbinder - Summon Wraith - self'),
(1831201, 2, 37470, 0, -1, 122, 0, 100, 0, 6000, 16000, 6000, 16000, 'Ethereal Spellbinder - Counterspell - random player casting'),
(1831201, 3, 17883, 0, -1, 130, 0, 100, 0, 8000, 17000, 8000, 17000, 'Ethereal Spellbinder - Immolate - top aggro aura not present'),

(2026001, 1, 32316, 0, -1, 2, 0, 100, 0, 20000, 20000, 20000, 20000, 'Ethereal Spellbinder - Summon Wraith - self'),
(2026001, 2, 37470, 0, -1, 122, 0, 100, 0, 6000, 16000, 6000, 16000, 'Ethereal Spellbinder - Counterspell - random player casting'),
(2026001, 3, 17883, 0, -1, 130, 0, 100, 0, 8000, 17000, 8000, 17000, 'Ethereal Spellbinder - Immolate - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 1831201 WHERE `entry` = 18312;
UPDATE `creature_template` SET `SpellList` = 2026001 WHERE `entry` = 20260;

-- Ethereal Wraith
DELETE FROM `creature_template_spells` WHERE `entry` = 18394;
DELETE FROM `creature_template_spells` WHERE `entry` = 20262;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1839401, 2026201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1839401, 'Mana Tombs - Ethereal Wraith - Normal', 0, 0),
(2026201, 'Mana Tombs - Ethereal Wraith - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1839401, 2026201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1839401, 1, 34934, 0, -1, 1, 0, 100, 0, 7000, 15000, 8000, 16000, 'Ethereal Wraith - Shadowbolt Volley - current'),
(2026201, 1, 34934, 0, -1, 1, 0, 100, 0, 7000, 15000, 8000, 16000, 'Ethereal Wraith - Shadowbolt Volley - current');

UPDATE `creature_template` SET `SpellList` = 1839401 WHERE `entry` = 18394;
UPDATE `creature_template` SET `SpellList` = 2026201 WHERE `entry` = 20262;

-- Nexus Stalker
DELETE FROM `creature_template_spells` WHERE `entry` = 18314;
DELETE FROM `creature_template_spells` WHERE `entry` = 20264;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1831401, 2026401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1831401, 'Mana Tombs - Nexus Stalker - Normal', 0, 0),
(2026401, 'Mana Tombs - Nexus Stalker - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1831401, 2026401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1831401, 1, 34940, 0, -1, 1, 0, 100, 0, 6000, 17000, 12000, 23000, 'Nexus Stalker - Gouge - current'),
(1831401, 2, 33925, 0, -1, 100, 0, 100, 0, 5000, 16000, 11000, 22000, 'Nexus Stalker - Phantom Strike - random player'),

(2026401, 1, 34940, 0, -1, 1, 0, 100, 0, 6000, 17000, 12000, 23000, 'Nexus Stalker - Gouge - current'),
(2026401, 2, 39332, 0, -1, 100, 0, 100, 0, 5000, 16000, 11000, 22000, 'Nexus Stalker - Phantom Strike - random player');

UPDATE `creature_template` SET `SpellList` = 1831401 WHERE `entry` = 18314;
UPDATE `creature_template` SET `SpellList` = 2026401 WHERE `entry` = 20264;

-- Ethereal Theurgist
DELETE FROM `creature_template_spells` WHERE `entry` = 18315;
DELETE FROM `creature_template_spells` WHERE `entry` = 20261;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1831501, 2026101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1831501, 'Mana Tombs - Ethereal Theurgist - Normal', 0, 0),
(2026101, 'Mana Tombs - Ethereal Theurgist - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1831501, 2026101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1831501, 1, 13323, 0, -1, 101, 0, 100, 0, 12000, 22000, 15000, 30000, 'Ethereal Theurgist - Polymorph - random player non tank'),
(1831501, 2, 17145, 0, -1, 2, 0, 100, 0, 6000, 20000, 12000, 28000, 'Ethereal Theurgist - Blast Wave - self'),
(1831501, 3, 15580, 0, -1, 1, 0, 100, 0, 5000, 12000, 8000, 13000, 'Ethereal Theurgist - Strike - current'),

(2026101, 1, 13323, 0, -1, 101, 0, 100, 0, 12000, 22000, 15000, 30000, 'Ethereal Theurgist - Polymorph - random player non tank'),
(2026101, 2, 38064, 0, -1, 2, 0, 100, 0, 6000, 20000, 12000, 28000, 'Ethereal Theurgist - Blast Wave - self'),
(2026101, 3, 34920, 0, -1, 1, 0, 100, 0, 5000, 12000, 8000, 13000, 'Ethereal Theurgist - Strike - current');

UPDATE `creature_template` SET `SpellList` = 1831501 WHERE `entry` = 18315;
UPDATE `creature_template` SET `SpellList` = 2026101 WHERE `entry` = 20261;
