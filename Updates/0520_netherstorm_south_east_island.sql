-- ----------------
-- Netherstorm 
-- Sout East Island with Area 52 
-- ---------------


-- Bridge from Blade's Edge to netherstorm
-- Spawns
-- Also reguid them into tbc range
SET @CGUID := 5306100; -- creatures

DELETE FROM creature WHERE guid IN (70008, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819);
DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+14;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Nether Technician
(@CGUID+1, 20203, 530, 1, 3380.88, 4359.49, 123.702, 4.67748, 300, 300, 0, 0),
(@CGUID+2, 20203, 530, 1, 3383.22, 4353.67, 123.277, 1.85005, 300, 300, 0, 0),
(@CGUID+3, 20203, 530, 1, 3383.93, 4348.7, 133.665, 2.89725, 300, 300, 0, 2), -- changes orientation 
(@CGUID+4, 20203, 530, 1, 3363.62, 4343.92, 122.813, 3.31613, 300, 300, 0, 0),
(@CGUID+5, 20203, 530, 1, 3388.96, 4334.67, 124.382, 4.46804, 300, 300, 0, 0), -- talks?
(@CGUID+6, 20203, 530, 1, 3387.59, 4333.83, 122.722, 0.174533, 300, 300, 0, 0), 
(@CGUID+7, 20203, 530, 1, 3388.68, 4331.53, 122.722, 1.97222, 300, 300, 0, 0),
(@CGUID+8, 20203, 530, 1, 3353.89, 4297.43, 117.417, 2.70526, 300, 300, 0, 0),
(@CGUID+9, 20203, 530, 1, 3390.92, 4297.69, 120.882, 3.76991, 300, 300, 0, 0),
(@CGUID+10, 20203, 530, 1, 3390.34, 4292.85, 121.165, 4.90438, 300, 300, 0, 0),
(@CGUID+11, 20203, 530, 1, 3388.11, 4291.83, 121.164, 6.07375, 300, 300, 0, 0),
(@CGUID+12, 20203, 530, 1, 3394.32, 4265.35, 122.722, 0.785398, 300, 300, 0, 0),
(@CGUID+13, 20203, 530, 1, 3370.1, 4302.87, 120.501, 4.81114, 300, 300, 0, 2), -- moving
-- Netherologist Coppernickels
(@CGUID+14, 19569, 530, 1, 3392.6218, 4267.4937, 122.6924, 0.122173, 300, 300, 0, 2);

DELETE FROM creature_addon WHERE guid IN (70008, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819);

-- Waypoints
DELETE FROM creature_movement WHERE Id IN (@CGUID+3, @CGUID+13);
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- Nether Technician, changing orientation only
(@CGUID+3, 1, 3383.929,4348.6997,133.66545,0.20943951, 12000, 0), -- waittime between 12 and 15 seconds
(@CGUID+3, 2, 3383.929,4348.6997,133.66545,2.897246, 15000, 0), 
-- Nether Technician patroling around on the bridge
(@CGUID+13, 1, 3371.5881,4290.548,120.58921, 100, 0, 0),
(@CGUID+13, 2, 3373.5818,4276.3594,122.68557, 100, 0, 0),
(@CGUID+13, 3, 3373.6116,4270.8057,122.73723, 100, 0, 0),
(@CGUID+13, 4, 3369.5999,4266.858,122.79001, 100, 0, 0),
(@CGUID+13, 5, 3363.5034,4267.4834,122.84963, 100, 0, 0),
(@CGUID+13, 6, 3359.7283,4271.4673,122.12153, 100, 0, 0),
(@CGUID+13, 7, 3358.567,4282.396,117.349205, 100, 0, 0),
(@CGUID+13, 8, 3356.5632,4296.718,117.34626, 100, 0, 0),
(@CGUID+13, 9, 3354.714,4312.0186,117.46164, 100, 0, 0),
(@CGUID+13, 10, 3353.747,4318.691,120.94837, 100, 0, 0),
(@CGUID+13, 11, 3355.1335,4323.807,122.80288, 100, 0, 0),
(@CGUID+13, 12, 3360.5435,4328.6865,122.635445, 100, 0, 0),
(@CGUID+13, 13, 3364.6023,4328.815,122.63519, 100, 0, 0),
(@CGUID+13, 14, 3367.982,4324.245,122.63186, 100, 0, 0),
(@CGUID+13, 15, 3370.1672,4302.1895,120.468414, 100, 0, 0);

DELETE FROM `creature_movement_template` WHERE `entry` IN (19569);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- -- Netherologist Coppernickels patroling around the bridge
(19569, 0, 1, 3392.6218, 4267.4937, 122.6924, 0.122173, 29000, 0), 
(19569, 0, 2, 3387.336,4271.7876,122.673416, 100, 0, 0),
(19569, 0, 3, 3382.5715,4283.9297,120.99102, 100, 0, 0),
(19569, 0, 4, 3385.6653,4291.7524,121.046265, 100, 0, 0),
(19569, 0, 5, 3389.064,4296.103,120.85735,0.680678427219390869,33000, 0),
(19569, 0, 6, 3381.8755,4299.739,120.177086, 100, 0, 0),
(19569, 0, 7, 3379.8218,4311.4155,120.737305, 100, 0, 0),
(19569, 0, 8, 3378.7095,4329.5312,122.634514, 100, 0, 0),
(19569, 0, 9, 3381.7964,4334.7876,122.63777, 100, 0, 0),
(19569, 0, 10, 3385.8474,4336.2344,122.63841,0.087266460061073303,28000, 0),
(19569, 0, 11, 3367.6418,4341.9956,122.694984, 100, 0, 0),
(19569, 0, 12, 3363.7769,4341.0405,122.68952,3.857177734375, 0, 0),
(19569, 0, 13, 3370.378,4350.1274,122.97476, 100, 0, 0),
(19569, 0, 14, 3376.6335,4356.977,123.6317, 100, 0, 0),
(19569, 0, 15, 3379.6829,4358.2637,123.625404,0.104719758033752441, 34000, 0),
(19569, 0, 16, 3375.633,4351.1187,123.01252, 100, 0, 0),
(19569, 0, 17, 3376.491,4336.853,122.639595, 100, 0, 0),
(19569, 0, 18, 3378.2063,4322.0347,122.62954, 100, 0, 0),
(19569, 0, 19, 3379.7979,4302.0923,120.30205, 100, 0, 0),
(19569, 0, 20, 3381.026,4289.326,120.66898, 100, 0, 0),
(19569, 0, 21, 3384.844,4272.874,122.67322, 100, 0, 0),
(19569, 0, 22, 3389.8567,4267.7715,122.70082,100, 0, 0);

-- Scripts
SET @RELAYID := 18000;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN @RELAYID+1 AND @RELAYID+15;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Nether Technician script via ACID - CGUID+4
(@RELAYID+1, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Remove EquipmentSlot'),
(@RELAYID+1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - EmoteState None'),
(@RELAYID+2, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1911, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Set EquipmentSlot'),
(@RELAYID+2, 0, 1, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Emote STATE_USESTANDING_NOSHEATHE'),
(@RELAYID+3, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1903, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Set EquipmentSlot'),
(@RELAYID+3, 0, 1, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Emote STATE_WORK_MINING');