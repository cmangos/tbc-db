-- Fixes for Brutallus RP, Felmyst & Twins & M'uru

-- Fix brutallus targeting spells
DELETE FROM spell_script_target WHERE entry IN(46610,46638);
INSERT INTO spell_script_target VALUES
('46610', '4', '5800027', '0'),
('46638', '4', '5800027', '0');

-- handled in c++ instead - export when swp export is done
UPDATE creature_template SET InhabitType=3 WHERE entry IN(24895);

-- correct movement & unitflags for felmyst encounter
UPDATE creature_template SET InhabitType=1 WHERE entry IN(25038);
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(25265);

DELETE FROM spell_script_target WHERE entry IN(45586,45622,45623);
INSERT INTO spell_script_target VALUES
-- left side
(45586, 3, 5800039, 0),
(45622, 3, 5800026, 0),
(45623, 3, 5800022, 0),
-- right side
(45586, 3, 5800040, 0),
(45622, 3, 5800029, 0),
(45623, 3, 5800021, 0);

DELETE FROM spell_script_target WHERE entry IN(45585,45633,45635);
INSERT INTO spell_script_target VALUES
(45585, 3, 5800040, 0),
(45585, 3, 5800034, 0),
(45585, 3, 5800052, 0),
(45585, 3, 5800051, 0),
(45585, 3, 5800043, 0),
(45585, 3, 5800033, 0),
(45585, 3, 5800041, 0),
(45585, 3, 5800056, 0),
(45585, 3, 5800048, 0),
(45585, 3, 5800059, 0),
(45585, 3, 5800058, 0),
(45585, 3, 5800031, 0),
(45585, 3, 5800032, 0),
(45585, 3, 5800045, 0),
(45585, 3, 5800037, 0),
(45585, 3, 5800044, 0),
(45585, 3, 5800038, 0),
(45585, 3, 5800035, 0),
(45585, 3, 5800042, 0),
(45585, 3, 5800055, 0),
(45585, 3, 5800036, 0),
(45585, 3, 5800050, 0),
(45585, 3, 5800049, 0),
(45585, 3, 5800054, 0),
(45585, 3, 5800039, 0);

INSERT INTO spell_script_target VALUES
(45633, 3, 5800029, 0),
(45633, 3, 5800030, 0),
(45633, 3, 5800024, 0),
(45633, 3, 5800028, 0),
(45633, 3, 5800027, 0),
(45633, 3, 5800025, 0),
(45633, 3, 5800023, 0),
(45633, 3, 5800026, 0);

INSERT INTO spell_script_target VALUES
(45635, 3, 5800021, 0),
(45635, 3, 5800020, 0),
(45635, 3, 5800019, 0),
(45635, 3, 5800018, 0),
(45635, 3, 5800017, 0),
(45635, 3, 5800016, 0),
(45635, 3, 5800015, 0),
(45635, 3, 5800022, 0);

-- Do not use generic instance bind on eredar twins
-- Eredar Twins - Instance Save must be saved in cpp because only second one saves
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x00000001 WHERE entry IN(25165,25166);

-- Fix encounter credit on twins kill
-- dependant on core export
DELETE FROM instance_encounters WHERE entry = 727;
INSERT INTO instance_encounters(entry, creditType, creditEntry, lastEncounterDungeon) VALUES
('727', '2', '727', '0');

-- Remove spell 46609 dbscript used in SWP
-- moved to core spellscript
DELETE FROM dbscripts_on_spell WHERE id = 46609;

