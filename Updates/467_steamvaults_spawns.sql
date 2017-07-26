-- Add stealth detection to Steamrigger and Thespia
DELETE FROM `creature_template_addon` WHERE `entry` IN (17796,17797);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`b2_0_sheath`,`b2_1_flags`,`emote`,`moveflags`,`auras`) VALUES
(17796,0,0,1,16,0,0,'18950'), -- Mekgineer Steamrigger
(17797,0,0,1,16,0,0,'18950'); -- Hydromancer Thespia

-- Fix Incorrect Spawn

-- Add new spawns
SET @CGUID := 14324;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+7;
DELETE FROM `creature` WHERE `guid`=12716; -- Recycled from previous commit
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(12716, 17802, 545, 3, 0, 0, -3.665382, -127.7664, -20.61931, 2.789331, 7200, 7200, 0, 0, 20259, 0, 0, 0), -- Coilfang Warrior: Reused GUID from instance that was previously deleted
(@CGUID+0,21338,545,3,0,0,-303.5852,-117.1385,-7.948184,4.481157,7200,7200,0,0,5589,3155,0,0), -- Coilfang Leper
(@CGUID+1,21338,545,3,0,0,-290.2025,-117.9437,-7.755558,5.05645,7200,7200,0,0,5589,3155,0,0), -- Coilfang Leper
(@CGUID+3, 17802, 545, 3, 0, 0, 14.92937, -151.9832, -22.48232, 1.320749, 7200, 7200, 0, 0, 20259, 0, 0, 0), -- Coilfang Warrior
(@CGUID+4, 17802, 545, 3, 0, 0, 27.11901, -236.3903, -22.46752, 0.5489941, 7200, 7200, 0, 0, 20259, 0, 0, 0), -- Coilfang Warrior
(@CGUID+5, 17802, 545, 3, 0, 0, 18.17225, -209.7392, -22.39794, 1.81985, 7200, 7200, 0, 0, 20259, 0, 0, 0), -- Coilfang Warrior
(@CGUID+6, 17802, 545, 3, 0, 0, -50.09616, -216.0611, -18.59793, 2.298971, 7200, 7200, 0, 0, 20259, 0, 0, 0), -- Coilfang Warrior
(@CGUID+7, 21694, 545, 3, 0, 0, 70.32684, -149.6408, -19.411, 4.45116, 7200, 7200, 10, 0, 45409, 0, 0, 1); -- Bog Overlord

-- Update existing spawns
UPDATE `creature` SET `position_x`=-328.5612, `position_y`=-126.0686, `position_z`=-8.013614, `orientation`=1.867502 WHERE `guid`=12605; -- Steamrigger Mechanic
UPDATE `creature` SET `position_x`=-286.8436, `position_y`=-157.181, `position_z`=-7.36798, `orientation`=3.237693 WHERE `guid`=116; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-293.3849, `position_y`=-155.5864, `position_z`=-7.755558, `orientation`=0.85847 WHERE `guid`=3641; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-290.2746, `position_y`=-145.399, `position_z`=-7.861793, `orientation`=0.06699084 WHERE `guid`=6439; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-288.2528, `position_y`=-149.218, `position_z`=-7.788465, `orientation`=2.818779 WHERE `guid`=12396; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-297.1776, `position_y`=-152.0959, `position_z`=-8.024758, `orientation`=4.359817 WHERE `guid`=12573; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-304.5548, `position_y`=-154.8698, `position_z`=-8.004902, `orientation`=4.276358 WHERE `guid`=12574; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-297.8405, `position_y`=-158.3451, `position_z`=-7.755558, `orientation`=1.703891 WHERE `guid`=12575; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-299.613, `position_y`=-144.5595, `position_z`=-8.09161, `orientation`=5.907194 WHERE `guid`=12576; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-299.1191, `position_y`=-128.5424, `position_z`=-8.058114, `orientation`=5.424652 WHERE `guid`=12577; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-295.5693, `position_y`=-122.4122, `position_z`=-7.832989, `orientation`=1.340307 WHERE `guid`=12578; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-308.0782, `position_y`=-120.606, `position_z`=-8.078073, `orientation`=0.8477944 WHERE `guid`=12579; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-305.3677, `position_y`=-124.7438, `position_z`=-8.193773, `orientation`=1.295756 WHERE `guid`=12580; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-298.2531, `position_y`=-116.1809, `position_z`=-7.892394, `orientation`=4.483209 WHERE `guid`=12581; -- Coilfang Leper
UPDATE `creature` SET `position_x`=-306.8862, `position_y`=-105.9646, `position_z`=-7.755558, `orientation`=5.526535 WHERE `guid`=12670; -- Coilfang Leper
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `id`=21338; -- Coilfang Lepers should move a bit
UPDATE `creature` SET `spawndist`=10, `MovementType`=1 WHERE `id`=21694; -- Updates movement for Bog Overlords

-- Add missing emotes
DELETE FROM `creature_addon` WHERE `guid` IN (12605);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(12605, 0, 0, 0, 16, 69, 0, NULL); -- Steamrigger Mechanic

-- Links new Steamrigger Mechanic (17951) to Mekgineer Steamrigger (17796)
DELETE FROM `creature_linking` WHERE `guid`=12605;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(12605,12597,3),
(12605,12583,3),
(12605,12582,3);

