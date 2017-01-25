-- ----------------------------------------------------------
-- Model and equipment updates
-- ----------------------------------------------------------
-- Update EquipmentTemplate for all Honor Hold Defenders. Entry 20513 (the two guards next to the destroyed keep) had the correct ones, all others were wrong for some reason.
UPDATE `creature_template` SET `EquipmentTemplateId`=1195 WHERE `entry`=16842;

-- Also the human model was missing from their creature_template
UPDATE `creature_template` SET `ModelId1`=16387,`ModelId2`=16388,`ModelId3`=16389,`ModelId4`=16390 WHERE `entry` IN (16842,20513); -- 16390

-- Removing the gender link, because some creatures need to use the male model only
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid` BETWEEN 16387 AND 16390;

-- The guards outside the destroyed keep should always be male, as indicated by their texts. "I am a grumpy old man!"
UPDATE `creature` SET `modelid`=16387 WHERE `guid` IN(72636,72637);

-- Nethergarde Infantry were missing the female model
UPDATE `creature_template` SET `ModelId1`=16377,`ModelId2`=16376,`ModelId3`=16375 WHERE `entry`=16831; 
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=16375; -- Female model should never pick her "other gender". That model is unused.
UPDATE `creature_model_info` SET `modelid_other_gender`=16377 WHERE `modelid`=16376; -- Link dwarf and male. Female model should not be used inside the inn. (Girls don't drink beer according to wow lore? :O)
UPDATE `creature_model_info` SET `modelid_other_gender`=16376 WHERE `modelid`=16377; -- Link dwarf and male
UPDATE `creature_model_info` SET `modelid_alternative`=16377 WHERE `modelid`=16376;

-- Nethergarde infantry inside inn should have mugs and mutton in their hands.
DELETE FROM `creature_equip_template` WHERE `entry` = 124;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(124,2704,13407,0);

-- The infantry that's doing work around the town and the guard at the outhouse should not be carrying any weapons. Override with an empty equip_template
DELETE FROM `creature_equip_template` WHERE `entry`=123;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(123,0,0,0);
UPDATE `creature` SET `equipment_id`=123 WHERE `guid` IN(57895,57889,58153,57942,58142,58149,58154,57904); -- Use an empty equip_template

-- ----------------------------------------------------------
-- Honor Hold Defenders
-- ----------------------------------------------------------

-- Outhouse guard GUID: 57942
-- Since this guard has a gossip menu it needs to have a separate template from the other guards (as far as I know). 
-- So what I did was I gave this one the template of the two talking guards outside the destroyed keep, and I gave them the normal guard template.
-- I see no reason why those two would need a separate template anyways, so I thought it was better to reuse this one than create a separate one for the outhouse guard.

UPDATE `creature` SET `id`=16842 WHERE `guid` IN(72636,72637);
UPDATE `creature` SET `id`=20513,`spawndist`=0,`MovementType`=2 WHERE `guid`=57942;
UPDATE `creature_template` SET `GossipMenuId`=10006,`NpcFlags`=1 WHERE `entry`=20513;

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001051 AND 2000001054;
INSERT INTO `db_script_string` (`entry`,`content_default`,`emote`) VALUES 
(2000001051,'Do ya want me to call a medic? Maybe a priest? It''s been over an hour, mate!',5),
(2000001052,'So help me, I''m gonna count to ten and if yer not outta there by the time I reach 10, I''m comin'' in!',5),
(2000001053,'What''s goin'' on in there?? For the love of the LIGHT, hurry it up!',5),
(2000001054,'OY! You in there, this is official Honor Hold business yer holdin'' up!',5);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 5794201 AND 5794204;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`dataint`,`comments`) VALUES
(5794201,0,0,0,2000001051,'Outhouse Honor Hold Guard Text1'),
(5794202,0,0,0,2000001052,'Outhouse Honor Hold Guard Text2'),
(5794203,0,0,0,2000001053,'Outhouse Honor Hold Guard Text3'),
(5794204,0,0,0,2000001054,'Outhouse Honor Hold Guard Text4');

DELETE FROM `npc_text` WHERE `ID` = 15878;
INSERT INTO `npc_text` (`ID`,`text0_0`,`prob0`,`em0_0`) VALUES
(15878,'OY! Wait in line, would ya? Outland food doesn''t agree with me at all.',1,5); -- Exclamation emote

DELETE FROM `gossip_menu` WHERE `entry`=10006;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(10006,15878);

-- Pathing for  Entry: 16821 'TDB FORMAT' 
SET @GUID := 57942;
SET @POINT := 0;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`b2_0_sheath`) VALUES (@GUID,0); -- Weapons sheathed by default
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:00
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:02
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:04
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:05
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:07
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:09
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:10
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:11
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:13
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:14
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:16
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:18
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:19
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:21
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:22
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:22
(@GUID,@POINT := @POINT + '1',-725.5215,2724.479,95.6583,4.015551,15000,5794201), -- Text
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:51:44
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:51:45
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:51:46
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:51:48
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:51:50
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:51:51
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:51:53
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:51:54
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:56
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:51:58
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:51:59
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:01
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:03
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:04
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:06
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:08
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:09
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:11
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:12
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:14
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:15
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:17
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:19
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:20
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:22
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:24
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:25
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:52:25
(@GUID,@POINT := @POINT + '1',-725.5215,2724.479,95.6583,4.015551,15000,5794202), -- Text
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:52:47
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:52:48
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:52:50
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:52:51
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:52:53
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:52:54
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:52:56
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:52:58
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:52:59
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:01
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:03
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:04
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:06
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:07
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:09
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:11
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:13
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:14
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:16
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:17
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:19
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:21
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:22
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:24
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:26
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:27
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:53:29
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:53:29
(@GUID,@POINT := @POINT + '1',-725.5215,2724.479,95.6583,4.015551,15000,5794203), -- Text
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:53:51
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:53:52
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:53:53
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:53:55
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:53:57
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:53:58
(@GUID,@POINT := @POINT + '1',-724.8216,2722.722,95.61582,4.549620,250,0), -- 14:54:00
(@GUID,@POINT := @POINT + '1',-724.1487,2726.587,95.32871,1.439442,250,0), -- 14:54:01
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:03
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:05
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:06
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:08
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:09
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:11
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:13
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:14
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:16
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:18
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:19
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:21
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:22
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:24
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:26
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:27
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:29
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:31
(@GUID,@POINT := @POINT + '1',-724.872,2722.862,95.62754,4.549620,250,0), -- 14:54:32
(@GUID,@POINT := @POINT + '1',-724.4536,2725.909,95.40195,1.439442,250,0), -- 14:54:32
(@GUID,@POINT := @POINT + '1',-725.5215,2724.479,95.6583,4.015551,15000,5794204); -- Text

-- Add missing spawn. (Proof: https://youtu.be/oAdpzodemN8?t=58s)
DELETE FROM `creature` WHERE `guid`=151000;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `MovementType`) VALUES 
('151000', '16842', '530', '-661.241577', '2764.013184', '91.648140', '0', '300', '6600', '2');

SET @GUID := 57948; -- member 151000
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-659.241577,`position_y`=2764.013184,`position_z`=89.648140,`orientation`=0 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-659.241577,2764.013184,89.648140,500,5.898452),
(@GUID,@POINT := @POINT + '1',-676.385315,2769.760254,93.590286,500,3.153486),
(@GUID,@POINT := @POINT + '1',-693.940857,2767.547607,95.120773,500,3.287004),
(@GUID,@POINT := @POINT + '1',-676.385315,2769.760254,93.590286,500,6.016262);

DELETE FROM `creature_linking` WHERE `master_guid`= 57948;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`)VALUES
(151000,57948,515);

-- Pathing for  Entry: 16842 'TDB FORMAT'
SET @GUID := 57943; -- member 57944
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-726.805420,`position_y`=2658.582275,`position_z`=94.162804,`orientation`=0 WHERE `guid`=@GUID;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-728.805420,`position_y`=2658.582275,`position_z`=94.162804,`orientation`=0 WHERE `guid`=57944;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@GUID,1,-729.6794,2657.958,95.2814), -- 23:40:32
(@GUID,2,-725.9243,2657.444,94.29301), -- 23:40:36
(@GUID,3,-712.4608,2637.426,91.97912), -- 23:40:40
(@GUID,4,-696.0266,2633.286,90.51183), -- 23:40:47
(@GUID,5,-681.8851,2640.387,89.54575), -- 23:40:54
(@GUID,6,-678.4524,2642.606,89.3196), -- 23:41:01
(@GUID,7,-676.4327,2655.729,89.65163), -- 23:41:06
(@GUID,8,-686.6949,2675.069,91.69751), -- 23:41:11
(@GUID,9,-695.3953,2678.214,93.53847), -- 23:41:16
(@GUID,10,-715.9707,2676.224,95.10616), -- 23:41:22
(@GUID,11,-720.6448,2670.696,94.86513), -- 23:41:29
(@GUID,12,-724.7706,2663.015,94.51012), -- 23:41:34
(@GUID,13,-732.2354,2660.108,95.79332), -- 23:41:37
(@GUID,14,-743.7416,2658.196,99.50706), -- 23:41:39
(@GUID,15,-753.4407,2652.986,104.7612), -- 23:41:45
(@GUID,16,-760.7173,2650.15,108.0609), -- 23:41:49
(@GUID,17,-763.5579,2646.074,108.1835), -- 23:41:54
(@GUID,18,-774.3285,2638.794,108.1835), -- 23:42:00
(@GUID,19,-751.5222,2652.918,104.1722), -- 23:42:06
(@GUID,20,-734.8468,2657.947,96.88486); -- 23:42:12

