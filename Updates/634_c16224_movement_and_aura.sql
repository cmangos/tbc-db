-- Rathis Tomber c.16224
UPDATE creature_template_addon SET auras=NULL WHERE entry=16224; -- Remove random stamina buff
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7638.232,`position_y`=-6842.241,`position_z`=84.2546 WHERE `id`=16224;
DELETE FROM `creature_movement_template` WHERE `entry`=16224;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(16224,1,7636.98,-6839.962,83.24476,0,0,0),
(16224,2,7637.41,-6837.574,82.88759,0,0,0),
(16224,3,7639.8,-6835.542,82.59454,0,0,0),
(16224,4,7643.04,-6835.119,82.58206,0,0,0),
(16224,5,7644.657,-6837.574,83.20168,0,0,0),
(16224,6,7644.05,-6838.9,83.9032,9000,1622401,100),
(16224,7,7645.192,-6836.052,83.1027,0,0,0),
(16224,8,7642.421,-6834.729,82.59531,0,0,0),
(16224,9,7639.884,-6835.1,82.53012,0,0,0),
(16224,10,7637.52,-6837.243,82.75238,0,0,0),
(16224,11,7636.066,-6839.554,82.94509,0,0,0),
(16224,12,7637.412,-6842.98,83.70974,0,0,0),
(16224,13,7638.232,-6842.241,84.2546,9000,1622401,100),
(16224,14,7638.232,-6842.241,84.2546,120000,0,2.076942);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1622401);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1622401,2,1,69,0,0,0,0,0,0,0,0,0,'Rathis Tomber - STATE_USESTANDING',0,0,0,0),
(1622401,8,1,0,0,0,0,0,0,0,0,0,0,'Rathis Tomber - ONESHOT_NONE',0,0,0,0);


