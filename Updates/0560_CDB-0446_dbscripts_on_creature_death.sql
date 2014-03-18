-- Makes creature 14566 (Ancient Equine Spirit) move random which spawns after creature 11489 (Tendris Warpwood) is defeated in Dire Maul
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` = 14566;

