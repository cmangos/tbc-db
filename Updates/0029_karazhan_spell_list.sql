-- ====================================
-- Karazhan creature_ai rework into creature_spell_list
-- ====================================

-- Spectral Charger - 15547
DELETE FROM creature_spell_list WHERE Id = 1554701;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1554701, 1, 29320, 0, 110, 0, 100, 0, 10500, 20500, 38700, 46000, "Spectral Charger - Charge - on Farthest away");

DELETE FROM creature_spell_targeting WHERE Id = 110;
INSERT INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES 
(110, 1, 4, 0, 1, "Attack - Farthest away - in LoS");

DELETE FROM creature_spell_list_entry WHERE Id = 1554701;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1554701, "Karazhan - Spectral Charger", 0, 0);

UPDATE creature_template SET SpellList = '1554701' WHERE entry = '15547';

-- Spectral Stallion - 15548
DELETE FROM creature_spell_list WHERE Id = 1554801;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1554801, 1, 29323, 0, 2, 0, 100, 0, 6000, 14500, 6000, 19500 , "Spectral Stallion - Cast Absorb Vitality - on self"),
(1554801, 2, 29577, 0, 1, 0, 100, 0, 7200, 19400, 1200, 36000, "Spectral Stallion - Cast Hoof Strike - on current");

DELETE FROM creature_spell_list_entry WHERE Id = 1554801;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1554801, "Karazhan - Spectral Stallion", 0, 0);

UPDATE creature_template SET SpellList = '1554801' WHERE entry = '15548';

-- Spectral Stable Hand - 15551
DELETE FROM creature_spell_list WHERE Id = 1555101;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1555101, 3, 18812, 0, 1, 0, 100, 0, 9500, 13500, 14500, 18500, "Spectral Stable Hand - Cast Knockback - on current"),
(1555101, 4, 6016, 0, 1, 0, 100, 0, 7000, 21500, 24000, 63500, "Spectral Stable Hand - Cast Pierce Armor - on current");

DELETE FROM creature_spell_list_entry WHERE Id = 1555101;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1555101, "Karazhan - Spectral Stable Hand", 0, 0);

UPDATE creature_template SET SpellList = '1555101' WHERE entry = '15551';

-- Spectral Apprentice - 16389
DELETE FROM creature_spell_list WHERE Id = 1638901;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1638901, 1, 29618, 0, 1, 0, 100, 0, 1200, 3000, 4000, 7000, "Spectral Apprentice - Cast Burning Brand - on current");

DELETE FROM creature_spell_list_entry WHERE Id = 1638901;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1638901, "Karazhan - Spectral Apprentice", 0, 0);

UPDATE creature_template SET SpellList = '1638901' WHERE entry = '16389';

-- Spectral Servent - 16407
DELETE FROM creature_spell_list WHERE Id = 1640701;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1640701, 1, 29540, 0, 111, 0, 100, 0, 5000, 12000, 12000, 21000, "Spectral Servent -  Cast Curse of Past Burdens - on current - aura not present");

DELETE FROM creature_spell_list_entry WHERE Id = 1640701;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1640701, "Karazhan - Spectral Servent", 0, 0);

DELETE FROM creature_spell_targeting WHERE Id = 111;
INSERT INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES 
(111, 1, 1, 0, 512, "Attack - Current - Aura not Present");

UPDATE creature_template SET SpellList = '1640701' WHERE entry = '16407';

-- Spectral Sentry 16424
DELETE FROM creature_spell_list WHERE Id = 1642401;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1642401, 1, 29576, 0, 1, 0, 100, 0, 6000, 10000, 11000, 14000, "Spectral Sentry - Multi Shot - on Current"),
(1642401, 2, 29575, 2, 1, 0, 100, 0, 1100, 2400, 2400, 4000, "Spectral Sentry - Shoot - on Current");

DELETE FROM creature_spell_list_entry WHERE Id = 1642401;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1642401, "Karazhan - Spectral Sentry", 0, 70);

UPDATE creature_template SET SpellList = '1642401' WHERE entry = '16424';

-- Phantom Guardsman 16425
DELETE FROM creature_spell_list WHERE Id = 1642501;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1642501, 1, 29684, 0, 1, 0, 100, 0, 6500, 13500, 11000, 23000, "Phantom Guardsman - Shield Slam - on Current");

