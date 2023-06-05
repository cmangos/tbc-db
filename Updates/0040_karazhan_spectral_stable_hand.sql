-- Spell Lists for Spectral Charger, Spectral Stallion and Spectral Stable Hand
-- Spectral Charger uses Charge on Farthest Player away (in LoS) and Fear after spell hited (confirmed on wotlk ptr)
-- Spectral Stallion using Absorb Vitality and Hoof Strike

-- Spectral Stable Hand using Knockback and Pierce Armor on his Current Target
-- When inCombat and one of the Horses (Spectral Charger, Spectral Stallion) is also infight, buff them and if they fall below 50% also heal them. Using new unit_condition and combat_condition for this.
-- ToDO: New System, need some good ruling for stringID and unit/combat_condition Id

-- New target for Farthest Player away
-- SELECT_FLAG_IN_LOS - SELECT_FLAG_PLAYER 
DELETE FROM `creature_spell_targeting` WHERE `Id` = 110;
INSERT INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES
(110, 1, 4, 0, 3, "Attack - ATTACKING_TARGET_FARTHEST_AWAY - SELECT_FLAG_IN_LOS & SELECT_FLAG_PLAYER");

UPDATE `creature_template` SET `SpellList` = 1554701 WHERE `entry` = 15547;
UPDATE `creature_template` SET `SpellList` = 1554801 WHERE `entry` = 15548;
UPDATE `creature_template` SET `SpellList` = 1555101 WHERE `entry` = 15551;

DELETE FROM `creature_spell_list` WHERE `Id` IN (1554701, 1554801, 1555101);
-- Spell List for Spectral Charger
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1554701, 1, 29320, 0, 110, 0, 100, 0, 5000, 20000, 30000, 40000, "Spectral Charger - Charge - ATTACKING_TARGET_FARTHEST_AWAY - SELECT_FLAG_IN_LOS & SELECT_FLAG_PLAYER"), 
-- Spell List for Spectral Stallion
(1554801, 1, 29323, 0, 2, 0, 100, 0, 6000, 18000, 6000, 18000 , "Spectral Stallion - Cast Absorb Vitality - on self"),
(1554801, 2, 29577, 0, 1, 0, 100, 0, 6000, 18000, 10000, 20000, "Spectral Stallion - Cast Hoof Strike - on current");
-- Spell List for Spectral Stable Hand
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1555101, 1, 29339, 1, -5320001, 0, 0, 100, 0, 10000, 10000, 20000, 30000, "Spectral Stable Hand - Cast Healing Touch - condition friendly missing 50%"),
(1555101, 2, 29340, 1, -5320002, 0, 0, 100, 0, 6000, 18000, 10000, 20000, "Spectral Stable Hand - Cast Whip Rage - condition friendly missing buff"),
(1555101, 3, 18812, 0, -1, 1, 0, 100, 0, 6000, 15000, 10000, 2000, "Spectral Stable Hand - Cast Knockback - on current"),
(1555101, 4, 6016, 0, -1, 1, 0, 100, 0, 6000, 18000, 45000, 45000, "Spectral Stable Hand - Cast Pierce Armor - on current");

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1554701, 1554801, 1555101);
INSERT INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1554701, "Karazhan - Spectral Charger", 0, 0),
(1554801, "Karazhan - Spectral Stallion", 0, 0),
(1555101, "Karazhan - Spectral Stable Hand", 80, 0);

-- Unit Condition for Spectral Stable Hand
DELETE FROM `unit_condition` WHERE `Id` IN (-5320001, -5320002);
INSERT INTO `unit_condition` (Id,Variable_0,Op_0,Value_0,Variable_1,Op_1,Value_1) VALUES
(-5320001,75,1,5320001,12,4,50),	-- STRING_ID EQUAL_TO 5320001, HEALTH_PERCENT, LESS_THAN_OR_EQUAL_TO 50
(-5320002,75,1,5320001,76,2,29340); -- STRING_ID EQUAL_TO 5320001, HAS_AURA NOT_EQUAL_TO 29340

  -- Combat Condition for Spectral Stable Hand
DELETE FROM `combat_condition` WHERE `Id` IN (-5320001, -5320002); -- why not use "EQUAL_TO" as long as one unit matches the condition it will be cast.
INSERT INTO `combat_condition` (Id, FriendConditionID_0,FriendConditionOp_0,FriendConditionCount_0) VALUES
(-5320001,-5320001,6,1), -- STRING_ID EQUAL_TO 5320001, HEALTH_PERCENT, LESS_THAN_OR_EQUAL_TO 50 & Friend GREATER_THAN_OR_EQUAL_TO 1
(-5320002,-5320002,6,1); -- STRING_ID EQUAL_TO 5320001, HAS_AURA NOT_EQUAL_TO 29340 & Friend GREATER_THAN_OR_EQUAL_TO 1

-- Add StringId to Spectral Charger and Spectral Stallion
UPDATE `creature_template` SET `StringId1` = 5320001 WHERE `entry` IN (15547, 15548);

-- StringID
DELETE FROM `string_id` WHERE `Id` = 5320001;
INSERT INTO `string_id` (Id, Name) VALUES
(5320001, 'Karazhan - Spectral Charger 15547 | Spectral Stallion 15548 - UnitCondition - Combat Condition');

-- Spell Script using StringId
DELETE FROM `spell_script_target` WHERE `entry` IN (29339, 29340);
INSERT INTO `spell_script_target` (entry, type, targetEntry, inverseEffectMask) VALUES
(29339, 5, 5320001, 0),
(29340, 5, 5320001, 0);