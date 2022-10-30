-- Pathing for Razorspine Entry: 23841
UPDATE `creature` SET `spawndist`=0,`MovementType`=4,`position_x`=-2667.589,`position_y`=-4017.5479,`position_z`=1.7994823 WHERE `id`= 23841;
DELETE FROM `creature_movement_template` WHERE `entry` = 23841;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(23841, 0, 01, -2667.589,-4017.5479,1.7994823, 100, 0, 0),
(23841, 0, 02, -2682.1023,-4013.1038,7.623457, 100, 0, 0),
(23841, 0, 03, -2701.14,-4009.6328,17.22806, 100, 0, 0),
(23841, 0, 04, -2722.923,-4008.8137,29.876986, 100, 0, 0),
(23841, 0, 05, -2737.096,-4004.9934,33.11826, 100, 0, 0);