DELETE FROM `creature_linking` WHERE `master_guid`=57943;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`)VALUES
(57944,57943,515);

-- Pathing for  Entry: 16842 'TDB FORMAT' 
SET @GUID := 57923; -- member 57937
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-867.476,`position_y`=2718.552,`position_z`=69.17674,`orientation`=0 WHERE `guid`=@GUID;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-867.476,`position_y`=2720.552,`position_z`=69.17674,`orientation`=0 WHERE `guid`=57937;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@GUID,@POINT := @POINT + '1',-867.476,2718.552,69.17674), -- 00:54:49
(@GUID,@POINT := @POINT + '1',-867.5676,2699.178,79.64346), -- 00:54:59
(@GUID,@POINT := @POINT + '1',-858.116,2686.463,88.44569), -- 00:55:08
(@GUID,@POINT := @POINT + '1',-842.5492,2678.867,95.29387), -- 00:55:15
(@GUID,@POINT := @POINT + '1',-837.273010,2679.171631,96.956741),
(@GUID,@POINT := @POINT + '1',-831.252136,2679.731689,99.359558),
(@GUID,@POINT := @POINT + '1',-822.5157,2681.53,101.6271), -- 00:55:23
(@GUID,@POINT := @POINT + '1',-817.6292,2683.223,103.6337), -- 00:55:32
(@GUID,@POINT := @POINT + '1',-817.5452,2683.404,103.4257), -- 00:55:37
(@GUID,@POINT := @POINT + '1',-824.987244,2681.028320,101.549026),
(@GUID,@POINT := @POINT + '1',-828.351746,2680.089355,100.353310),
(@GUID,@POINT := @POINT + '1',-832.202515,2678.725098,98.884773),
(@GUID,@POINT := @POINT + '1',-838.7524,2678.115,96.79544), -- 00:55:39
(@GUID,@POINT := @POINT + '1',-856.3284,2684.984,89.34355), -- 00:55:48
(@GUID,@POINT := @POINT + '1',-867.1521,2697.494,80.28738), -- 00:55:56
(@GUID,@POINT := @POINT + '1',-867.6529,2713.841,71.40306), -- 00:56:04
(@GUID,@POINT := @POINT + '1',-866.756165,2721.635986,67.149345),
(@GUID,@POINT := @POINT + '1',-866.285217,2728.395508,63.300289),
(@GUID,@POINT := @POINT + '1',-865.961182,2733.046143,60.420986),
(@GUID,@POINT := @POINT + '1',-865.4053,2736.819,58.58712), -- 00:56:12
(@GUID,@POINT := @POINT + '1',-866.5761,2765.043,41.56224), -- 00:56:22
(@GUID,@POINT := @POINT + '1',-872.1741,2769.334,37.38614), -- 00:56:35
(@GUID,@POINT := @POINT + '1',-869.7395,2768.148,39.13062), -- 00:56:41
(@GUID,@POINT := @POINT + '1',-865.277,2739.819,56.70834), -- 00:56:44
(@GUID,@POINT := @POINT + '1',-866.348694,2733.137939,60.319584),
(@GUID,@POINT := @POINT + '1',-867.077209,2729.624268,62.495125),
(@GUID,@POINT := @POINT + '1',-867.119324,2726.944092,64.111908),
(@GUID,@POINT := @POINT + '1',-868.219971,2723.613770,65.848427),
(@GUID,@POINT := @POINT + '1',-868.143616,2720.661865,67.733315),
(@GUID,@POINT := @POINT + '1',-869.248535,2719.880615,68.087257);
-- 0x203CCC42401072800031F9000101574B .go -867.476 2718.552 69.17674

DELETE FROM `creature_linking` WHERE `master_guid`=57923;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`)VALUES
(57937,57923,515);

-- Pathing for  Entry: 16842 'TDB FORMAT' 
SET @GUID := 57951; -- member 57952
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-687.996,`position_y`=2675.259,`position_z`=92.00164,`orientation`=0 WHERE `guid`=@GUID;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-689.996,`position_y`=2675.259,`position_z`=92.00164,`orientation`=0 WHERE `guid`=57952;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@GUID,@POINT := @POINT + '1',-687.996,2675.259,92.00164), -- 00:56:54
(@GUID,@POINT := @POINT + '1',-694.5895,2679.407,93.47656), -- 00:57:00
(@GUID,@POINT := @POINT + '1',-699.2542,2681.575,94.0282), -- 00:57:04
(@GUID,@POINT := @POINT + '1',-709.6293,2702.073,94.66191), -- 00:57:07
(@GUID,@POINT := @POINT + '1',-709.9301,2704.808,94.83853), -- 00:57:13
(@GUID,@POINT := @POINT + '1',-709.663208,2714.1892,94.7226), -- 00:57:24 --C
(@GUID,@POINT := @POINT + '1',-700.4745,2712.623,94.98143), -- 00:57:35
(@GUID,@POINT := @POINT + '1',-703.2124,2713.111,94.98071), -- 00:57:36
(@GUID,@POINT := @POINT + '1',-710.6580,2712.3549,94.7205), -- 00:57:38 --C
(@GUID,@POINT := @POINT + '1',-710.7588,2702.815,94.6216), -- 00:57:39
(@GUID,@POINT := @POINT + '1',-707.4856,2689.286,94.33665), -- 00:57:44
(@GUID,@POINT := @POINT + '1',-706.4232,2686.263,94.17517), -- 00:57:50
(@GUID,@POINT := @POINT + '1',-694.9254,2679.296,93.42561), -- 00:57:52
(@GUID,@POINT := @POINT + '1',-679.5647,2669.552,90.44455), -- 00:57:57
(@GUID,@POINT := @POINT + '1',-678.5782,2668.9,89.83815), -- 00:58:03
(@GUID,@POINT := @POINT + '1',-662.3951,2684.631,88.87974), -- 00:58:08
(@GUID,@POINT := @POINT + '1',-650.7223,2700.149,87.90611), -- 00:58:16
(@GUID,@POINT := @POINT + '1',-642.0238,2715.182,86.90927), -- 00:58:24
(@GUID,@POINT := @POINT + '1',-640.7755,2717.258,86.57317), -- 00:58:29
(@GUID,@POINT := @POINT + '1',-634.3006,2732.866,85.51468), -- 00:58:31
(@GUID,@POINT := @POINT + '1',-616.3732,2751.199,83.35973), -- 00:58:40
(@GUID,@POINT := @POINT + '1',-605.2081,2765.297,78.54527), -- 00:58:47
(@GUID,@POINT := @POINT + '1',-596.5933,2784.522,72.0435), -- 00:58:54
(@GUID,@POINT := @POINT + '1',-591.5787,2803.707,66.74985), -- 00:59:03
(@GUID,@POINT := @POINT + '1',-590.4258,2822.456,61.94441), -- 00:59:11
(@GUID,@POINT := @POINT + '1',-592.53,2835.081,59.69307), -- 00:59:20
(@GUID,@POINT := @POINT + '1',-596.1635,2847.102,58.09987), -- 00:59:26
(@GUID,@POINT := @POINT + '1',-597.4973,2850.567,57.33707), -- 00:59:31
(@GUID,@POINT := @POINT + '1',-592.5145,2859.644,57.5414), -- 00:59:34
(@GUID,@POINT := @POINT + '1',-610.3804,2871.98,54.83242), -- 00:59:37
(@GUID,@POINT := @POINT + '1',-639.1476,2874.169,50.74456), -- 00:59:45
(@GUID,@POINT := @POINT + '1',-647.4047,2872.841,49.71684), -- 00:59:57
(@GUID,@POINT := @POINT + '1',-657.5587,2869.095,49.19283), -- 01:00:05
(@GUID,@POINT := @POINT + '1',-629.851,2864.712,51.55709), -- 01:00:06
(@GUID,@POINT := @POINT + '1',-611.9828,2858.52,55.30186), -- 01:00:18
(@GUID,@POINT := @POINT + '1',-601.4695,2847.149,57.85207), -- 01:00:25
(@GUID,@POINT := @POINT + '1',-594.7114,2832.047,60.31672), -- 01:00:31
(@GUID,@POINT := @POINT + '1',-592.8293,2814.866,64.0257), -- 01:00:38
(@GUID,@POINT := @POINT + '1',-597.939,2791.476,70.42447), -- 01:00:45
(@GUID,@POINT := @POINT + '1',-606.717,2767.088,77.95975), -- 01:00:55
(@GUID,@POINT := @POINT + '1',-614.9818,2755.868,82.00406), -- 01:01:05
(@GUID,@POINT := @POINT + '1',-623.3367,2746.366,84.40461), -- 01:01:12
(@GUID,@POINT := @POINT + '1',-635.1954,2732.008,85.72681), -- 01:01:19
(@GUID,@POINT := @POINT + '1',-642.4907,2714.986,86.78146), -- 01:01:26
(@GUID,@POINT := @POINT + '1',-649.691,2702.885,87.69963), -- 01:01:32
(@GUID,@POINT := @POINT + '1',-654.83,2695.69,88.33471), -- 01:01:38
(@GUID,@POINT := @POINT + '1',-666.5414,2681.097,89.36565), -- 01:01:43
(@GUID,@POINT := @POINT + '1',-677.8886,2669.907,90.08049); -- 01:01:49

