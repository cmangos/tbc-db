-- Wyrmcult Acolyte c.21383
-- 5 spawns. 4 with waypoints, 1 idle
-- ------------------------

UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(6.94444/7), ModelId1=20256, ModelId2=20257, ModelId3=20258, ModelId4=20255 WHERE entry=21383;
UPDATE creature SET equipment_id=0 WHERE id=21383;
UPDATE creature SET MovementType=0, spawndist=0 WHERE guid=74836;

-- ----------------------------
-- Gossip
UPDATE creature_template SET GossipMenuId=8446 WHERE entry=21383;

DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=21383);

-- ----------------------------
-- Movement
UPDATE creature SET position_x=3157.88, position_y=7104.82, position_z=172.588, orientation=3.72611, MovementType=2, spawndist=0 WHERE guid=74837 AND id=21383;
DELETE FROM `creature_movement` WHERE `id`=74837;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74837,1,3150.667,7100.045,170.8703,0,0,0),
(74837,2,3152.839,7089.232,169.0076,0,0,0),
(74837,3,3150.667,7100.045,170.8703,0,0,0),
(74837,4,3158.099,7105.035,172.5997,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74838;
DELETE FROM `creature_movement` WHERE `id`=74838;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74838,1,3168.145,7031.896,161.999,0,0,0),
(74838,2,3164.764,7044.397,162.1787,0,0,0),
(74838,3,3168.145,7031.896,161.999,0,0,0),
(74838,4,3166.752,7019.055,161.9951,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74839;
DELETE FROM `creature_movement` WHERE `id`=74839;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74839,1,3139.827,7077.322,156.3494,0,0,0),
(74839,2,3150.679,7066.649,160.6553,0,0,0),
(74839,3,3139.827,7077.322,156.3494,0,0,0),
(74839,4,3133.614,7091.098,154.7362,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74840;
DELETE FROM `creature_movement` WHERE `id`=74840;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74840,1,3056.036,7113.967,151.8026,0,0,0),
(74840,2,3063.473,7121.625,150.111,0,0,0),
(74840,3,3071.997,7128.004,148.548,0,0,0),
(74840,4,3063.473,7121.625,150.111,0,0,0);

