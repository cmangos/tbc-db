-- Wyrmcult Zealot c.21382
-- ------------------------

UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(6/7), ModelId1=20251, ModelId2=20252, ModelId3=20253, ModelId4=20254 WHERE entry=21382;
UPDATE creature SET equipment_id=0 WHERE id=21382;

-- ----------------------------
-- Gossip
UPDATE creature_template SET GossipMenuId=8446 WHERE entry=21382;

DELETE FROM `gossip_menu` WHERE `entry`=8446;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8446, 10553, 0, 0);

DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=21382);
-- Add missing texts and emotes
UPDATE `npc_text` SET `text0_1`='Hello, overseer.  Ready for the attack?', `prob0`='1', `em0_0`='6', `text1_0`='Something you need, sir?', `text1_1`='Something you need, sir?', `prob1`='1', `em1_0`='6', `em1_1`='6', `text2_0`='You don\'t look well, overseer.', `text2_1`='You don\'t look well, overseer.', `prob2`='1', `em2_0`='1', `em2_1`='1', `text3_0`='I heard that Kolphis Darkscale has been looking for you.', `text3_1`='I heard that Kolphis Darkscale has been looking for you.', `prob3`='1', `em3_0`='1', `em3_1`='1' WHERE `ID`=10553;

-- ----------------------------
-- Movement
UPDATE creature SET position_x=3217.18, position_y=7114.25, position_z=173.375, orientation=4.07617, MovementType=2, spawndist=0 WHERE guid=74828 AND id=21382;
DELETE FROM `creature_movement` WHERE `id`=74828;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74828,1,3205.259,7098.11,173.7204,0,0,0),
(74828,2,3217.018,7114.113,173.3271,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74829;
UPDATE creature SET position_x=3179.96, position_y=7107.14, position_z=179.025, orientation=3.19856, MovementType=2, spawndist=0 WHERE guid=74829 AND id=21382;
DELETE FROM `creature_movement` WHERE `id`=74829;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74829,3,3171.96,7106.687,177.3002,0,0,0),
(74829,4,3161.611,7105.777,173.9179,0,0,0),
(74829,1,3171.837,7106.679,177.2579,0,0,0),
(74829,2,3179.917,7107.151,178.9415,0,0,0);

UPDATE creature SET position_x=3155.82, position_y=7086.58, position_z=168.071, orientation=5.29159, MovementType=2, spawndist=0 WHERE guid=74830 AND id=21382;
DELETE FROM `creature_movement` WHERE `id`=74830;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74830,1,3162.644,7076.143,163.9581,0,0,0),
(74830,2,3169.535,7066.117,163.0724,0,0,0),
(74830,3,3162.644,7076.143,163.9581,0,0,0),
(74830,4,3156.11,7086.725,168.0445,0,0,0),
(74830,5,3169.535,7066.117,163.0724,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74831;
DELETE FROM `creature_movement` WHERE `id`=74831;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74831,1,3209.977,7136.684,173.4737,0,0,0),
(74831,2,3217.154,7116.956,173.3271,0,0,0);

UPDATE creature SET position_x=3188.278, position_y=7112.896, position_z=178.2253, orientation=0.1851106, MovementType=2, spawndist=0 WHERE guid=74832 AND id=21382;
DELETE FROM `creature_movement` WHERE `id`=74832;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74832,1,3199.287,7114.958,174.8549,0,0,0),
(74832,2,3215.891,7116.206,173.2328,0,0,0),
(74832,3,3199.074,7115.339,175.0995,0,0,0),
(74832,4,3188.278,7112.896,178.2253,0,0,0);

UPDATE creature SET position_x=3115.67, position_y=7125.29, position_z=153.064, orientation=2.34611, MovementType=2, spawndist=0 WHERE guid=74833 AND id=21382;
DELETE FROM `creature_movement` WHERE `id`=74833;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74833,4,3110.665,7130.391,152.55,0,0,0),
(74833,1,3100.439,7135.063,151.3206,0,0,0),
(74833,2,3110.665,7130.391,152.55,0,0,0),
(74833,3,3116.164,7125.376,153.0238,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74834;
DELETE FROM `creature_movement` WHERE `id`=74834;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74834,1,3095.883,7060.127,159.8843,0,0,0),
(74834,2,3087.182,7059.214,158.0806,0,0,0),
(74834,3,3080.849,7061.379,156.9501,0,0,0),
(74834,4,3087.026,7059.197,158.0682,0,0,0),
(74834,5,3095.883,7060.127,159.8843,0,0,0),
(74834,6,3106.532,7065.835,160.3389,0,0,0);

UPDATE creature SET position_x=3091.259, position_y=7137.892, position_z=150.1653, orientation=3.430724, MovementType=2, spawndist=0 WHERE guid=74835 AND id=21382;
DELETE FROM `creature_movement` WHERE `id`=74835;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74835,1,3091.259,7137.892,150.1653,0,0,0),
(74835,2,3082.319,7135.679,149.2485,0,0,0),
(74835,3,3074.019,7129.402,148.6359,0,0,0),
(74835,4,3082.319,7135.679,149.2485,0,0,0);

