-- Ar'kelos spell_list
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1949401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1949401, 'Netherstorm - Ar\'kelos', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 1949401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1949401, 1, 11975, 0, -1, 2, 0, 100, 0, 8000, 11000, 12000, 15000, 'Ar\'kelos - Fel Arcane Explosion on self');

UPDATE `creature_template` SET `SpellList` = 1949401 WHERE `entry` = 19494;

-- Update spawn positions (sniffed) and leashing (custom?) to Ar'kelos
UPDATE creature SET position_x = 2243.2637, position_y = 2243.139, position_z = 101.55865, orientation = 4.78231 WHERE guid = 69855;
UPDATE creature_template SET Leash = 20 WHERE entry = 19494;

-- also correct waypoints to sniffed wps
DELETE FROM creature_movement_template WHERE entry = 19494;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(19494,0,1,2240.6118,2231.969,101.74296,100,0,0),
(19494,0,2,2235.4314,2232.6965,101.36228,100,0,0),
(19494,0,3,2234.1743,2236.4172,101.126976,100,0,0),
(19494,0,4,2237.611,2241.5422,101.145386,100,0,0),
(19494,0,5,2241.3745,2242.135,101.37907,100,0,0),
(19494,0,6,2243.6091,2240.113,101.60989,100,0,0),
(19494,0,7,2243.7366,2236.3936,101.77293,100,0,0);


     