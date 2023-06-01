-- ====================================
-- Karazhan creature_ai rework into creature_spell_list
-- ====================================

-- Spectral Charger
DELETE FROM creature_spell_list WHERE Id = 1554701;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1554701, 1, 29320, 0, 110, 0, 100, 0, 10500, 20500, 38700, 46000, "Spectral Charger - Charge - on Farthest away");

INSERT INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES 
(110, 1, 4, 0, 1, "Attack - Farthest away - in LoS");

DELETE FROM creature_spell_list_entry WHERE Id = 1554701;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1554701, "Karazhan - Spectral Charger", 0, 0);

UPDATE creature_template SET SpellList = '1554701' WHERE entry = '15547';

-- Spectral Stallion
DELETE FROM creature_spell_list WHERE Id = 1554801;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1554801, 1, 29323, 0, 2, 0, 100, 0, 6000, 14500, 6000, 19500 , "Spectral Stallion - Cast Absorb Vitality - on self"),
(1554801, 2, 29577, 0, 1, 0, 100, 0, 7200, 19400, 1200, 36000, "Spectral Stallion - Cast Hoof Strike - on current");

DELETE FROM creature_spell_list_entry WHERE Id = 1554801;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1554801, "Karazhan - Spectral Stallion", 0, 0);

UPDATE creature_template SET SpellList = '1554801' WHERE entry = '15548';

-- Spell List for Spectral Stable Hand
DELETE FROM creature_spell_list WHERE Id = 1555101;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1555101, 3, 18812, 0, 1, 0, 100, 0, 9500, 13500, 14500, 18500, "Spectral Stable Hand - Cast Knockback - on current"),
(1555101, 4, 6016, 0, 1, 0, 100, 0, 7000, 21500, 24000, 63500, "Spectral Stable Hand - Cast Pierce Armor - on current");

DELETE FROM creature_spell_list_entry WHERE Id = 1555101;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1555101, "Karazhan - Spectral Stable Hand", 0, 0);

UPDATE creature_template SET SpellList = '1555101' WHERE entry = '15551';
