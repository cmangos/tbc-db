-- Spell Lists for Spectral Charger, Spectral Stallion and Spectral Stable Hand
-- Spectral Charger uses Charge on Farthest Player away (in LoS) and Fear after spell hited (confirmed on wotlk ptr)
-- Süectral Stallion using Absorb Vitality and Hoof Strike

DELETE FROM creature_spell_list WHERE Id IN (1554701, 1554801, 1555101);
-- Spell List for Spectral Charger
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1554701, 1, 29320, 0, 110, 0, 100, 0, 10500, 20500, 38700, 46000, "Spectral Charger - Charge - on Farthest away"), 
-- Spell List for Spectral Stallion
(1554801, 1, 29323, 0, 2, 0, 100, 0, 6000, 14500, 6000, 19500 , "Spectral Stallion - Cast Absorb Vitality - on self"),
(1554801, 2, 29577, 0, 1, 0, 100, 0, 7200, 19400, 1200, 36000, "Spectral Stallion - Cast Hoof Strike - on current"), 
-- Spell List for Spectral Stable Hand
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1555101, 1, 29339, 1, -10000, 0, 0, 100, 0, 4000, 8000, 45000, 48000, "Spectral Stable Hand - Cast Healing Touch - on missing 50%"),
(1555101, 2, 29340, 1, -10001, 0, 0, 100, 0, 8450, 14550, 10900, 37550, "Spectral Stable Hand - Cast Whip Rage - on friendly missing buff skip self"),
(1555101, 3, 18812, 0, -1, 1, 0, 100, 0, 9500, 13500, 14500, 18500, "Spectral Stable Hand - Cast Knockback - on current"),
(1555101, 4, 6016, 0, -1, 1, 0, 100, 0, 7000, 21500, 24000, 63500, "Spectral Stable Hand - Cast Pierce Armor - on current");
  
DELETE FROM creature_spell_list_entry WHERE Id IN (1554701, 1554801, 1555101);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1554701, "Karazhan - Spectral Charger", 0, 0);
(1554801, "Karazhan - Spectral Stallion", 0, 0);
(1555101, "Karazhan - Spectral Stable Hand", 80, 0);
  
UPDATE creature_template SET SpellList = 1554701 WHERE entry = 15547;
UPDATE creature_template SET SpellList = 1554801 WHERE entry = 15548;
UPDATE creature_template SET SpellList = 1555101 WHERE entry = 15551;
 
-- New target for Farthest Player away
-- SELECT_FLAG_IN_LOS - SELECT_FLAG_PLAYER 
DELETE FROM creature_spell_targeting WHERE Id = 110;
INSERT INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES 
(110, 1, 4, 0, 3, "Attack - Farthest away - Player only, in LoS");

-- Unit Condition for Spectral Stable Hand
DELETE FROM unit_condition WHERE Id IN (-10000, -10001);
INSERT INTO unit_condition(Id,Variable_0,Op_0,Value_0,Variable_1,Op_1,Value_1) VALUES
(-10000,12,4,50,75,1,10000), -- target = string id and health less or equal then 50       
(-10001,75,1,10000,76,2,29340); -- target = string id and aura 29340
  
  -- Combat Condition for Spectral Stable Hand
DELETE FROM combat_condition WHERE Id IN (-10000, -10001);
INSERT INTO combat_condition(Id, FriendConditionID_0,FriendConditionOp_0,FriendConditionCount_0) VALUES
(-10000,-10000,6,1), -- when at least 1 target with condition -10000 is found
(-10001,-10001,6,1); -- when at least 1 target with condition -10001 is found
 
-- Add StringId to Spectral Charger and Spectral Stallion
UPDATE creature_template SET StringId1 = 10000 WHERE entry IN (15547, 15548);
 
-- StringID
DELETE FROM string_id WHERE Id = 10000;
INSERT INTO `string_id` (Id, Name) VALUES 
(10000, 'Karazhan - Spectral Stable Hand - UnitCondition - Combat Condition');
 
-- Spell Script using StringId
DELETE FROM spell_script_target WHERE entry IN (29339, 29340);
INSERT INTO `spell_script_target` (entry, type, targetEntry, inverseEffectMask) VALUES 
(29339, 5, 10000, 0),
(29340, 5, 10000, 0);