-- Add creature_spell_list for strong Demons that are currently not immune to Enslave

-- Felguard Elite 8717
UPDATE `creature_template` SET `SpellList` = 871701 WHERE `entry` = 8717;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(871701, 'Blasted Lands - Felguard Elite', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(871701, 0, 16046, 0, 0, 0, 100, 1, 8800, 15300, 10800, 29200, 'Blasted Lands - Felguard Elite - Blast Wave'),
(871701, 1, 13737, 0, 1, 0, 100, 1, 4400, 20700, 8600, 24500, 'Blasted Lands - Felguard Elite - Cleave on Current'),
(871701, 2, 15284, 0, 1, 0, 100, 1, 3200, 5800, 8200, 21700, 'Blasted Lands - Felguard Elite - Mortal Strike on Current');

-- Grol the Destroyer
UPDATE `creature_template` SET `SpellList` = 766501 WHERE `entry` = 7665;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(766501, 'Blasted Lands - Grol the Destroyer', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(766501, 0, 12734, 0, 0, 0, 100, 1, 7800, 13400, 16800, 23200, 'Blasted Lands - Grol the Destroyer - Ground Smash'),
(766501, 1, 10101, 0, 1, 0, 100, 1, 19600, 29800, 32500, 46700, 'Blasted Lands - Grol the Destroyer - Knock Away on Current');

-- after looking some more into it, most are immune to enslave anyways, so going with this instead of rewriting data for nothing.
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` IN (
7461, -- Hederine Initiate
7665, -- https://tbc.wowhead.com/npc=7665/grol-the-destroyer#comments:id=2838054:reply=1200445
-- https://tbc.wowhead.com/npc=7665/grol-the-destroyer#comments:id=251999:reply=35084
8716, -- Dreadlord
8718, -- Manahound
8717, -- Felguard Elite - https://mega.nz/file/H6JUXDqK#c9r5_hhbIhZ-h713ohiuaejqAhl1iEvrWlB7X5J6kxw
12396, -- Doomguard Commander
14452, -- Enslaved Doomguard Commander
7664, -- Razelikh the Defiler
14101, -- https://classic.wowhead.com/npc=14101/enraged-felguard#comments:id=2915775
14530, -- Solenor the Slayer (only CoR "exploit")
14534, -- Klinfran the Crazed
14535, -- Artorius the Doombringer
15146, -- Mad Voidwalker (ZG) - https://mega.nz/file/CqRWFL5K#MKplEpSPa-sq5C9U9sncnLthO-oFgaD16h9peGt6JP4
14502, -- Xorothian Dreadsteed (Dire Maul Boss)
-- https://tbc.wowhead.com/npc=16177/dreadbeast#comments:id=2920484
16176, -- Shadowbeast (Karazhan)
16178, -- Phase Hound (Karazhan)
21035, -- Dimensius the All-Devouring 000
21169, -- Netharel - Metamorphosis
25033, -- https://tbc.wowhead.com/npc=25033/eredar-sorcerer#comments:id=265760
22988, -- Illidari Shadowlord
25031, -- https://tbc.wowhead.com/npc=25031/pit-overlord#comments:id=265758
22281, -- https://tbc.wowhead.com/npc=22281/galvanoth#comments:id=31915
23353, -- Braxxus
23354, -- Mo'arg Incinerator
23355 -- Zarcsin
);

-- Remaining High Damage Output (damagemultiplier > 5) Enslaveable Demons:
-- 14389	Netherwalker - legit
-- 14483	Dread Guard - legit
-- 15623	Xandivious - legit
-- 19231	Mechanar Crusher - normal only
-- 19712	Mechanar Driller - normal only
-- 19713	Mechanar Wrecker - normal only
-- 19511	Nethervine Inciter - normal only
-- 16177, -- Dreadbeast (Karazhan - seemingly enslaveable)
-- 25563	Sister of Torment (1) - legit even on heroic
-- 18847	Wild Fel Stalker - legit


-- Netherwalker
UPDATE `creature_template` SET `SpellList` = 1438901 WHERE `entry` = 14389;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1438901, 'Dire Maul - Netherwalker', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1438901, 0, 22878, 0, 1, 0, 100, 1, 4000, 8000, 7300, 14200, 'Dire Maul - Netherwalker - Shadow Bolt Volley on Current');

-- Dread Guard
UPDATE `creature_template` SET `SpellList` = 1448301 WHERE `entry` = 14483;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1448301, 'Dire Maul - Dread Guard', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1448301, 0, 18663, 0, 1, 0, 100, 1, 9000, 12000, 7000, 12000, 'Dire Maul - Dread Guard - Shadow Shock on Current'),
(1448301, 1, 15284, 0, 1, 0, 100, 1, 6000, 10000, 9000, 12000, 'Dire Maul - Dread Guard - Cleave on Current');

-- Mad Voidwalker
UPDATE `creature_template` SET `SpellList` = 1514601 WHERE `entry` = 15146;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1514601, 'Zul''Gurub - Mad Voidwalker', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1514601, 0, 24614, 0, 0, 0, 100, 1, 3000, 5000, 18000, 20000, 'Zul''Gurub - Mad Voidwalker - Consuming Shadows'),
(1514601, 1, 24616, 0, 1, 0, 100, 1, 1000, 2000, 5000, 8000, 'Zul''Gurub - Mad Voidwalker - Shadow Shock on Current');

-- Xandivious
UPDATE `creature_template` SET `SpellList` = 1562301 WHERE `entry` = 15623;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1562301, 'Winterspring - Xandivious', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1562301, 0, 11980, 0, 0, 0, 100, 1, 3000, 3500, 15000, 15000, 'Winterspring - Xandivious - Curse of Weakness on Current'),
(1562301, 1, 11639, 0, 1, 0, 100, 1, 5000, 8000, 12000, 16000, 'Winterspring - Xandivious - Shadow Word: Pain on Current'),
(1562301, 2, 16046, 0, 1, 0, 100, 1, 3000, 6000, 9000, 13000, 'Winterspring - Xandivious - Blast Wave on Current');

-- Mechanar Crusher
UPDATE `creature_template` SET `SpellList` = 1923101 WHERE `entry` = 19231; -- NORMAL
UPDATE `creature_template` SET `SpellList` = 2152701 WHERE `entry` = 21527; -- HEROIC
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1923101, 'The Mechanar - Mechanar Crusher (Normal)', 0, 0),
(2152701, 'The Mechanar - Mechanar Crusher (Heroic)', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1923101, 0, 35056, 0, 1, 0, 100, 1, 11100, 19300, 22900, 28900, 'The Mechanar - Mechanar Crusher (Normal) - Glob of Machine Fluid on Current'),
(1923101, 1, 35055, 0, 1, 0, 100, 1, 7800, 13200, 13300, 21200, 'The Mechanar - Mechanar Crusher (Normal) - The Claw on Current'),
(2152701, 0, 38923, 0, 1, 0, 100, 1, 11100, 19300, 22900, 28900, 'The Mechanar - Mechanar Crusher (Heroic) - Glob of Machine Fluid on Current'),
(2152701, 1, 35055, 0, 1, 0, 100, 1, 7800, 13200, 13300, 21200, 'The Mechanar - Mechanar Crusher (Heroic) - The Claw on Current');

-- Mechanar Driller
UPDATE `creature_template` SET `SpellList` = 1971201 WHERE `entry` = 19712; -- NORMAL
UPDATE `creature_template` SET `SpellList` = 2152801 WHERE `entry` = 21528; -- HEROIC
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1971201, 'The Mechanar - Mechanar Driller (Normal)', 0, 0),
(2152801, 'The Mechanar - Mechanar Driller (Heroic)', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1971201, 0, 35056, 0, 1, 0, 100, 1, 13300, 37400, 21700, 33800, 'The Mechanar - Mechanar Driller (Normal) - Glob of Machine Fluid on Current'),
(1971201, 1, 35047, 0, 1, 0, 100, 1, 4700, 18100, 7200, 16900, 'The Mechanar - Mechanar Driller (Normal) - Drill Armor on Current'),
(2152801, 0, 38923, 0, 1, 0, 100, 1, 13300, 37400, 21700, 33800, 'The Mechanar - Mechanar Driller (Heroic) - Glob of Machine Fluid on Current'),
(2152801, 1, 35047, 0, 1, 0, 100, 1, 4700, 18100, 7200, 16900, 'The Mechanar - Mechanar Driller (Heroic) - Drill Armor on Current');

-- Mechanar Wrecker
UPDATE `creature_template` SET `SpellList` = 1971301 WHERE `entry` = 19713; -- NORMAL
UPDATE `creature_template` SET `SpellList` = 2153201 WHERE `entry` = 21532; -- HEROIC
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1971301, 'The Mechanar - Mechanar Wrecker (Normal)', 0, 0),
(2153201, 'The Mechanar - Mechanar Wrecker (Heroic)', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1971301, 0, 35056, 0, 1, 0, 100, 1, 15200, 27700, 21700, 36800, 'The Mechanar - Mechanar Wrecker (Normal) - Glob of Machine Fluid on Current'),
(1971301, 1, 35049, 0, 1, 0, 100, 1, 15700, 22500, 17300, 26500, 'The Mechanar - Mechanar Wrecker (Normal) - Pound on Current'),
(2153201, 0, 38923, 0, 1, 0, 100, 1, 15200, 27700, 21700, 36800, 'The Mechanar - Mechanar Wrecker (Heroic) - Glob of Machine Fluid on Current'),
(2153201, 1, 35049, 0, 1, 0, 100, 1, 15700, 22500, 17300, 26500, 'The Mechanar - Mechanar Wrecker (Heroic) - Pound on Current');

-- Nethervine Inciter
UPDATE `creature_template` SET `SpellList` = 1951101 WHERE `entry` = 19511; -- NORMAL
UPDATE `creature_template` SET `SpellList` = 2156301 WHERE `entry` = 21563; -- HEROIC
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1951101, 'The Botanica - Nethervine Inciter (Normal)', 0, 0),
(2156301, 'The Botanica - Nethervine Inciter (Heroic)', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1951101, 0, 30621, 0, 1, 0, 100, 1, 11700, 24800, 20500, 30200, 'The Botanica - Nethervine Inciter (Normal) - Kidney Shot on Current'),
(1951101, 1, 34616, 0, 1, 0, 100, 1, 7300, 18700, 120000, 120000, 'The Botanica - Nethervine Inciter (Normal) - Deadly Poison on Current'),
(2156301, 0, 30621, 0, 1, 0, 100, 1, 11700, 24800, 20500, 30200, 'The Botanica - Nethervine Inciter (Heroic) - Kidney Shot on Current'),
(2156301, 1, 34616, 0, 1, 0, 100, 1, 7300, 18700, 120000, 120000, 'The Botanica - Nethervine Inciter (Heroic) - Deadly Poison on Current');

-- Dreadbeast
UPDATE `creature_template` SET `SpellList` = 1617701 WHERE `entry` = 16177;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1617701, 'Karazhan - Dreadbeast', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1617701, 0, 29304, 0, 100, 0, 100, 1, 9000, 17000, 21000, 27000, 'Karazhan - Dreadbeast - Howl of the Broken Hills on Random'), -- Had Aura not Present Flag
(1617701, 1, 29561, 0, 1, 0, 100, 1, 0, 10000, 7000, 11000, 'Karazhan - Dreadbeast - Cleave on Current');

-- Sister of Torment
UPDATE `creature_template` SET `SpellList` = 2469701 WHERE `entry` = 24697; -- NORMAL
UPDATE `creature_template` SET `SpellList` = 2556301 WHERE `entry` = 25563; -- HEROIC
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2469701, 'Magisters'' Terrace - Sister of Torment (Normal)', 0, 0),
(2556301, 'Magisters'' Terrace - Sister of Torment (Heroic)', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2469701, 0, 44640, 0, 1, 0, 100, 1, 4000, 12000, 5000, 17000, 'Magisters'' Terrace - Sister of Torment (Normal) - Lash of Pain on Current'),
(2556301, 0, 44640, 0, 1, 0, 100, 1, 4000, 12000, 5000, 17000, 'Magisters'' Terrace - Sister of Torment (Heroic) - Lash of Pain on Current');

-- Wild Fel Stalker
UPDATE `creature_template` SET `SpellList` = 1884701 WHERE `entry` = 18847;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1884701, 'Gruul''s Lair - Wild Fel Stalker', 0, 0);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1884701, 0, 33086, 0, 1, 0, 100, 1, 4000, 8000, 6000, 12000, 'Gruul''s Lair - Wild Fel Stalker - Wild Bite on Current');

