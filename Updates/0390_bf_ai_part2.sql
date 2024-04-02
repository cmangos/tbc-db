-- Nascent Fel Orc 17398
DELETE FROM `creature_template_spells` WHERE `entry` IN (17398, 18612);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1739801, 1861201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1739801, 'Blood Furnace - Nascent Fel Orc - Normal', 0, 0),
(1861201, 'Blood Furnace - Nascent Fel Orc - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1739801, 1861201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1739801, 1, 22427, 0, -1, 1, 0, 100, 0, 6000, 15000, 20000, 30000, 'Nascent Fel Orc - Concussion Blow - current'),
(1739801, 2, 31900, 0, -1, 103, 0, 100, 0, 1000, 8000, 10000, 21000, 'Nascent Fel Orc - Stomp - aoe exists'),
(1861201, 1, 22427, 0, -1, 1, 0, 100, 0, 6000, 15000, 20000, 30000, 'Nascent Fel Orc - Concussion Blow - current'),
(1861201, 2, 31900, 0, -1, 103, 0, 100, 0, 1000, 8000, 10000, 21000, 'Nascent Fel Orc - Stomp - aoe exists');

UPDATE `creature_template` SET `SpellList` = 1739801 WHERE `entry` = 17398;
UPDATE `creature_template` SET `SpellList` = 1861201 WHERE `entry` = 18612;


-- Felguard Annihilator 17400
-- tests on wotlk classic showed that they use intercept only in normal mode
DELETE FROM `creature_template_spells` WHERE `entry` IN (17400, 18604);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1740001, 1860401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1740001, 'Blood Furnace - Felguard Annihilator - Normal', 0, 0),
(1860401, 'Blood Furnace - Felguard Annihilator - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1740001, 1860401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1740001, 1, 15615, 0, -1, 122, 0, 100, 0, 4000, 13000, 6000, 16000, 'Felguard Annihilator - Pummel - random casting'),
(1740001, 2, 27577, 0, -1, 107, 0, 100, 0, 2000, 10000, 8000, 16000, 'Felguard Annihilator - Intercept - random not in melee'),
(1740001, 3, 18072, 0, -1, 1, 0, 100, 0, 1000, 5000, 8000, 14000, 'Felguard Annihilator - Uppercut - current'),
(1860401, 1, 15615, 0, -1, 122, 0, 100, 0, 4000, 13000, 6000, 16000, 'Felguard Annihilator - Pummel - random casting'),
(1860401, 3, 18072, 0, -1, 1, 0, 100, 0, 1000, 5000, 8000, 14000, 'Felguard Annihilator - Uppercut - current');

UPDATE `creature_template` SET `SpellList` = 1740001 WHERE `entry` = 17400;
UPDATE `creature_template` SET `SpellList` = 1860401 WHERE `entry` = 18604;

-- Fel Orc Neophyte 17429
DELETE FROM `creature_template_spells` WHERE `entry` IN (17429, 18603);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1742901, 1860301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1742901, 'Blood Furnace - Fel Orc Neophyte - Normal', 0, 0),
(1860301, 'Blood Furnace - Fel Orc Neophyte - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1742901, 1860301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1742901, 1, 22120, 0, -1, 107, 0, 100, 0, 5000, 15000, 20000, 25000, 'Fel Orc Neophyte - Charge - random not in melee'),
(1742901, 2, 8269, 0, -1, 2, 0, 100, 0, 1000, 6000, 100000, 130000, 'Fel Orc Neophyte - Frenzy - self'),
(1860301, 1, 22120, 0, -1, 107, 0, 100, 0, 5000, 15000, 20000, 25000, 'Fel Orc Neophyte - Charge - random not in melee'),
(1860301, 2, 8269, 0, -1, 2, 0, 100, 0, 1000, 6000, 100000, 130000, 'Fel Orc Neophyte - Frenzy - self');

UPDATE `creature_template` SET `SpellList` = 1742901 WHERE `entry` = 17429;
UPDATE `creature_template` SET `SpellList` = 1860301 WHERE `entry` = 18603;

-- Felguard Brute 18894
DELETE FROM `creature_template_spells` WHERE `entry` IN (18894, 21645);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1889401, 2164501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1889401, 'Blood Furnace - Felguard Brute - Normal', 0, 0),
(2164501, 'Blood Furnace - Felguard Brute - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1889401, 2164501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1889401, 1, 15615, 0, -1, 122, 0, 100, 0, 4000, 13000, 6000, 16000, 'Felguard Brute - Pummel - random casting'),
(1889401, 3, 18072, 0, -1, 1, 0, 100, 0, 1000, 5000, 8000, 14000, 'Felguard Brute - Uppercut - current'),
(2164501, 1, 15615, 0, -1, 122, 0, 100, 0, 4000, 13000, 6000, 16000, 'Felguard Brute - Pummel - random casting'),
(2164501, 3, 18072, 0, -1, 1, 0, 100, 0, 1000, 5000, 8000, 14000, 'Felguard Brute - Uppercut - current');

UPDATE `creature_template` SET `SpellList` = 1889401 WHERE `entry` = 18894;
UPDATE `creature_template` SET `SpellList` = 2164501 WHERE `entry` = 21645;

-- Hellfire Familiar 19016
DELETE FROM `creature_template_spells` WHERE `entry` IN (19016, 21646);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1901601, 2164601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1901601, 'Blood Furnace - Hellfire Familiar - Normal', 0, 90),
(2164601, 'Blood Furnace - Hellfire Familiar - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1901601, 2164601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1901601, 1, 11921, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Hellfire Familiar - Fire Ball - on current'),
(2164601, 1, 14034, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Hellfire Familiar - Fire Ball - on current');

UPDATE `creature_template` SET `SpellList` = 1901601 WHERE `entry` = 19016;
UPDATE `creature_template` SET `SpellList` = 2164601 WHERE `entry` = 21646;


