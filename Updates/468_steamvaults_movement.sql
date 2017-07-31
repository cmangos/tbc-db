-- The Steamvault - Movement and more linking

-- Pathing for Coilfang Warrior: 17802
SET @GUID := 14327;
UPDATE `creature` SET `MovementType`=2,`position_x`=15.2288,`position_y`=-150.8107,`position_z`=-22.49462 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,15.2288,-150.8107,-22.49462,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,12.81433,-155.5219,-22.46692,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,15.2288,-150.8107,-22.49462,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,12.74636,-145.2813,-22.2508,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz 15.2288 -150.8107 -22.49462

-- Pathing for Coilfang Warrior: 17802
SET @GUID := 1559;
UPDATE `creature` SET `MovementType`=2,`position_x`=4.971299,`position_y`=-246.3245,`position_z`=-22.85225 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,4.971299,-246.3245,-22.85225,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,6.269298,-251.7959,-22.84753,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,10.12904,-253.1206,-22.36585,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz 4.971299 -246.3245 -22.85225

-- Pathing for Coilfang Warrior: 17802
SET @GUID := 14328;
UPDATE `creature` SET `MovementType`=2,`position_x`=46.50181,`position_y`=-231.6851,`position_z`=-22.64817 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,46.50181,-231.6851,-22.64817,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,35.25947,-231.4105,-22.64964,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,22.99895,-237.7491,-22.41042,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,35.25947,-231.4105,-22.64964,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz 46.50181 -231.6851 -22.64817

-- Pathing for Coilfang Warrior: 17802
SET @GUID := 14329;
UPDATE `creature` SET `MovementType`=2,`position_x`=6.908176,`position_y`=-199.4809,`position_z`=-22.44547 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,6.908176,-199.4809,-22.44547,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,16.10214,-201.5998,-22.42243,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,18.96835,-212.3787,-22.47531,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,16.10214,-201.5998,-22.42243,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz 6.908176 -199.4809 -22.44547

-- Pathing for Coilfang Warrior: 17802
SET @GUID := 12716;
UPDATE `creature` SET `MovementType`=2,`position_x`=-22.13617,`position_y`=-122.8738,`position_z`=-21.95291 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-22.13617,-122.8738,-21.95291,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-13.54409,-124.1351,-22.1869,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-4.640467,-127.206,-20.80397,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-12.20110,-124.506,-21.90012,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz -22.13617 -122.8738 -21.95291

-- Pathing for Coilfang Warrior: 17802
SET @GUID := 12689;
UPDATE `creature` SET `MovementType`=2,`position_x`=27.51846,`position_y`=-255.1286,`position_z`=-23.41327 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,27.51846,-255.1286,-23.41327,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,21.14762,-258.7614,-22.28909,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,19.74111,-264.3494,-22.03192,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,21.14762,-258.7614,-22.28909,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz 27.51846 -255.1286 -23.41327

-- Pathing for Coilfang Warrior: 17802
SET @GUID := 12711;
UPDATE `creature` SET `MovementType`=2,`position_x`=56.08036,`position_y`=-133.796,`position_z`=-22.79697 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,56.08036,-133.796,-22.79697,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,56.42508,-125.9909,-22.71687,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,60.84472,-121.4647,-22.63287,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,56.42508,-125.9909,-22.71687,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz 56.08036 -133.796 -22.79697

-- Pathing for Coilfang Warrior: 17802
SET @GUID := 1550;
UPDATE `creature` SET `MovementType`=2,`position_x`=-26.57882,`position_y`=-191.5474,`position_z`=-20.48979 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-26.57882,-191.5474,-20.48979,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-14.54234,-189.5444,-22.95425,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-11.07541,-181.2887,-23.69324,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-14.54234,-189.5444,-22.95425,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz -26.57882 -191.5474 -20.48979

-- Pathing for Coilfang Slavemaster: 17805 
SET @GUID := 12591;
UPDATE `creature` SET `MovementType`=2,`position_x`=-208.7921,`position_y`=-261.6725,`position_z`=-8.07919 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-208.7921,-261.6725,-8.07919,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-219.2351,-260.5192,-7.987996,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-225.1413,-256.872,-7.927412,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-230.4902,-249.1745,-7.86375,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,5,-225.1413,-256.872,-7.927412,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-219.2351,-260.5192,-7.987996,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-208.7921,-261.6725,-8.07919,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-202.2991,-261.688,-7.97055,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz -208.7921 -261.6725 -8.07919

-- Pathing for Coilfang Slavemaster: 17805
SET @GUID := 12587;
UPDATE `creature` SET `MovementType`=2,`position_x`=-234.9421,`position_y`=-210.618,`position_z`=-8.096731 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-234.9421,-210.618,-8.096731,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-235.1471,-228.5662,-8.121222,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-232.3906,-242.7965,-7.893366,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-235.1471,-228.5662,-8.121222,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,5,-234.9421,-210.618,-8.096731,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-234.891,-197.9498,-7.905258,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go xyz -234.9421 -210.618 -8.096731

-- Adds linking to Coilfang Lepers
DELETE FROM `creature_linking` WHERE `guid` IN (12574,12575,3641,116,12396,6439,12576,12577,12578,14325,14324,12580,12579,12670);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(12574,12573,3), -- First Group of Lepers
(12575,12573,3),
(3641,12573,3),
(116,12573,3),
(12396,12573,3),
(6439,12573,3),
(12576,12573,3),
(12577,12581,3), -- Second Group of Lepers
(12578,12581,3),
(14325,12581,3),
(14324,12581,3),
(12580,12581,3),
(12579,12581,3),
(12670,12581,3);