DELETE FROM creature_spell_list_entry WHERE Id = 1642501;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1642501, "Karazhan - Phantom Guardsman", 0, 0);

UPDATE creature_template SET SpellList = '1642501' WHERE entry = '16425';

-- Spectral Chef 16411
DELETE FROM creature_spell_list WHERE Id = 1641101;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1641101, 1, 29665, 0, 1, 0, 100, 0, 4000, 8000, 6000, 10000, "Spectral Chef - Cleave - on Current"),
(1641101, 2, 29667, 0, 1, 0, 100, 0, 8000, 13500, 12000, 15000, "Spectral Chef - Hamstring - on Current"),

DELETE FROM creature_spell_list_entry WHERE Id = 1641101;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1641101, "Karazhan - Spectral Chef", 0, 0);

UPDATE creature_template SET SpellList = '1641101' WHERE entry = '16411';

-- Ghostly Baker 16412
DELETE FROM creature_spell_list WHERE Id = 1641201;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1641201, 1, 29676, 0, 1, 0, 100, 0, 4000, 8000, 7000, 12000, "Ghostly Baker - Cast Rolling Pin - on Current"),
(1641201, 2, 29675, 0, 112, 0, 100, 0, 5000, 9000, 12000, 18000, "Ghostly Baker - Cast Roast - Random Aura not Present"),

DELETE FROM creature_spell_list_entry WHERE Id = 1641201;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1641201, "Karazhan - Spectral Chef", 0, 0);

UPDATE creature_template SET SpellList = '1641201' WHERE entry = '16412';

DELETE FROM creature_spell_targeting WHERE Id = 111;
INSERT INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES 
(112, 1, 0, 0, 512, "Attack - Current - Random Aura not Present");

UPDATE creature_template SET SpellList = '1641201' WHERE entry = '16412';

-- Skeletal Waiter 16415
DELETE FROM creature_spell_list WHERE Id = 1641501;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1641501, 1, 32441, 0, 111, 0, 100, 0, 12000, 9000, 21000, 30000, "Skeletal Waiter - Brittle Bones - on current - aura not present");

DELETE FROM creature_spell_list_entry WHERE Id = 1641101;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1641501, "Karazhan - Skeletal Waiter", 0, 0);

UPDATE creature_template SET SpellList = '1641501' WHERE entry = '16415';

-- Phantom Valet 16408
DELETE FROM creature_spell_list WHERE Id = 1640801;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1640801, 1, 29584, 0, 100, 0, 100, 0, 4800, 10500, 9500, 15000, "Phantom Valet - Demoralizing Shout - on current");

DELETE FROM creature_spell_list_entry WHERE Id = 1640801;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1640801, "Karazhan - Phantom Valet", 0, 0);

UPDATE creature_template SET SpellList = '1640801' WHERE entry = '16408';

-- Spectral Retainer 16410
DELETE FROM creature_spell_list WHERE Id = 1641001;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1641001, 1, 29578, 0, 0, 0, 100, 0, 7200, 14500, 9700, 14000, "Spectral Retainer - Rend - on random"),
(1641001, 2, 29578, 0, 0, 0, 101, 0, 9000, 13000, 18000, 22000, "Spectral Retainer - Oath of Fealty - on random not Tank");

DELETE FROM creature_spell_list_entry WHERE Id = 1641001;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1641001, "Karazhan - Spectral Retainer", 0, 0);

UPDATE creature_template SET SpellList = '1641001' WHERE entry = '16410';

-- Phantom Attendant 16406
DELETE FROM creature_spell_list WHERE Id = 1640601;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1640601, 1, 29586, 0, 0, 0, 1, 0, 6000, 12000, 16000, 23000, "Phantom Attendant- Kick - on current"),
(1640601, 2, 29587, 0, 0, 0, 101, 0, 9000, 13000, 18000, 23000, "Phantom Attendant - Shadow Rejuvantation - on missing 70%");

DELETE FROM creature_spell_list_entry WHERE Id = 1641001;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1640601, "Karazhan - Phantom Attendant", 80, 0);

UPDATE creature_template SET SpellList = '1640601' WHERE entry = '16406';
