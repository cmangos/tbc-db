-- Void Spawner - Quest - Warp Rifts 20143
UPDATE `creature_template` SET `ModelId1` = 18684, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (9.02778 / 7), `PetSpellDataId` = 0, `MovementType` = 0 WHERE `entry` = 20143;

-- Void Spawner XL 19336
UPDATE `creature_template` SET `ModelId1` = 18685, `ModelId2` = 0, `UnitFlags` = 33554688, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (9.02778 / 7), `PetSpellDataId` = 0, `MovementType` = 0 WHERE `entry` = 19336;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id`  = 19336;

