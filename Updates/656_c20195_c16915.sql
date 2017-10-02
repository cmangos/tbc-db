-- -----------------------------
-- Dagz c.20195
-- Foreman Razelcraz controls when Dagz starts moving on its path
-- -----------------------------
UPDATE creature SET MovementType=1, spawndist=5 WHERE id=20195;
DELETE FROM `creature_movement_template` WHERE `entry`=20195;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20195,1,437.6735,2897.948,52.27898,0,0,0),
(20195,2,444.0146,2892.504,52.56426,0,0,0),
(20195,3,440.6537,2890.493,52.23956,0,0,0),
(20195,4,445.6988,2885.851,53.08367,0,0,0),
(20195,5,439.0483,2882.179,53.32171,0,0,0),
(20195,6,434.2682,2882.043,52.56243,0,0,0),
(20195,7,429.7891,2880.902,52.60585,0,0,0),
(20195,8,428.1116,2879.445,52.60585,0,0,0),
(20195,9,424.1585,2882.244,52.78761,0,0,0),
(20195,10,425.5459,2887.239,52.44972,0,0,0),
(20195,11,421.2494,2888.042,52.47548,0,0,0),
(20195,12,422.2476,2891.054,51.84913,0,0,0),
(20195,13,428.3239,2892.164,52.22804,0,0,0),
(20195,14,422.0573,2894.982,52.40174,0,0,0),
(20195,15,426.2231,2895.257,52.59913,0,0,0),
(20195,16,430.7535,2896.124,52.63343,1000,2,0); -- Random movement

-- -----------------------------
-- Foreman Razelcraz c.16915
-- -----------------------------
UPDATE creature_template_addon SET emote=0 WHERE entry=16915;
UPDATE creature SET MovementType=2, spawndist=0 WHERE id=16915;
DELETE FROM `creature_movement_template` WHERE `entry`=16915;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(16915,2,434.8535,2887.963,52.42371,8000,1691501,100),
(16915,3,430.5073,2890.379,52.23085,0,0,0),
(16915,4,430.101,2886.575,52.23085,36000,1691502,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1691501,1691502);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1691501,0,1,60,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - OneShotKick',0,0,0,0),
(1691501,0,0,0,0,0,2000001443,0,0,0,0,0,0,'Foreman Razelcraz - I''ll get you working yet, you bucket of junk.',0,0,0,0),
(1691501,3,0,0,0,0,2000001446,2000001447,2000001448,0,0,0,0,'Foreman Razelcraz - Random Text',0,0,0,0),
(1691501,3,36,0,0,0,0,0,0,0,21847,76449,17,'Foreman Razelcraz - Face Fel Guard Hound',0,0,0,0),
(1691501,3,20,0,0,0,0,0,0,0,20195,15,7,'Dagz - Set Idle Movement',0,0,0,0),
(1691501,3,36,0,0,0,0,0,0,0,20195,15,3,'Dagz - Face Foreman Razelcraz',0,0,0,0),
(1691501,8,20,2,0,0,0,0,0,0,20195,15,7,'Dagz - Set Waypoint Movement',0,0,0,0),

(1691502,6,1,69,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - STATE_USESTANDING',0,0,0,0),
(1691502,11,1,0,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - ONESHOT_NONE',0,0,0,0),
(1691502,12,0,0,0,0,2000001444,0,0,0,0,0,0,'Foreman Razelcraz - It moved!  I swear, I saw it move!',0,0,0,0),
(1691502,12,3,0,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - Set Orientation',0,0,0,0.06981317),
(1691502,18,1,69,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - STATE_USESTANDING',0,0,0,0),
(1691502,24,15,34396,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - Cast Zap',0,0,0,0),
(1691502,24,0,0,0,0,2000001445,0,0,0,0,0,0,'Foreman Razelcraz - Ouch!  That''s not right.',0,0,0,0),
(1691502,24,1,0,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - ONESHOT_NONE',0,0,0,0),
(1691502,30,1,69,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - STATE_USESTANDING',0,0,0,0),
(1691502,36,1,0,0,0,0,0,0,0,0,0,0,'Foreman Razelcraz - ONESHOT_NONE',0,0,0,0);


DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001443 AND 2000001448;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001443, 'I''ll get you working yet, you bucket of junk.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Foreman Razelcraz (Entry: 16915)'),
(2000001444, 'It moved!  I swear, I saw it move!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Foreman Razelcraz (Entry: 16915)'),
(2000001445, 'Ouch!  That''s not right.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Foreman Razelcraz (Entry: 16915)'),
(2000001446, 'Oh yeah, it''s real funny isn''t it?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Foreman Razelcraz (Entry: 16915)'),
(2000001447, 'What?!  You don''t think I can do it?  I''ll show you...once I get my parts, that is.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Foreman Razelcraz (Entry: 16915)'),
(2000001448, 'Don''t you start with me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Foreman Razelcraz (Entry: 16915)');



