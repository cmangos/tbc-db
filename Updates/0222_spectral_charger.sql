DELETE FROM `creature_spell_targeting` WHERE `Id` = 111;
INSERT INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES
(111, 1, 4, 0, 3, "Attack - ATTACKING_TARGET_FARTHEST_AWAY - SELECT_FLAG_IN_LOS & SELECT_FLAG_PLAYER");

-- Spectral Charger - Karazhan
UPDATE `creature_spell_list` SET `TargetId`='111' WHERE Id = '1554701' AND SpellId = '29320';