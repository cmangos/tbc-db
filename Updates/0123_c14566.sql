-- Correct Default MovementType for Ancient Equine Spirit 14566
UPDATE `creature_template` SET `SpeedRun` = (9.7 / 7), `MovementType` = 2 WHERE `entry` = 14566;

