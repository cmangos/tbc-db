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
