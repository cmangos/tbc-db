-- Add missing spawns
SET @CGUID := 135968;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+8;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(@CGUID+0,16539,532,1,0,0,-11220.47,-1700.023,179.2368,4.56547,7200,7200,7,0,27945,18930,0,1), -- Homunculus (Illhoof)
(@CGUID+1,16539,532,1,0,0,-11219.33,-1690.523,179.2438,4.758718,7200,7200,7,0,27945,18930,0,1), -- Homunculus (Illhoof)
(@CGUID+2,16539,532,1,0,0,-11214.55,-1685.351,179.2576,3.998988,7200,7200,7,0,27945,18930,0,1), -- Homunculus (Illhoof)
(@CGUID+3,16539,532,1,0,0,-11212.87,-1688.734,179.2561,6.176843,7200,7200,7,0,27945,18930,0,1), -- Homunculus (Illhoof)
(@CGUID+4,16539,532,1,0,0,-11219.8,-1684.131,179.251,0.572654,7200,7200,7,0,27945,18930,0,1), -- Homunculus (Illhoof)
(@CGUID+5,16539,532,1,0,0,-11228.3,-1685.874,179.2368,3.0028,7200,7200,7,0,27945,18930,0,1), -- Homunculus (Illhoof)
(@CGUID+6,16539,532,1,0,0,-11217.46,-1679.75,179.26,1.838023,7200,7200,7,0,27945,18930,0,1), -- Homunculus (Illhoof)
(@CGUID+7,16539,532,1,0,0,-11227.09,-1678.512,179.2368,0.8203046,7200,7200,7,0,27945,18930,0,1), -- Homunculus (Illhoof)
(@CGUID+8,16544,532,1,0,0,-11222.62,-1708.81,290.4314,6.108652,7200,7200,0,0,73800,0,0,0); -- Etheral Thief (Just before Netherspite)

-- Link Homunculus'
DELETE FROM `creature_linking` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+7;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES 
(@CGUID+1, @CGUID+0, 3),
(@CGUID+2, @CGUID+0, 3),
(@CGUID+3, @CGUID+0, 3),
(@CGUID+4, @CGUID+0, 3),
(@CGUID+5, @CGUID+0, 3),
(@CGUID+6, @CGUID+0, 3),
(@CGUID+7, @CGUID+0, 3);

-- Ballroom spawn updates
UPDATE `creature` SET `id`=16410 WHERE `guid`=85175; -- Spectral Retainer
UPDATE `creature` SET `id`=16410 WHERE `guid`=85099; -- Spectral Retainer
UPDATE `creature` SET `id`=16406 WHERE `guid`=85176; -- Phantom Attendant
UPDATE `creature` SET `id`=16406 WHERE `guid`=85120; -- Phantom Attendant
UPDATE `creature` SET `id`=16406 WHERE `guid`=85119; -- Phantom Attendant
UPDATE `creature` SET `id`=16406 WHERE `guid`=85118; -- Phantom Attendant
UPDATE `creature` SET `id`=16406 WHERE `guid`=85098; -- Phantom Attendant
UPDATE `creature` SET `id`=16406 WHERE `guid`=85097; -- Phantom Attendant
UPDATE `creature` SET `id`=16406 WHERE `guid`=85096; -- Phantom Attendant
UPDATE `creature` SET `id`=16406 WHERE `guid`=85095; -- Phantom Attendant

-- Minor spawn fixes for Etheral Spellfilchers
UPDATE `creature` SET `position_x`=-11178.19, `position_y`=-1778.054, `position_z`=251.2536, `orientation`=4.677482 WHERE `guid`=85341;
UPDATE `creature` SET `position_x`=-11212.55, `position_y`=-1707.947, `position_z`=241.0628, `orientation`=0.1396263 WHERE `guid`=85337;
UPDATE `creature` SET `position_x`=-11223.17, `position_y`=-1686.636, `position_z`=241.0627, `orientation`=2.059489 WHERE `guid`=85338;
UPDATE `creature` SET `position_x`=-11238.66, `position_y`=-1684.178, `position_z`=290.4314, `orientation`=2.164208 WHERE `guid`=85345;

-- Add proper auras
UPDATE `creature_template_addon` SET `auras`='3417 18950' WHERE `entry`=16596; -- Stealth Detection and Thrash for Greater Fleshbeast
UPDATE `creature_template_addon` SET `auras`='18950' WHERE `entry`=16485; -- Stealth Detection for Arcane Watchman
UPDATE `creature_template_addon` SET `auras`='29908' WHERE `entry`=16491; -- Astral Bite for Mana Feeders
UPDATE `creature_template_addon` SET `auras`='18950' WHERE `entry`=16504; -- Stealth Detection for Arcane Protector
UPDATE `creature_template_addon` SET `auras`='19818' WHERE `entry`=16489; -- Double Attack (25% proc) for Chaotic Sentience
UPDATE `creature_template_addon` SET `auras`='8273 29315' WHERE `entry`=16178; -- Bonus Dodge (35%) and Phase Shift for Phase Hound
UPDATE `creature_template_addon` SET `auras`='19817' WHERE `entry`=15547; -- Double Attack (10% proc) for Spectral Chargers

UPDATE `creature_template` SET `SchoolImmuneMask`=6 WHERE `entry`=15691; -- Adds arcane immunity to Curator