DELETE FROM `creature_linking` WHERE `master_guid`=57951;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`)VALUES
(57952,57951,515);

-- ----------------------------------------------------------
-- Honor Hold Guards next to the destroyed keep

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001055 AND 2000001059;
INSERT INTO `db_script_string` (`entry`,`content_default`,`emote`) VALUES 
(2000001055,'Twenty years we''ve been stranded in this hell-hole. It''s all I can do not to run screaming through that blasted Portal. I want to see my loved ones again! I want them to know I''m still alive.',1),
(2000001056,'I feel the same. But there''s still a job to do out here. It''ll all be for naught if this evil finds its way back to Azeroth - back to our homes. We just have to hold on a while longer. Trust Danath - he''s never let us down before.',1),
(2000001057,'It''s not him I''m worried about. It''s all these new rookies around here - and those creepy purple elves they brought with ''em. They ain''t even proved themselves yet.',1),
(2000001058,'C''mon - you sound like a grumpy old man.',1),
(2000001059,'I am a grumpy old man!',5);


DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=7263601;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`dataint`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(7263601,0,0,0,2000001055,0,0,0,'Honor Hold Defender Speech'),
(7263601,15,1,5,0,0,0,0,'Honor Hold Defender Exclamation Emote'),
(7263601,25,0,0,2000001056,16842,72637,16,'Honor Hold Defender2 Speech'),
(7263601,40,1,1,0,16842,72637,16,'Honor Hold Defender2 Talk Emote'),
(7263601,50,0,0,2000001057,0,0,0,'Honor Hold Defender Speech'),
(7263601,65,0,0,2000001058,16842,72637,16,'Honor Hold Defender2 Speech'),
(7263601,73,0,0,2000001059,0,0,0,'Honor Hold Defender Speech');

SET @GUID := 72636;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-665.296997,2662.179932,88.979301,4.398230,300000,7263601); -- 5min rest


-- ----------------------------------------------------------
-- Honor Hold Archers
-- ----------------------------------------------------------

SET @GUID := 58441;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-778.086792,`position_y`=2611.213379,`position_z`=133.253265 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-778.086792,2611.213379,133.253265,500,0.526309),
(@GUID,@POINT := @POINT + '1',-794.580505,2601.480469,133.253265,500,3.718954);

SET @GUID := 58440;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-816.596924,`position_y`=2638.899902,`position_z`=133.253357 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-816.596924,2638.899902,133.253357,500,3.718954), 
(@GUID,@POINT := @POINT + '1',-802.575134,2647.312988,133.253357,500,0.526309); 

SET @GUID := 58448;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-684.023132,`position_y`=2574.477539,`position_z`=100.586746 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-684.023132,2574.477539,100.586746,0,0), 
(@GUID,@POINT := @POINT + '1',-697.688110,2571.345703,100.598846,0,0), 
(@GUID,@POINT := @POINT + '1',-696.135071,2564.149170,100.609314,0,0), 
(@GUID,@POINT := @POINT + '1',-680.653442,2567.783447,100.623665,0,0),
(@GUID,@POINT := @POINT + '1',-696.135071,2564.149170,100.609314,0,0), 
(@GUID,@POINT := @POINT + '1',-697.688110,2571.345703,100.598846,0,0);

SET @GUID := 58442;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-764.784241,`position_y`=2575.985352,`position_z`=104.092911 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-764.784241,2575.985352,104.092911,0,0), 
(@GUID,@POINT := @POINT + '1',-733.677124,2567.583740,104.187248,0,0), 
(@GUID,@POINT := @POINT + '1',-734.555359,2563.964844,104.136047,0,0), 
(@GUID,@POINT := @POINT + '1',-765.734924,2572.005371,104.136047,0,0),
(@GUID,@POINT := @POINT + '1',-734.555359,2563.964844,104.136047,0,0), 
(@GUID,@POINT := @POINT + '1',-733.677124,2567.583740,104.187248,0,0);

SET @GUID := 58453;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-615.481384,`position_y`=2607.880127,`position_z`=99.092003 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-615.481384,2607.880127,99.092003,0,0), 
(@GUID,@POINT := @POINT + '1',-603.260986,2615.532715,99.038170,0,0), 
(@GUID,@POINT := @POINT + '1',-606.086731,2619.775635,99.001106,0,0), 
(@GUID,@POINT := @POINT + '1',-618.218689,2611.881104,99.001846,0,0),
(@GUID,@POINT := @POINT + '1',-606.086731,2619.775635,99.001106,0,0), 
(@GUID,@POINT := @POINT + '1',-603.260986,2615.532715,99.038170,0,0);

SET @GUID := 58452;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-679.087219,`position_y`=2782.460693,`position_z`=110.077003 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-679.087219,2782.460693,110.077003,0,0), 
(@GUID,@POINT := @POINT + '1',-648.031433,2770.963623,104.529289,0,0), 
(@GUID,@POINT := @POINT + '1',-645.291565,2776.596680,104.270088,0,0), 
(@GUID,@POINT := @POINT + '1',-677.481628,2787.628906,110.064980,0,0),
(@GUID,@POINT := @POINT + '1',-645.291565,2776.596680,104.270088,0,0), 
(@GUID,@POINT := @POINT + '1',-648.031433,2770.963623,104.529289,0,0);

-- ----------------------------------------------------------
-- Stormwind cavalrymen
-- Two issues here:
-- 1. The cavalrymen should be "running". They are currently set to walkspeed because of issues with the linking system at very high movement speeds. 
--    (Last cavalryman glitching and falling far behind)
--
-- 2. Due to what I assume is a flaw in the linking system, the member creatures do not evade after combat, they instantly start following their master again
--    This means they will stay unmounted, so the only workaround I can think of is an OoC timer.
-- ----------------------------------------------------------

DELETE FROM `creature_linking` WHERE `master_guid`=57965;
INSERT INTO `creature_linking` (`master_guid`,`guid`,`flag`)VALUES
(57965,57966,1539),
(57965,57967,1539),
(57965,57968,1539);

UPDATE `creature` SET `orientation`=0 WHERE `guid`=57965;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-609.255,`position_y`=2519.03,`position_z`=67.1583,`orientation`=0 WHERE `guid`=57966;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-612.255,`position_y`=2519.03,`position_z`=67.1583,`orientation`=0 WHERE `guid`=57967;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-615.255,`position_y`=2519.03,`position_z`=68.1583,`orientation`=0 WHERE `guid`=57968;

-- DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=5796501;
-- INSERT INTO `dbscripts_on_creature_movement` (`id`,`command`,`datalong`,`comments`) VALUES
-- (5796501,25,1,'Stormwind Cavalryman - Set Run');

-- Pathing for  Entry: 16843 'TDB FORMAT' 
SET @GUID := 57965;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-606.2551,`position_y`=2519.0322,`position_z`=67.1583 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`script_id`) VALUES
(@GUID,@POINT := @POINT + '1',-603.8413,2468.978,57.24754,0), -- 02:10:26
(@GUID,@POINT := @POINT + '1',-604.4803,2435.139,50.4033,0), -- 02:10:29
(@GUID,@POINT := @POINT + '1',-599.3711,2409.698,44.90717,0), -- 02:10:31
(@GUID,@POINT := @POINT + '1',-584.9319,2406.705,43.84761,0), -- 02:10:33
(@GUID,@POINT := @POINT + '1',-582.3895,2430.362,47.80949,0), -- 02:10:34
(@GUID,@POINT := @POINT + '1',-582.2234,2463.364,54.12881,0), -- 02:10:36
(@GUID,@POINT := @POINT + '1',-583.6277,2498.37,61.37954,0), -- 02:10:37
(@GUID,@POINT := @POINT + '1',-558.1464,2532.389,67.1059,0), -- 02:10:40
(@GUID,@POINT := @POINT + '1',-524.2815,2553.872,65.78352,0), -- 02:10:42
(@GUID,@POINT := @POINT + '1',-505.6973,2594.282,68.3791,0), -- 02:10:46
(@GUID,@POINT := @POINT + '1',-504.4495,2604.855,70.36739,0), -- 02:10:48
(@GUID,@POINT := @POINT + '1',-509.9106,2664.477,70.11888,0), -- 02:10:51
(@GUID,@POINT := @POINT + '1',-511.2125,2694.753,68.72308,0), -- 02:10:53
(@GUID,@POINT := @POINT + '1',-517.1431,2716.786,67.86261,0), -- 02:10:54
(@GUID,@POINT := @POINT + '1',-534.4116,2747.668,69.11035,0), -- 02:10:57
(@GUID,@POINT := @POINT + '1',-565.2167,2807.088,63.10085,0), -- 02:10:59
(@GUID,@POINT := @POINT + '1',-596.0338,2836.992,59.53964,0), -- 02:11:03
(@GUID,@POINT := @POINT + '1',-614.9552,2858.75073,54.6820,0), -- 02:11:03 -- Added
(@GUID,@POINT := @POINT + '1',-630.5186,2866.889,51.23105,0), -- 02:11:05
(@GUID,@POINT := @POINT + '1',-678.2933,2883.322,47.20448,0), -- 02:11:08
(@GUID,@POINT := @POINT + '1',-697.3795,2884.9079,41.7335,0), -- 02:11:11
(@GUID,@POINT := @POINT + '1',-723.3648,2887.826,33.06394,0), -- 02:11:11
(@GUID,@POINT := @POINT + '1',-746.0063,2887.6555,27.1176,0), -- 02:11:11
(@GUID,@POINT := @POINT + '1',-762.1984,2886.511,24.12672,0), -- 02:11:14
(@GUID,@POINT := @POINT + '1',-792.9378,2863.699,21.6566,0), -- 02:11:16
(@GUID,@POINT := @POINT + '1',-819.9457,2843.082,18.99449,0), -- 02:11:20
(@GUID,@POINT := @POINT + '1',-873.9966,2815.336,15.86702,0), -- 02:11:22
(@GUID,@POINT := @POINT + '1',-894.1238,2802.419,14.53608,0), -- 02:11:26
(@GUID,@POINT := @POINT + '1',-897.1019,2770.831,21.08281,0), -- 02:11:27
(@GUID,@POINT := @POINT + '1',-867.1028,2775.519,38.11693,0), -- 02:11:30
(@GUID,@POINT := @POINT + '1',-860.3279,2762.119,45.57374,0), -- 02:11:31
(@GUID,@POINT := @POINT + '1',-869.2184,2737.057,57.95547,0), -- 02:11:32
(@GUID,@POINT := @POINT + '1',-871.6135,2701.309,78.26624,0), -- 02:11:35
(@GUID,@POINT := @POINT + '1',-856.28,2675.755,92.30522,0), -- 02:11:37
(@GUID,@POINT := @POINT + '1',-833.6925,2676.522,98.57971,0), -- 02:11:39
(@GUID,@POINT := @POINT + '1',-808.1074,2687.286,104.2635,0), -- 02:11:41
(@GUID,@POINT := @POINT + '1',-790.7687,2689.69,104.2749,0), -- 02:11:43
(@GUID,@POINT := @POINT + '1',-725.1459,2676.275,96.73329,0), -- 02:11:45
(@GUID,@POINT := @POINT + '1',-693.6385,2675.371,93.11407,0), -- 02:11:48
(@GUID,@POINT := @POINT + '1',-678.6763,2653.897,90.2196,0), -- 02:11:50
(@GUID,@POINT := @POINT + '1',-670.2182,2623.38,87.0732,0), -- 02:11:51
(@GUID,@POINT := @POINT + '1',-647.7286,2588.648,83.14568,0), -- 02:11:54
(@GUID,@POINT := @POINT + '1',-620.5898,2546.875,73.73161,0), -- 02:11:56
(@GUID,@POINT := @POINT + '1',-604.7241,2503.232,64.53005,0); -- 02:12:00
-- 0x203CD042401072C00000490000797476 .go -894.1846 2802.289 14.45487

-- ----------------------------------------------------------
-- Nethergarde Infantry Inside Inn (GUID 57896 to 57899)
-- These four Infantries should not be affected by the Nethergarde/Stormwind-random-template-on-spawn-stuff. (which is not implemented yet anyways)
-- ----------------------------------------------------------

DELETE FROM dbscripts_on_creature_movement WHERE id IN (5789601);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5789601,1,1,92,0,0,0,0,0,0,0,0,0,0,0,0,'Nethergarde Infantry - Drink/Eat');
 
UPDATE `creature` SET `modelid`=16377,`equipment_id`=124,`MovementType`=2 WHERE `guid` IN (57896,57897,57898,57899);

DELETE FROM creature_movement WHERE id IN (57896,57897,57898,57899);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- 57896
(57896,1,-706.337,2726.19,94.1936,4000,5789601,100),
(57896,2,-706.337,2726.19,94.1936,10000,5789601,100),
(57896,3,-706.337,2726.19,94.1936,6000,5789601,100),
(57896,4,-706.337,2726.19,94.1936,8000,5789601,100),
-- 57897
(57897,4,-711.224,2726.41,94.1936,4000,5789601,100),
(57897,1,-711.224,2726.41,94.1936,10000,5789601,100),
(57897,2,-711.224,2726.41,94.1936,6000,5789601,100),
(57897,3,-711.224,2726.41,94.1936,8000,5789601,100),
-- 57898
(57898,3,-711.314,2723.37,94.1936,4000,5789601,100),
(57898,4,-711.314,2723.37,94.1936,10000,5789601,100),
(57898,1,-711.314,2723.37,94.1936,6000,5789601,100),
(57898,2,-711.314,2723.37,94.1936,8000,5789601,100),
-- 57899
(57899,2,-707,2721.95,94.1936,4000,5789601,100),
(57899,3,-707,2721.95,94.1936,10000,5789601,100),
(57899,4,-707,2721.95,94.1936,6000,5789601,100),
(57899,1,-707,2721.95,94.1936,8000,5789601,100);

-- ----------------------------------------------------------
-- Nethergarde/Stormwind Infantry
-- ----------------------------------------------------------
-- The way these NPCs should work is that they have a 50/50 chance of being Stormwind/Nethergarde. However I can't think of any good way to implement that, so I will have to make them static :(

-- -----------------------------------------------
-- Boxes near gate.
-- Bucket: 13606 D: 24283
-- White bag: 12859 D: 23320

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 5815401 AND 5815404;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`dataint2`,`comments`) VALUES
(5815401,1.5,1,66,0,0,0,'Nethergarde/Stormwind Infantry - Salute Emote'),
(5815402,0,1,69,0,0,0,'Nethergarde/Stormwind Infantry - Use Emote State'),
(5815402,2,42,0,0,12859,13606,'Nethergarde/Stormwind Infantry - Equip Bucket and Bag'),
(5815403,0,1,0,0,0,0,'Nethergarde/Stormwind Infantry - Turn off Use Emote State'),
(5815404,2,2,159,8,0,0,'Nethergarde/Stormwind Infantry - Set Kneel Emote State'), -- Emote 68 doesn't work, so this is the only way to do it
(5815404,3,42,1,0,0,0,'Nethergarde/Stormwind Infantry - UnEquip Bucket and Bag'),
(5815404,4,2,159,0,0,0,'Nethergarde/Stormwind Infantry - Remove Kneel Emote State');

-- Remove static use emote
DELETE FROM `creature_addon` WHERE `guid`=58154;

-- Pathing for  Entry: 16831 'TDB FORMAT' 
SET @GUID := 58154;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID; -- ,`position_x`=-675.5676,`position_y`=2609.854,`position_z`=86.83054
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-679.1447,2609.0058,86.71082,120000,5815402,2.417790), -- 17:19:23 -- Use emote by boxes for 2 mins (120000)
(@GUID,@POINT := @POINT + '1',-679.1447,2609.0058,86.71082,1000,5815403,2.417790), -- 17:19:23 -- Turn off use emote state
(@GUID,@POINT := @POINT + '1',-676.3438,2608.4021,86.4456,0,0,0), -- 17:19:23
(@GUID,@POINT := @POINT + '1',-673.6891,2610.629,86.79488,0,0,0), -- 17:19:24
(@GUID,@POINT := @POINT + '1',-676.3786,2619.2211,87.1581,0,0,0), -- 17:19:24 -- Added
(@GUID,@POINT := @POINT + '1',-702.3351,2632.415,90.65683,0,0,0), -- 17:19:35
(@GUID,@POINT := @POINT + '1',-710.6298,2636.448,91.78142,0,0,0), -- 17:19:41
(@GUID,@POINT := @POINT + '1',-721.761,2645.975,93.45092,0,0,0), -- 17:19:46
(@GUID,@POINT := @POINT + '1',-723.8354,2648.165,93.72618,0,0,0), -- 17:19:51
(@GUID,@POINT := @POINT + '1',-736.1548,2658.172,96.76268,0,0,0), -- 17:19:54
(@GUID,@POINT := @POINT + '1',-745.5068,2656.399,100.4888,0,0,0), -- 17:19:59
(@GUID,@POINT := @POINT + '1',-753.444,2652.021,105.0069,0,0,0), -- 17:20:03
(@GUID,@POINT := @POINT + '1',-759.5253,2648.16,108.0777,0,0,0), -- 17:20:08
(@GUID,@POINT := @POINT + '1',-762.7746,2645.629,108.1487,0,0,0), -- 17:20:12
(@GUID,@POINT := @POINT + '1',-781.6511,2634.466,108.0655,0,0,0), -- 17:20:18
(@GUID,@POINT := @POINT + '1',-787.555,2630.417,107.7722,0,0,0), -- 17:20:22
(@GUID,@POINT := @POINT + '1',-786.5496,2618.983,109.4194,0,0,0), -- 17:20:26
(@GUID,@POINT := @POINT + '1',-782.7269,2612.487,109.4225,0,0,0), -- 17:20:31
(@GUID,@POINT := @POINT + '1',-781.1051,2609.958,109.422,0,0,0), -- 17:20:35
(@GUID,@POINT := @POINT + '1',-769.5511,2615.452,109.422,0,0,0), -- 17:20:36
(@GUID,@POINT := @POINT + '1',-769.2007,2622.1369,109.1723,6000,5815404,1.620606), -- 17:20:41 -- Kneel and put down satchels
(@GUID,@POINT := @POINT + '1',-769.2007,2622.1369,109.1723,0,0,0), -- Turn off kneel emote
(@GUID,@POINT := @POINT + '1',-772.579,2614.799,109.422,0,0,0), -- 17:20:50
(@GUID,@POINT := @POINT + '1',-775.0747,2612.723,109.422,0,0,0), -- 17:20:53
(@GUID,@POINT := @POINT + '1',-783.3768,2615.284,109.422,0,0,0), -- 17:20:55
(@GUID,@POINT := @POINT + '1',-788.9121,2624.131,108.1715,0,0,0), -- 17:20:59
(@GUID,@POINT := @POINT + '1',-789.2635,2626.8117,107.6731,0,0,0), -- Added
(@GUID,@POINT := @POINT + '1',-776.8205,2637.103,108.0527,0,0,0), -- 17:21:05
(@GUID,@POINT := @POINT + '1',-755.5786,2651.957,105.9618,0,0,0), -- 17:21:12
(@GUID,@POINT := @POINT + '1',-742.3715,2657.095,99.17558,0,0,0), -- 17:21:23
(@GUID,@POINT := @POINT + '1',-730.1269,2658.817,95.05613,0,0,0), -- 17:21:28
(@GUID,@POINT := @POINT + '1',-725.9871,2659.364,94.28555,0,0,0), -- 17:21:35
(@GUID,@POINT := @POINT + '1',-721.1169,2645.587,93.1051,0,0,0), -- 17:21:39
(@GUID,@POINT := @POINT + '1',-706.5137,2635.195,91.43243,0,0,0), -- 17:21:43
(@GUID,@POINT := @POINT + '1',-682.3307,2623.243,88.63831,0,0,0), -- 17:21:50
(@GUID,@POINT := @POINT + '1',-675.4275,2616.5568,86.8754,0,0,0), -- Added
(@GUID,@POINT := @POINT + '1',-675.5676,2609.854,86.83054,0,0,0), -- 17:24:30
(@GUID,@POINT := @POINT + '1',-676.6392,2606.2456,86.3983,0,0,0),
(@GUID,@POINT := @POINT + '1',-676.6392,2606.2456,86.3983,4000,5815401,3.898266); -- 17:19:23 -- Salute
-- 0x203CDC4240106FC0005D0100007D011C .go -675.5676 2609.854 86.83054

-- -----------------------------------------------
-- Boxes near keep
-- Red bag 12856 D:23319

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 5788901 AND 5788903;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`dataint2`,`comments`) VALUES
(5788901,0,1,69,0,0,0,'Nethergarde/Stormwind Infantry - Use Emote State'),
(5788901,1,42,1,0,0,0,'Nethergarde/Stormwind Infantry - UnEquip Red Bags'),
(5788902,0,1,69,0,0,0,'Nethergarde/Stormwind Infantry - Use Emote State'),
(5788902,1,42,0,0,12856,12856,'Nethergarde/Stormwind Infantry - Equip Red Bags'),
(5788903,0,1,0,0,0,0,'Nethergarde/Stormwind Infantry - Turn off Use Emote State');

-- Remove static use emote
DELETE FROM `creature_addon` WHERE `guid`=57889;

-- Boxes near keep
-- Pathing for  Entry: 16831 'TDB FORMAT' 
SET @GUID := 57889;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID; -- ,`position_x`=-801.4343,`position_y`=2643.785,`position_z`=109.4202
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-785.8399,2655.8332,109.1721,80000,5788901,0.470773), -- 17:17:06 -- Use emote and drop satchels 1m20s (80000)
(@GUID,@POINT := @POINT + '1',-785.8399,2655.8332,109.1721,1000,5788903,0.470773), -- Turn off use emote
(@GUID,@POINT := @POINT + '1',-796.5684,2651.333,109.422,0,0,0), -- 17:18:22
(@GUID,@POINT := @POINT + '1',-799.8857,2645.846,109.422,0,0,0), -- 17:18:27
(@GUID,@POINT := @POINT + '1',-794.1083,2633.137,108.1725,0,0,0), -- 17:18:31
(@GUID,@POINT := @POINT + '1',-787.5057,2632.853,107.9186,0,0,0), -- 17:18:37
(@GUID,@POINT := @POINT + '1',-777.4234,2638.755,108.0459,0,0,0), -- 17:18:40
(@GUID,@POINT := @POINT + '1',-754.8186,2655.99,104.2998,0,0,0), -- 17:18:49
(@GUID,@POINT := @POINT + '1',-750.262,2666.566,99.67981,0,0,0), -- 17:18:56
(@GUID,@POINT := @POINT + '1',-752.3864,2673.738,99.89954,0,0,0), -- 17:19:01
(@GUID,@POINT := @POINT + '1',-760.5037,2682.006,101.7457,0,0,0), -- 17:19:05
(@GUID,@POINT := @POINT + '1',-762.8121,2683.413,102.0922,0,0,0), -- 17:19:09
(@GUID,@POINT := @POINT + '1',-766.9202,2682.946,102.3289,0,0,0), -- 17:19:11
(@GUID,@POINT := @POINT + '1',-768.8111,2681.4240,102.1079,0,0,0), -- Added
(@GUID,@POINT := @POINT + '1',-767.8975,2680.983,102.1091,130000,5788902,5.564075), -- 17:19:14 -- Work and pick up satchels 2m10s (130000)
(@GUID,@POINT := @POINT + '1',-767.8975,2680.983,102.1091,1000,5788903,5.564075), -- Turn off use emote
(@GUID,@POINT := @POINT + '1',-760.3657,2682.387,101.792,0,0,0), -- 17:21:23
(@GUID,@POINT := @POINT + '1',-750.4936,2674.702,99.7462,0,0,0), -- 17:21:26
(@GUID,@POINT := @POINT + '1',-746.1119,2660.125,99.62329,0,0,0), -- 17:21:32
(@GUID,@POINT := @POINT + '1',-749.8309,2654.803,103.0287,0,0,0), -- 17:21:38
(@GUID,@POINT := @POINT + '1',-757.9945,2648.734,107.6141,0,0,0), -- 17:21:40
(@GUID,@POINT := @POINT + '1',-776.5012,2637.151,108.0291,0,0,0), -- 17:21:45
(@GUID,@POINT := @POINT + '1',-787.7245,2630.948,107.7993,0,0,0), -- 17:21:54
(@GUID,@POINT := @POINT + '1',-791.5713,2630.794,107.9425,0,0,0), -- 17:21:58
(@GUID,@POINT := @POINT + '1',-801.4343,2643.785,109.4202,0,0,0), -- 17:16:55
(@GUID,@POINT := @POINT + '1',-796.0193,2651.808,109.422,0,0,0); -- 17:17:01
-- 0x203CDC4240106FC0005D0100007CD71E .go -801.4343 2643.785 109.4202

-- -----------------------------------------------
-- Going from inn to gate boxes
-- Black bottle 3756 D:6529
-- Green bottle 3757 D:6530

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001060 AND 2000001065;
INSERT INTO `db_script_string` (`entry`,`content_default`,`emote`,`type`) VALUES 
-- Infantry speech
(2000001060,'Where do you want these bottles?',1,0),
(2000001061,'Got another shipment for you, Sid.',1,0),
(2000001062,'Craziest thing - No matter how many bottles I take from the stockpile, the quantity on hand never decreases. It''s like I''m stuck in some endless loop of actions...',1,0),
(2000001063,'%s nods.',273,2),
-- Sid speech
(2000001064,'Bless yer heart, soldier! Just put ''em in the back room.',1,0),
(2000001065,'Just leave ''em in the cellar.',1,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 5815301 AND 5815304;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`dataint2`,`comments`) VALUES
(5815301,0,1,69,0,0,0,'Nethergarde/Stormwind Infantry - Use Emote State'),
(5815301,1,42,0,0,3756,3757,'Nethergarde/Stormwind Infantry - Equip Black and Green Bottles'),
(5815302,1,2,159,8,0,0,'Nethergarde/Stormwind Infantry - Set Kneel Emote State'), -- Emote 68 doesn't work, so this is the only way to do it
(5815302,2,42,1,0,0,0,'Nethergarde/Stormwind Infantry - UnEquip Black and Green Bottles'),
(5815302,4,2,159,0,0,0,'Nethergarde/Stormwind Infantry - Remove Kneel Emote State'),
(5815303,0,1,0,0,0,0,'Nethergarde/Stormwind Infantry - Turn off Use Emote State');

INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`dataint2`,`dataint3`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(5815304,0,32,1,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Pause Waypoints'),
(5815304,0.5,36,0,0,0,0,0,16826,10,1,'Nethergarde/Stormwind Infantry - Face Sid'),
(5815304,1,0,0,0,2000001060,2000001061,2000001062,0,0,0,'Nethergarde/Stormwind Infantry - Random say'),
(5815304,5,36,0,0,0,0,0,16826,10,0,'Sid Limbardi - Face Nethergarde/Stormwind Infantry'),
(5815304,7,0,0,0,2000001064,2000001065,0,16826,10,0,'Sid Limbardi - Random say'),
(5815304,11,0,0,0,2000001063,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Text emote'),
(5815304,12.5,36,1,0,0,0,0,16826,10,0,'Sid Limbardi - Reset facing'),
(5815304,13,32,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - UnPause Waypoints');

-- Remove static use emote
DELETE FROM `creature_addon` WHERE `guid`=58153;

-- Pathing for  Entry: 16831 'TDB FORMAT' 
SET @GUID := 58153;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID; -- ,`position_x`=-691.2068,`position_y`=2612.307,`position_z`=86.82053
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-686.3853,2604.818,86.82053,180000,5815301,0.480196), -- 14:22:38 --O -- Use emote for 3m (180000)
(@GUID,@POINT := @POINT + '1',-686.3853,2604.818,86.82053,0,5815303,0.480196), -- Turn off use emote
(@GUID,@POINT := @POINT + '1',-691.2068,2612.307,86.82053,0,0,0), -- 14:19:27
(@GUID,@POINT := @POINT + '1',-692.7888,2615.884,89.03557,0,0,0), -- 14:19:29
(@GUID,@POINT := @POINT + '1',-694.6949,2622.964,90.10753,0,0,0), -- 14:19:32
(@GUID,@POINT := @POINT + '1',-690.473511,2632.930420,89.649323,0,0,0), -- 14:19:34 -- C
(@GUID,@POINT := @POINT + '1',-681.0259,2642.447,89.63081,0,0,0), -- 14:19:39
(@GUID,@POINT := @POINT + '1',-679.9601,2643.327,89.52776,0,0,0), -- 14:19:45
(@GUID,@POINT := @POINT + '1',-676.0788,2652.33,89.45507,0,0,0), -- 14:19:49
(@GUID,@POINT := @POINT + '1',-683.2964,2672.437,91.13505,0,0,0), -- 14:19:54
(@GUID,@POINT := @POINT + '1',-691.312,2677.852,92.85458,0,0,0), -- 14:19:58
(@GUID,@POINT := @POINT + '1',-697.7299,2679.415,93.82138,0,0,0), -- 14:20:02
(@GUID,@POINT := @POINT + '1',-703.9164,2680.697,93.97695,0,0,0), -- 14:20:07
(@GUID,@POINT := @POINT + '1',-709.7415,2703.192,94.69138,0,0,0), -- 14:20:13
(@GUID,@POINT := @POINT + '1',-709.845,2710.919,94.83158,0,0,0), -- 14:20:17
(@GUID,@POINT := @POINT + '1',-709.8132,2713.014,94.97685,0,0,0), -- 14:20:20
(@GUID,@POINT := @POINT + '1',-703.2125,2713.8120,94.7370,0,0,0), -- 14:20:24 --C
(@GUID,@POINT := @POINT + '1',-702.9235,2721.491,94.4231,0,0,0), -- 14:20:26
(@GUID,@POINT := @POINT + '1',-703.556,2730.551,94.98415,0,0,0), -- 14:20:29
(@GUID,@POINT := @POINT + '1',-704.699,2735.226,94.90048,0,0,0), -- 14:20:32
(@GUID,@POINT := @POINT + '1',-705.576,2736.907,94.73344,0,5815304,0), -- 14:20:36 --O --Speech with Sid
(@GUID,@POINT := @POINT + '1',-705.576,2736.907,94.73344,0,0,0), -- 
(@GUID,@POINT := @POINT + '1',-704.5279,2742.1013,94.7331,0,0,0), -- 14:20:48 --C
(@GUID,@POINT := @POINT + '1',-711.543,2742.858,94.97518,0,0,0), -- 14:20:52
(@GUID,@POINT := @POINT + '1',-713.9904,2745.996,94.95235,0,0,0), -- 14:20:53
(@GUID,@POINT := @POINT + '1',-714.3401,2747.434,94.40321,0,0,0), -- 14:20:54
(@GUID,@POINT := @POINT + '1',-713.3446,2758.6386,87.9284,0,0,0), -- 14:20:57 --C
(@GUID,@POINT := @POINT + '1',-711.1699,2759.309,88.18364,0,0,0), -- 14:21:00
(@GUID,@POINT := @POINT + '1',-704.456970,2754.737793,87.564606,0,0,0), -- A
(@GUID,@POINT := @POINT + '1',-704.5567,2753.353,87.7123,8000,5815302,4.874504), -- 14:21:03 -- Kneel 
(@GUID,@POINT := @POINT + '1',-704.5567,2753.353,87.7123,0,0,0), -- 
(@GUID,@POINT := @POINT + '1',-711.8190,2759.0969,87.9301,0,0,0), -- 14:21:13 --C
(@GUID,@POINT := @POINT + '1',-714.008,2757.465,88.25082,0,0,0), -- 14:21:16
(@GUID,@POINT := @POINT + '1',-713.868652,2744.810059,94.720543,0,0,0), -- 14:21:20 --C
(@GUID,@POINT := @POINT + '1',-704.5270,2743.0043,94.7323,0,0,0), -- 14:21:24 --C
(@GUID,@POINT := @POINT + '1',-704.3337,2731.918,94.98073,0,0,0), -- 14:21:27
(@GUID,@POINT := @POINT + '1',-703.8024,2728.728,94.42149,0,0,0), -- 14:21:32
(@GUID,@POINT := @POINT + '1',-703.2446,2714.0810,94.7372,0,0,0), -- 14:21:36 --C
(@GUID,@POINT := @POINT + '1',-709.2371,2711.9323,94.7216,0,0,0), -- 14:21:41 --C
(@GUID,@POINT := @POINT + '1',-709.0999,2700.167,94.53326,0,0,0), -- 14:21:43
(@GUID,@POINT := @POINT + '1',-709.7512,2696.803,94.39558,0,0,0), -- 14:21:49
(@GUID,@POINT := @POINT + '1',-694.2099,2679.308,93.23099,0,0,0), -- 14:21:56
(@GUID,@POINT := @POINT + '1',-682.8473,2672.114,91.00636,0,0,0), -- 14:22:01
(@GUID,@POINT := @POINT + '1',-679.4442,2666.898,90.3499,0,0,0), -- 14:22:06
(@GUID,@POINT := @POINT + '1',-677.2031,2648.906,89.43787,0,0,0), -- 14:22:10
(@GUID,@POINT := @POINT + '1',-683.6664,2640.914,89.94809,0,0,0), -- 14:22:16
(@GUID,@POINT := @POINT + '1',-689.635,2635.617,89.85884,0,0,0), -- 14:22:23
(@GUID,@POINT := @POINT + '1',-691.4574,2610.438,88.27208,0,0,0), -- 14:22:29
(@GUID,@POINT := @POINT + '1',-687.9446,2606.449,87.25223,0,0,0); -- 14:22:34
-- 0x202FD44240106FC00028C9000000CB0A .go -691.2068 2612.307 86.82053

-- -----------------------------------------------
-- Infantry riding to Dark Portal

-- Remove static use emote
DELETE FROM `creature_addon` WHERE `guid`=57904;

-- Remove static mounted Nethergarde Infantry in the middle of the road to dark portal. It should not be there.
UPDATE `creature` SET `spawnMask`=0 WHERE `guid`=57894;

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001066 AND 2000001071;
INSERT INTO `db_script_string` (`entry`,`content_default`,`emote`,`type`) VALUES 
(2000001066,'Soldier! Front and center!',22,0),
(2000001067,'SIR! YES, SIR! Reporting for duty, sir!',66,0),
(2000001068,'At ease, Private. I have a mission for you. The last messenger I sent to Nethergarde didn''t make it. We found his entrails scattered about the bone road a few hours ago. We suspect it may have been legion or fel orc, maybe even Horde...',1,0),
(2000001069,'I need this message delivered to Watch Commander Netherwane at Nethergarde Keep. There''s a commendation in it for you if you make it... Your horse is waiting at the stables. Dismissed!',1,0),
(2000001070,'Sir, yes sir! Private will do their best to not die, sir!',66,0),
(2000001071,'ONWARD!',25,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 5790401 AND 5790404;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`dataint2`,`dataint3`,`o`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES

-- Starting point
(5790401,0,32,1,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Pause Waypoints'),
(5790401,0,1,69,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Use Emote State'),
(5790401,310,36,0,0,0,0,0,0,16830,15,0,'Field Commander Romus - Face Nethergarde/Stormwind Infantry'),
(5790401,311,0,0,0,2000001066,0,0,0,16830,15,0,'Field Commander Romus - Say'),
(5790401,315,36,1,0,0,0,0,0,16830,15,0,'Field Commander Romus - Reset facing'),
(5790401,315,25,1,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Set Run'),
(5790401,316,1,0,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Turn off Use Emote State'),
(5790401,316,32,0,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - UnPause Waypoints'),

-- Commander Romus speech
(5790402,0,32,1,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Pause Waypoints'),
(5790402,1,0,0,0,2000001067,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Say'),
(5790402,5,1,66,0,0,0,0,0,16830,5,0,'Field Commander Romus - Salute Emote'),
(5790402,9,0,0,0,2000001068,0,0,0,16830,5,0,'Field Commander Romus - Say'),
(5790402,14,1,274,0,0,0,0,0,16830,5,0,'Field Commander Romus - No Emote'),
(5790402,18,1,25,0,0,0,0,0,16830,5,0,'Field Commander Romus - Point Emote'),
(5790402,23,0,0,0,2000001069,0,0,0,16830,5,0,'Field Commander Romus - Say'),
(5790402,30,1,66,0,0,0,0,0,16830,5,0,'Field Commander Romus - Salute Emote'),
(5790402,34,0,0,0,2000001070,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Say'),
(5790402,38,32,0,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - UnPause Waypoints'),

-- Stables
(5790403,0,32,1,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Pause Waypoints'),
(5790403,2,24,14583,0,0,0,0,0,0,0,8,'Nethergarde/Stormwind Infantry - Mount'),
(5790403,2,3,14583,0,0,0,0,4.671405,0,0,0,'Nethergarde/Stormwind Infantry - Change orientation'),
(5790403,4,0,0,0,2000001071,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Say'),
(5790403,6,32,0,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - UnPause Waypoints'),

-- Despawn at Pit Commander
(5790404,0.5,18,0,0,0,0,0,0,0,0,0,'Nethergarde/Stormwind Infantry - Despawn Self');

SET @GUID := 57904;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID; -- ,`position_x`=-691.2068,`position_y`=2612.307,`position_z`=86.82053
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,@POINT := @POINT + '1',-685.791992,2613.540039,86.794296,1000,5790401,5.759590), -- Use emote for 5 minutes (300000) Delay set in script
(@GUID,@POINT := @POINT + '1',-687.472229,2616.658447,86.710960,0,0,0),
(@GUID,@POINT := @POINT + '1',-682.574829,2620.803711,88.151718,0,0,0),
(@GUID,@POINT := @POINT + '1',-676.642761,2615.959961,86.981232,0,0,0),
(@GUID,@POINT := @POINT + '1',-674.329407,2609.616699,86.322594,0,0,0),
(@GUID,@POINT := @POINT + '1',-675.306641,2605.604004,86.210304,0,0,0),
(@GUID,@POINT := @POINT + '1',-676.763794,2605.120850,86.379608,1000,5790402,3.536410), -- Commander Romus
(@GUID,@POINT := @POINT + '1',-674.549683,2611.720947,86.483368,0,0,0),
(@GUID,@POINT := @POINT + '1',-678.310547,2638.740234,88.703293,0,0,0),
(@GUID,@POINT := @POINT + '1',-679.028748,2664.635742,89.741463,0,0,0),
(@GUID,@POINT := @POINT + '1',-671.325989,2676.265869,89.416718,0,0,0),
(@GUID,@POINT := @POINT + '1',-674.344604,2693.288086,93.091721,0,0,0),
(@GUID,@POINT := @POINT + '1',-674.599670,2743.367676,93.920700,500,5790403,1.521863), -- Stables
(@GUID,@POINT := @POINT + '1',-677.643127,2704.469238,95.054634,0,0,0),
(@GUID,@POINT := @POINT + '1',-671.842590,2677.694092,89.490532,0,0,0),
(@GUID,@POINT := @POINT + '1',-678.045410,2645.686279,89.096954,0,0,0),
(@GUID,@POINT := @POINT + '1',-669.998047,2623.258789,86.624306,0,0,0),
(@GUID,@POINT := @POINT + '1',-655.739563,2598.554443,84.029610,0,0,0),
(@GUID,@POINT := @POINT + '1',-632.641663,2565.597412,78.746429,0,0,0),
(@GUID,@POINT := @POINT + '1',-607.324219,2522.187744,67.821083,0,0,0),
(@GUID,@POINT := @POINT + '1',-595.335815,2388.799805,41.003193,0,0,0),
(@GUID,@POINT := @POINT + '1',-581.345642,2342.467773,36.629642,0,0,0),
(@GUID,@POINT := @POINT + '1',-550.296387,2303.856445,38.000889,0,0,0),
(@GUID,@POINT := @POINT + '1',-362.033478,2212.660156,65.475555,0,0,0),
(@GUID,@POINT := @POINT + '1',-312.921783,2189.765137,68.706818,0,0,0),
(@GUID,@POINT := @POINT + '1',-225.342789,2145.467285,80.624886,0,0,0),
(@GUID,@POINT := @POINT + '1',-212.901291,2050.899658,95.679672,0,0,0),
(@GUID,@POINT := @POINT + '1',-219.452209,1999.933472,97.980362,0,0,0),
(@GUID,@POINT := @POINT + '1',-218.855148,1909.651855,95.992867,0,0,0),
(@GUID,@POINT := @POINT + '1',-216.886719,1809.921631,84.503563,0,0,0),
(@GUID,@POINT := @POINT + '1',-198.987488,1711.623169,56.695255,0,0,0),
(@GUID,@POINT := @POINT + '1',-205.837692,1576.815308,29.152548,0,0,0),
(@GUID,@POINT := @POINT + '1',-236.891464,1449.709106,14.442049,0,0,0),
(@GUID,@POINT := @POINT + '1',-250.994446,1381.184204,10.943465,0,0,0),
(@GUID,@POINT := @POINT + '1',-245.435089,1312.707642,17.504017,0,0,0),
(@GUID,@POINT := @POINT + '1',-242.646530,1225.579590,32.766041,0,0,0),
(@GUID,@POINT := @POINT + '1',-246.733353,1189.487305,42.817516,5000,5790404,4.803368); -- Pit Commander

-- ----------------------------------------------------------
-- Magus Filinthus
-- ----------------------------------------------------------

-- Move the barkeep slightly to prevent his emotes from going through the table.
-- UPDATE `creature` SET `position_x`=-708.8249,`position_y`=2740.1203,`position_z`=94.7337 WHERE `guid`=57884;

UPDATE `creature_template` SET `extraflags`=16386 WHERE `entry`=16821; -- Civilian + ignore mmaps because of stairs messing up the movement otherwise. Old value: 2

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001072 AND 2000001083;
INSERT INTO `db_script_string` (`entry`,`content_default`,`emote`) VALUES 
(2000001072,'What now, Danath? Can you not see that I am imundated with work as is?',6), -- Question
(2000001073,'I take my leave now, Commander. Good day!',1), -- Talk
(2000001074,'A mailbox? Well is that not the salt on the wounds! Twenty years cut-off from the world and now a mailbox! WONDERFUL!',5), -- Exclamation
(2000001075,'Sid! Ale, NOW!',22), -- Shout
(2000001076,'Comin'' right up, yer highness! Is there anythin'' else you''ll be needin''? Perhaps yer hat cleaned or yer nails trimmed?',22), -- Shout
(2000001077,'Don''t you start with me, Sid! Have it sent to my quarters in the tower instead! Your inn has become a zoo!',5), -- Exclamation
(2000001078,'Twenty years lost! Twenty! I won''t stand for this! No, no, no...',5), -- Random text 1
(2000001079,'What manner of fools opens the very thing we were sent to close?',5), -- Random text 2
(2000001080,'To trust an orc? Even if it is the progeny of Durotan himself! This is madness!',5), -- Random text 3
(2000001081,'Never! I''ll never abide by their will! I''d sooner be dead.',5), -- Random text 4
(2000001082,'I have a good mind to tear down that portal myself! This is outrageous!',5), -- Random text 5
(2000001083,'And have you heard? Have you heard the preposterous claims? Alliance and Horde supporting peace? Why the very thought of such things makes my blood boil!',5); -- Random text 6

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 5787900 AND 5787907;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(5787901,0,0,0,0,2000001072,0,0,0,'Magus Filinthus - What now, Danath? Can you not see that I am imundated with work as is?'),
(5787901,3,1,1,0,0,0,0,0,'Magus Filinthus - Talk emote'),
(5787902,0,0,0,0,2000001073,0,0,0,'Magus Filinthus - I take my leave now, Commander. Good day!'),
(5787902,4,1,66,0,0,0,0,0,'Magus Filinthus - Salute emote'),
(5787904,0,0,0,0,2000001074,0,0,0,'Magus Filinthus - Mailbox speech'),
(5787905,0,32,1,0,0,0,0,0,'Magus Filinthus - Pause Waypoints'),
(5787905,0,0,0,0,2000001075,0,0,0,'Magus Filinthus - Sid! Ale, NOW!'),
(5787905,4,0,0,0,2000001076,16826,20,7,'[Buddy: 16826]Sid - Comin'' right up, yer highness! Is there anythin'' else you''ll be needin''? Perhaps yer hat cleaned or yer nails trimmed?'),
(5787905,10,1,14,0,0,16826,20,7,'[Buddy: 16826]Sid - Rude emote'),
(5787905,14,0,0,0,2000001077,0,0,0,'Magus Filinthus - Don''t you start with me, Sid! Have it sent to my quarters in the tower instead! Your inn has becoma a zoo!'),
(5787905,18,1,14,0,0,0,0,0,'Magus Filinthus - Rude emote'),
(5787905,23,15,7791,1,0,0,0,0,'Magus Filinthus - Cast teleport on self'),
(5787905,25,18,0,1,0,0,0,0,'Magus Filinthus - Despawn self');

-- Random texts
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`dataint`,`dataint2`,`dataint3`,`comments`) VALUES
(5787906,0,0,2000001078,2000001079,2000001080,'Magus Filinthus - Random texts 1-3'),
(5787907,0,0,2000001081,2000001082,2000001083,'Magus Filinthus - Random texts 4-6');

-- Pathing for  Entry: 16821 'TDB FORMAT'
SET @GUID := 57879;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`spawntimesecs`=30,`position_x`=-779.6566,`position_y`=2749.112,`position_z`=155.3301 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`,`script_id`) VALUES
(@GUID,@POINT := @POINT + '1',-779.6566,2749.112,155.3301,0,0,0), -- 01:49:23
(@GUID,@POINT := @POINT + '1',-772.6121,2754.952,155.5087,0,0,0), -- 01:49:28
(@GUID,@POINT := @POINT + '1',-771.3204,2764.6318,155.2341,0,0,0), -- 01:49:28 --Added
(@GUID,@POINT := @POINT + '1',-773.6816,2768.407,155.4837,0,0,0), -- 01:49:31
(@GUID,@POINT := @POINT + '1',-777.0079,2765.431,154.8024,0,0,0), -- 01:49:37
(@GUID,@POINT := @POINT + '1',-778.0384,2762.6423,153.2189,0,0,0), -- 01:49:37
(@GUID,@POINT := @POINT + '1',-779.8215,2762.42,153.0081,0,0,0), -- 01:49:40
(@GUID,@POINT := @POINT + '1',-782.2388,2762.958,151.1028,0,0,0), -- 01:49:42
(@GUID,@POINT := @POINT + '1',-782.7231,2765.576,150.01,0,0,0), -- 01:49:43
(@GUID,@POINT := @POINT + '1',-781.5016,2767.298,148.831,0,0,0), -- 01:49:45
(@GUID,@POINT := @POINT + '1',-778.6078,2766.317,147.1977,0,0,0), -- 01:49:46
(@GUID,@POINT := @POINT + '1',-774.1761,2765.54,146.6277,0,0,0), -- 01:49:48
(@GUID,@POINT := @POINT + '1',-775.8586,2768.62,146.7117,0,0,0), -- 01:49:49
(@GUID,@POINT := @POINT + '1',-779.1277,2771.878,146.7474,0,0,0), -- 01:49:52
(@GUID,@POINT := @POINT + '1',-789.3788,2773.089,146.7321,0,0,0), -- 01:49:54
(@GUID,@POINT := @POINT + '1',-790.3833,2772.747,146.7375,0,0,0), -- 01:49:58
(@GUID,@POINT := @POINT + '1',-794.7836,2766.801,146.7466,0,0,0), -- 01:50:00
(@GUID,@POINT := @POINT + '1',-794.671,2761.858,145.4243,0,0,0), -- 01:50:03
(@GUID,@POINT := @POINT + '1',-790.5088,2758.7980,142.5738,0,0,0), -- 01:50:04 -- Added
(@GUID,@POINT := @POINT + '1',-786.6111,2759.94,141.743,0,0,0), -- 01:50:06
(@GUID,@POINT := @POINT + '1',-791.4205,2768.945,137.747,0,0,0), -- 01:50:08
(@GUID,@POINT := @POINT + '1',-793.6792,2769.299,137.5086,0,0,0), -- 01:50:14
(@GUID,@POINT := @POINT + '1',-797.2106,2760.471,134.9409,0,0,5787906), -- 01:50:15d
(@GUID,@POINT := @POINT + '1',-794.3986,2755.097,134.4531,0,0,0), -- 01:50:19
(@GUID,@POINT := @POINT + '1',-793.0892,2753.0029,134.1123,0,0,0), -- 01:50:19
(@GUID,@POINT := @POINT + '1',-785.8677,2757.643,132.4443,0,0,0), -- 01:50:22
(@GUID,@POINT := @POINT + '1',-784.1951,2759.4938,131.4428,0,0,0), -- 01:50:27 --added
(@GUID,@POINT := @POINT + '1',-783.5496,2757.546,131.6365,0,0,0), -- 01:50:27
(@GUID,@POINT := @POINT + '1',-781.3209,2756.4289,131.2748,0,0,0), -- 01:50:27 --added
(@GUID,@POINT := @POINT + '1',-777.0540,2760.9504,128.6305,0,0,0), -- 01:50:27 --added
(@GUID,@POINT := @POINT + '1',-777.4893,2761.395,128.855,0,0,0), -- 01:50:30
(@GUID,@POINT := @POINT + '1',-777.1847,2764.6511,126.5837,0,0,0), -- 01:50:32
(@GUID,@POINT := @POINT + '1',-778.3436,2765.721,126.1166,0,0,0), -- 01:50:32
(@GUID,@POINT := @POINT + '1',-777.7507,2769.801,125.8422,0,0,0), -- 01:50:34
(@GUID,@POINT := @POINT + '1',-774.1144,2767.114,125.1236,0,0,0), -- 01:50:36
(@GUID,@POINT := @POINT + '1',-772.84,2760.124,122.5914,0,0,0), -- 01:50:38
(@GUID,@POINT := @POINT + '1',-773.5005,2757.315,121.4295,0,0,0), -- 01:50:42
(@GUID,@POINT := @POINT + '1',-777.4531,2752.7463,120.8468,0,0,0), -- 01:50:50 --added
(@GUID,@POINT := @POINT + '1',-776.1379,2749.887,120.9658,0,0,0), -- 01:50:44
(@GUID,@POINT := @POINT + '1',-774.0491,2746.545,121.0984,0,0,0), -- 01:50:47
(@GUID,@POINT := @POINT + '1',-765.1492,2734.124,120.8622,0,0,0), -- 01:50:50
(@GUID,@POINT := @POINT + '1',-758.4291,2725.751,116.7763,0,0,0), -- 01:50:56
(@GUID,@POINT := @POINT + '1',-750.1381,2711.114,110.9275,0,0,0), -- 01:51:00
(@GUID,@POINT := @POINT + '1',-739.2902,2697.994,105.4595,0,0,0), -- 01:51:06
(@GUID,@POINT := @POINT + '1',-729.8958,2685.469,100.1962,0,0,5787907), -- 01:51:13
(@GUID,@POINT := @POINT + '1',-719.428,2674.712,95.68393,0,0,0), -- 01:51:21
(@GUID,@POINT := @POINT + '1',-722.2224,2666.956,94.55554,0,0,0), -- 01:51:27
(@GUID,@POINT := @POINT + '1',-738.5777,2658.926,97.63875,0,0,0), -- 01:51:33
(@GUID,@POINT := @POINT + '1',-753.056,2652.202,104.9079,0,0,0), -- 01:51:39
(@GUID,@POINT := @POINT + '1',-759.6188,2648.154,108.1811,0,0,0), -- 01:51:46
(@GUID,@POINT := @POINT + '1',-781.7079,2634.436,108.0559,0,0,0), -- 01:51:51
(@GUID,@POINT := @POINT + '1',-787.824,2630.978,107.8018,0,0,0), -- 01:51:59
(@GUID,@POINT := @POINT + '1',-795.3052,2633.888,108.4713,0,0,0), -- 01:52:03
(@GUID,@POINT := @POINT + '1',-797.6466,2637.246,109.4505,0,0,0), -- 01:52:07
(@GUID,@POINT := @POINT + '1',-802.5181,2644.344,109.4217,0,0,0), -- 01:52:10
(@GUID,@POINT := @POINT + '1',-806.1069,2646.608,109.422,0,0,0), -- 01:52:13
(@GUID,@POINT := @POINT + '1',-811.4109,2638.948,109.422,0,0,0), -- 01:52:15
(@GUID,@POINT := @POINT + '1',-807.3386,2630.296,109.422,0,0,0), -- 01:52:18
(@GUID,@POINT := @POINT + '1',-804.3088,2620.307,109.422,0,0,0), -- 01:52:24
(@GUID,@POINT := @POINT + '1',-805.9506,2616.556,109.422,0,0,0), -- 01:52:26
(@GUID,@POINT := @POINT + '1',-812.9794,2612.111,109.422,0,0,0), -- 01:52:30
(@GUID,@POINT := @POINT + '1',-815.412,2612.896,109.6071,0,0,0), -- 01:52:31
(@GUID,@POINT := @POINT + '1',-818.4614,2617.128,113.1964,0,0,0), -- 01:52:35
(@GUID,@POINT := @POINT + '1',-818.1932,2619.4772,113.1008,0,0,5787906), -- 01:52:36
(@GUID,@POINT := @POINT + '1',-813.9753,2622.237,115.535,0,0,0), -- 01:52:36
(@GUID,@POINT := @POINT + '1',-807.1000,2626.0339,117.9942,0,0,0), -- 01:52:40
(@GUID,@POINT := @POINT + '1',-811.0223,2634.018,118.2438,0,0,0), -- 01:52:42
(@GUID,@POINT := @POINT + '1',-808.3665,2638.212,118.512,0,0,0), -- 01:52:46
(@GUID,@POINT := @POINT + '1',-797.8145,2645.19,123.2433,0,0,0), -- 01:52:49
(@GUID,@POINT := @POINT + '1',-794.114,2639.995,123.3454,0,0,0), -- 01:52:53
(@GUID,@POINT := @POINT + '1',-791.9308,2630.846,123.3454,0,0,0), -- 01:52:59
(@GUID,@POINT := @POINT + '1',-792.4211,2630.415,123.3454,0,0,0), -- 01:53:00
(@GUID,@POINT := @POINT + '1',-805.3203,2621.029,124.4923,0,0,0), -- 01:53:05 --
(@GUID,@POINT := @POINT + '1',-808.9996,2618.0412,124.3892,8000,3.751588,5787901), -- 01:53:05 -- Greet commander
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:53:24
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:53:26
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:53:29
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:53:32
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:53:35
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:53:38
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:53:41
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:53:44
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,5787907), -- 01:53:47
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:53:50
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:53:53
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:53:56
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:53:59
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:03
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:54:05
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:09
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:54:12
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:15
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:54:18
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:22
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:54:25
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:28
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:54:31
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:34
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:54:37
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:40
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:54:43
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:46
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,5787906), -- 01:54:49
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:53
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:54:56
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:54:59
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:02
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:05
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:08
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:11
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:14
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:17
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:19
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:23
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:26
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:29
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:32
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:35
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:38
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:41
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:44
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:47
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,5787907), -- 01:55:50
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:55:53
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:55:56
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:00
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:02
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:06
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:09
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:12
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:15
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:19
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:22
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:25
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:27
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:30
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:34
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:36
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:39
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:42
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:45
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:48
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:56:51
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:56:55
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,5787906), -- 01:56:58
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:01
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:04
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:07
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:10
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:13
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:16
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:19
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:22
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:25
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:29
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:32
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:35
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:38
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:42
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:45
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:48
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:57:51
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:57:54
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,5787907), -- 01:57:57
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:58:01
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:58:03
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:58:06
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:58:09
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:58:12
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:58:16
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:58:19
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:58:22
(@GUID,@POINT := @POINT + '1',-811.1351,2621.082,124.3893,0,0,0), -- 01:58:25
(@GUID,@POINT := @POINT + '1',-807.5905,2614.945,124.3893,0,0,0), -- 01:58:25 -----
(@GUID,@POINT := @POINT + '1',-810.0437,2617.4189,124.3892,6000,3.751588,5787902), -- 01:58:25 -- Added -- Leave commander speech
(@GUID,@POINT := @POINT + '1',-793.5458,2626.9306,123.0957,0,0,0), -- 01:58:25
(@GUID,@POINT := @POINT + '1',-788.4716,2626.819,123.1638,0,0,0), -- 01:58:34
(@GUID,@POINT := @POINT + '1',-782.2244,2621.667,123.3454,0,0,0), -- 01:58:39
(@GUID,@POINT := @POINT + '1',-780.3174,2616.45,123.3454,0,0,0), -- 01:58:43
(@GUID,@POINT := @POINT + '1',-790.2454,2608.325,118.2946,0,0,0), -- 01:58:45
(@GUID,@POINT := @POINT + '1',-794.4955,2607.6281,117.9941,0,0,0), -- 01:59:01
(@GUID,@POINT := @POINT + '1',-798.1478,2612.605,118.2438,0,0,5787906), -- 01:58:51
(@GUID,@POINT := @POINT + '1',-807.2708,2626.073,118.2438,0,0,0), -- 01:58:56
(@GUID,@POINT := @POINT + '1',-819.8717,2618.3537,113.1008,0,0,0), -- 01:58:56
(@GUID,@POINT := @POINT + '1',-813.6469,2610.71,109.5707,0,0,0), -- 01:59:07
(@GUID,@POINT := @POINT + '1',-803.081,2616.339,109.3586,0,0,0), -- 01:59:12
(@GUID,@POINT := @POINT + '1',-797.3878,2613.336,109.422,0,0,0), -- 01:59:18
(@GUID,@POINT := @POINT + '1',-792.3141,2606.875,109.422,0,0,0), -- 01:59:20
(@GUID,@POINT := @POINT + '1',-785.1685,2607.075,109.422,0,0,0), -- 01:59:25
(@GUID,@POINT := @POINT + '1',-785.0612,2615.707,109.422,0,0,0), -- 01:59:29
(@GUID,@POINT := @POINT + '1',-788.5981,2624.276,108.1702,0,0,0), -- 01:59:33
(@GUID,@POINT := @POINT + '1',-788.9245,2628.7475,107.6733,0,0,0), -- 01:59:37
(@GUID,@POINT := @POINT + '1',-777.4222,2636.925,108.1835,0,0,5787907), -- 01:59:43
(@GUID,@POINT := @POINT + '1',-755.5909,2652.344,105.7743,0,0,0), -- 01:59:50
(@GUID,@POINT := @POINT + '1',-729.4761,2658.79,95.0219,0,0,0), -- 01:59:56
(@GUID,@POINT := @POINT + '1',-719.9623,2672.204,95.05917,0,0,0), -- 02:00:07
(@GUID,@POINT := @POINT + '1',-710.0211,2678.701,94.40421,0,0,0), -- 02:00:14
(@GUID,@POINT := @POINT + '1',-705.699,2697.925,94.76318,8000,1.780228,5787904), -- 02:00:19 --Mailbox speech
(@GUID,@POINT := @POINT + '1',-709.0976,2699.6367,94.3927,0,0,0), -- 02:00:31
(@GUID,@POINT := @POINT + '1',-710.2797,2710.86,94.97627,0,0,0), -- 02:00:36
(@GUID,@POINT := @POINT + '1',-701.8185,2714.304,94.98135,0,0,0), -- 02:00:38
(@GUID,@POINT := @POINT + '1',-702.9014,2721.559,94.42241,0,0,0), -- 02:00:41
(@GUID,@POINT := @POINT + '1',-703.3703,2722.376,94.11028,1000,1.956942,5787905); -- 02:00:45 -- 
-- 0x203CD04240106D40002FF700007AD777 .go -779.6566 2749.112 155.3301