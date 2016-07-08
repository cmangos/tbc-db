-- Mog'gok 
SET @MOGGOK := 18475;
-- ----------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @MOGGOK);
SET @POINT := 0;
UPDATE creature SET MovementType = 2 WHERE id = @MOGGOK;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @MOGGOK;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, spell, orientation, model1, model2) VALUES
(@MOGGOK, (@POINT := @POINT + 1), -3536.68,5787.4,-6.59531, 0, 0, 0,3.33926, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3562.41,5785.56,-2.00246, 0, 0, 0,2.9819, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3580.61,5788.38,-3.69901, 13000, 1847501, 0,2.98583, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3589.24,5790.31,-4.90877, 0, 0, 0,2.62454, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3609.38,5803.49,-4.02221, 0, 0, 0,2.05906, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3615.74,5820.5,-4.67745, 0, 0, 0,2.00801, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3622.37,5834.25,0.294291, 0, 0, 0,2.16116, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3637.95,5850.92,-0.542909, 0, 0, 0,2.03157, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3646.58,5872.23,-6.128, 0, 0, 0,1.32864, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3636.95,5912.25,-23.4443, 0, 0, 0,1.70563, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3640.31,5927.94,-30.2711, 0, 0, 0,1.70563, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3640.04,5947.71,-31.4042, 0, 0, 0,1.45666, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3638.97,5958.55,-27.3119, 0, 0, 0,0.577796, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3627.43,5980.86,-20.8827, 0, 0, 0,0.994843, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3622.81,5987.12,-20.286, 0, 0, 0,6.27665, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3611.57,5987.58,-25.0752, 0, 0, 0,5.66011, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3604.92,5981.8,-29.6902, 0, 0, 0,0.040585, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3599.89,5982.2,-30.8126, 0, 0, 0,0.040585, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3556.21,5996.2,-34.9259, 0, 0, 0,0.727808, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3546.77,6008.55,-32.8145, 0, 0, 0,0.727808, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3526.8,6046.15,-21.48, 0, 0, 0,0.771006, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3507.05,6060.53,-15.6156, 0, 0, 0,0.0178065, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3501.47,6061.66,-15.4096, 0, 0, 0,6.08108, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3485.31,6060.18,-18.0959, 0, 0, 0,6.19244, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3455.85,6050.59,-12.3859, 0, 0, 0,4.95545, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3452.47,6033.86,-14.0961, 0, 0, 0,4.76774, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3449.56,6010.21,-18.4125, 0, 0, 0,5.0709, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3440.77,5986.13,-24.7572, 0, 0, 0,5.05363, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3434.65,5972.64,-24.643, 0, 0, 0,4.61302, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3435.52,5950.69,-25.7819, 0, 0, 0,4.09466, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3448.67,5923.3,-33.8689, 0, 0, 0,4.30043, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3454.38,5908.85,-32.9945, 0, 0, 0,4.00119, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3467.35,5894.72,-29.4213, 0, 0, 0,4.13935, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3486.01,5866.78,-23.0018, 0, 0, 0,4.19698, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3496.11,5848.12,-15.6849, 0, 0, 0,4.25986, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3503.11,5830.48,-14.2908, 0, 0, 0,4.30306, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3508.39,5818.03,-12.4956, 0, 0, 0,4.01325, 0, 0),
(@MOGGOK, (@POINT := @POINT + 1), -3516.37,5805.25,-9.1044, 0, 0, 0,4.15854, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1847501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1847501,3,0,0,0,0,0,0,2000000392,0,0,0,0,0,0,0,''),
(1847501,7,0,0,0,0,0,0,2000000393,0,0,0,0,0,0,0,''),
(1847501,11,0,0,0,0,0,0,2000000394,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000392 AND 2000000394;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000000392,'Come out, little birdies! Mug\'gok want to play!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,15,NULL),
(2000000393,'No hurt Mug\'gok\'s feelings, bird-men!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,11,NULL),
(2000000394,'Fine! Birdies be dat way! Mug\'gok find new friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,14,NULL);


