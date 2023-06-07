-- ====================================
-- Karazhan creature_ai rework into creature_spell_list
-- ====================================

-- Spectral Apprentice - 16389
DELETE FROM creature_spell_list WHERE Id = 1638901;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1638901, 1, 29618, 0, 1, 0, 100, 0, 1200, 10000, 4000, 11000, "Spectral Apprentice - Cast Burning Brand - on current");

DELETE FROM creature_spell_list_entry WHERE Id = 1638901;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1638901, "Karazhan - Spectral Apprentice", 0, 0);

UPDATE creature_template SET SpellList = '1638901' WHERE entry = '16389';

-- Spectral Servent - 16407
DELETE FROM creature_spell_list WHERE Id = 1640701;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1640701, 1, 29540, 0, 120, 0, 100, 0, 6400, 22000, 17000, 25000, "Spectral Servent - Cast Curse of Past Burdens - ATTACKING_TARGET_TOPAGGRO - SELECT_FLAG_NOT_AURA");

DELETE FROM creature_spell_list_entry WHERE Id = 1640701;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1640701, "Karazhan - Spectral Servent", 0, 0);

UPDATE creature_template SET SpellList = '1640701' WHERE entry = '16407';

-- Spectral Sentry 16424
DELETE FROM creature_spell_list WHERE Id = 1642401;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1642401, 1, 29576, 0, 1, 0, 100, 0, 8000, 18000, 13000, 20000, "Spectral Sentry - Multi Shot - on Current"),
(1642401, 2, 29575, 2, 1, 0, 100, 0, 0, 2400, 2100, 6500, "Spectral Sentry - Shoot - on Current");

DELETE FROM creature_spell_list_entry WHERE Id = 1642401;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1642401, "Karazhan - Spectral Sentry", 0, 70);

UPDATE creature_template SET SpellList = '1642401' WHERE entry = '16424';

-- Phantom Guardsman 16425
DELETE FROM creature_spell_list WHERE Id = 1642501;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1642501, 1, 29684, 0, 1, 0, 100, 0, 6000, 14000, 11000, 18000, "Phantom Guardsman - Shield Slam - on Current");

DELETE FROM creature_spell_list_entry WHERE Id = 1642501;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1642501, "Karazhan - Phantom Guardsman", 0, 0);

UPDATE creature_template SET SpellList = '1642501' WHERE entry = '16425';

-- Phantom Hound 17067
DELETE FROM creature_spell_list WHERE Id = 1706701;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1706701, 1, 29574, 0, 1, 0, 100, 0, 5000, 11000, 6000, 11000, "Phantom Hound - Rend - on Current");

DELETE FROM creature_spell_list_entry WHERE Id = 1706701;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1706701, "Karazhan - Phantom Hound", 0, 0);

UPDATE creature_template SET SpellList = '1706701' WHERE entry = '17067';

-- Spectral Chef 16411
DELETE FROM creature_spell_list WHERE Id = 1641101;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1641101, 1, 29665, 0, 1, 0, 100, 0, 4000, 8000, 6000, 10000, "Spectral Chef - Cleave - on Current"),
(1641101, 2, 29667, 0, 1, 0, 100, 0, 8000, 13500, 12000, 15000, "Spectral Chef - Hamstring - on Current");

DELETE FROM creature_spell_list_entry WHERE Id = 1641101;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1641101, "Karazhan - Spectral Chef", 0, 0);

UPDATE creature_template SET SpellList = '1641101' WHERE entry = '16411';

-- Ghostly Baker 16412
DELETE FROM creature_spell_list WHERE Id = 1641201;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1641201, 1, 29676, 0, 1, 0, 100, 0, 4000, 8000, 7000, 12000, "Ghostly Baker - Cast Rolling Pin - on Current"),
(1641201, 2, 29675, 0, 121, 0, 100, 0, 5000, 9000, 12000, 18000, "Ghostly Baker - Cast Roast - ATTACKING_TARGET_RANDOM - SELECT_FLAG_NOT_AURA");

DELETE FROM creature_spell_list_entry WHERE Id = 1641201;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1641201, "Karazhan - Ghostly Baker", 0, 0);

UPDATE creature_template SET SpellList = '1641201' WHERE entry = '16412';

-- Skeletal Waiter 16415
DELETE FROM creature_spell_list WHERE Id = 1641501;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1641501, 1, 32441, 0, 121, 0, 100, 0, 11000, 20000, 21000, 30000, "Skeletal Waiter - Brittle Bones - ATTACKING_TARGET_RANDOM - SELECT_FLAG_NOT_AURA");

DELETE FROM creature_spell_list_entry WHERE Id = 1641101;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1641501, "Karazhan - Skeletal Waiter", 0, 0);

UPDATE creature_template SET SpellList = '1641501' WHERE entry = '16415';

-- Phantom Valet 16408
DELETE FROM creature_spell_list WHERE Id = 1640801;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1640801, 1, 29584, 0, 1, 0, 100, 0, 4800, 10500, 9500, 15000, "Phantom Valet - Demoralizing Shout - on current");

DELETE FROM creature_spell_list_entry WHERE Id = 1640801;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1640801, "Karazhan - Phantom Valet", 0, 0);

UPDATE creature_template SET SpellList = '1640801' WHERE entry = '16408';

-- Spectral Retainer 16410
DELETE FROM creature_spell_list WHERE Id = 1641001;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1641001, 1, 29578, 0, 100, 0, 100, 0, 6000, 18000, 6000, 15000, "Spectral Retainer - Rend - on random"),
(1641001, 2, 29546, 0, 101, 0, 100, 0, 5000, 15000, 30000, 40000, "Spectral Retainer - Oath of Fealty - on random not Tank");

DELETE FROM creature_spell_list_entry WHERE Id = 1641001;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1641001, "Karazhan - Spectral Retainer", 0, 0);

UPDATE creature_template SET SpellList = '1641001' WHERE entry = '16410';

-- Phantom Attendant 16406
DELETE FROM creature_spell_list WHERE Id = 1640601;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1640601, 1, 29586, 0, 1, 0, 100, 0, 5000, 13000, 22000, 32000, "Phantom Attendant - Kick - on current"),
(1640601, 2, 29587, 0, 201, 0, 100, 0, 9000, 20000, 30000, 35000, "Phantom Attendant - Shadow Rejuvantation - on missing 50% including self");

DELETE FROM creature_spell_list_entry WHERE Id = 1641001;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1640601, "Karazhan - Phantom Attendant", 0, 0);

UPDATE creature_template SET SpellList = '1640601' WHERE entry = '16406';

-- New spell_target
DELETE FROM creature_spell_targeting WHERE Id IN (120, 121);
INSERT INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES 
(120, 1, 1, 0, 512, "Attack - ATTACKING_TARGET_TOPAGGRO - SELECT_FLAG_NOT_AURA"),
(121, 1, 0, 0, 512, "Attack - ATTACKING_TARGET_RANDOM - SELECT_FLAG_NOT_AURA");