-- Correct BCT for Big Bad Wolf in Karazhan and Set MoveIdle on Spawn
UPDATE `broadcast_text` SET `ChatTypeID` = 1, `SoundEntriesID1` = 9276 WHERE `Id` = 14212;
UPDATE `broadcast_text` SET `ChatTypeID` = 1, `SoundEntriesID1` = 9277 WHERE `Id` = 15153;
UPDATE `broadcast_text` SET `ChatTypeID` = 1, `SoundEntriesID1` = 9278 WHERE `Id` = 14213;
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 17521; -- does not move random on spawn

