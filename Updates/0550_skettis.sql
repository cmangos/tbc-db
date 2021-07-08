/* DBScriptData
DBName: Skettis & Ogri'la
DBScriptName: multiple cpp scripts
DB%Complete: 30
DBComment:
-- TODO Entry: 21911 Low: 2306423 APPEARS TO BE
-- https://imgur.com/a/rPDFy
-- Recheck data for Skettis Wing Guard - 21644. Some of the escort quest spawns may have snuck in. Most likely using Tobschinskis public data will be fine instead. If so, just remove the added spawns from this file.
EndDBScriptData */

/*
-- Overview Research

-- Creatures

-- Skettis Wing Guard - 21644
-- Skettis Windwalker - 21649
-- Skettis Talonite - 21650
-- Time-Lost Skettis Reaver - 21651????
-- Skettis Time-Shifter - 21652
-- Skettis Followers Spawner - 21654
-- Time-Lost Skettis Worshipper - 21763
-- Time-Lost Skettis High Priest - 21787
-- Skettis Kneel Target 01 - 21791
-- Skettis Kneel Target 02 - 21792
-- Skettis Kneel Target 03 - 21793
-- Skettis Arakkoa Spell Origin 01 - 21794
-- Skettis Arakkoa Spell Origin 02 - 21855
-- Skettis Kneel Target 04 - 21856
-- Skettis Eviscerator - 21985
-- Skettis Soulcaller - 21911
-- Skettis Sentinel - 21912
-- Skettis - Invis Raven Stone - 22986
-- Monstrous Kaliri Egg Trigger - 22991
-- Invis Sparrowhawk Origin - 22974
-- Darkscreecher Akkarai 23161
-- Vakkiz the Windrager 23162
-- Gezzarak the Huntress 23163
-- Karrog 23165
-- Sahaak <Keeper of Scrolls> 23363

-- Gameobjects

-- Monstrous Kaliri Egg 185549
-- Skull Pile 185913
-- Ancient Skull Pile 185928
*/

SET @CGUID := 242000;  -- creatures
SET @OGUID := 242000; -- gameobjects
-- SET @PGUID := XXX; -- pools

-- =========
-- CREATURES
-- =========

-- Blackwing Landing

-- Skyguard Scout Patrol

-- remove static mount, this is added dynamically (mount to Skyguard Nether Ray - entry 22987 via dbscript instead)
UPDATE creature_template_addon SET mount=0 WHERE entry=22980; -- 21158

-- not flying at the start
-- SpeedRun possibly 15/7 when flying?
UPDATE creature_template SET SpeedRun=(12/7), UnitFlags=32768, InhabitType=1 WHERE entry=22980;

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2298001,2298002,2298003);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2298001, 1000, 39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Fly On'),
(2298001, 1000, 39, 1, 0, 0, 22980, 78998, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Fly On'),
(2298001, 1000, 39, 1, 0, 0, 22980, 78999, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Fly On'),
(2298001, 2000, 24, 22987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Mount'),
(2298001, 2000, 24, 22987, 0, 0, 22980, 78998, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Mount'),
(2298001, 2000, 24, 22987, 0, 0, 22980, 78999, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Mount'),
(2298001, 4000, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Run On'),
(2298001, 4000, 25, 1, 0, 0, 22980, 78998, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Run On'),
(2298001, 4000, 25, 1, 0, 0, 22980, 78999, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Run On'),

(2298002, 0000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Run Off'),
(2298002, 0000, 25, 0, 0, 0, 22980, 78998, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Run Off'),
(2298002, 0000, 25, 0, 0, 0, 22980, 78999, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Run Off'),

(2298003, 0000, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Fly Off'),
(2298003, 0000, 39, 0, 0, 0, 22980, 78998, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Fly Off'),
(2298003, 0000, 39, 0, 0, 0, 22980, 78999, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout - Set Fly Off'),
(2298003, 1000, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout- Dismount'),
(2298003, 3000, 24, 0, 0, 0, 22980, 78998, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout- Dismount'),
(2298003, 3000, 24, 0, 0, 0, 22980, 78999, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Skyguard Scout- Dismount');

-- Pathing for Skyguard Scout Entry: 22980
UPDATE `creature` SET `spawndist`=0, `MovementType`=2, `position_x`=-3360.029, `position_y`=3626.072, `position_z`=282.5948, orientation=1.5973, spawntimesecsmin=10, spawntimesecsmax=10 WHERE `guid`=79000;
DELETE FROM `creature_movement` WHERE `id`=79000;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`, `orientation`, `waittime`, `script_id`) VALUES
(79000,1,-3360.029,3626.072,282.5948,100,0,0),
(79000,2,-3365.068,3649.966,284.633,-0.1434981,3000,2298001),
(79000,3,-3362.276,3650.026,291.0036,100,0,0),
(79000,4,-3325.822,3639.978,291.9625,100,0,0),
(79000,5,-3317.236,3631.376,294.0752,100,0,0),
(79000,6,-3315.52,3620.126,298.4698,100,0,0),
(79000,7,-3319.855,3606.906,305.045,100,0,0),
(79000,8,-3325.363,3594.582,310.3224,100,0,0),
(79000,9,-3332.124,3584.647,314.7705,100,0,0),
(79000,10,-3344.189,3580.699,316.1764,100,0,0),
(79000,11,-3359.927,3579.208,317.2711,100,0,0),
(79000,12,-3374.942,3576.391,315.744,100,0,0),
(79000,13,-3388.933,3572.653,312.2269,100,0,0),
(79000,14,-3403.111,3570.268,309.8552,100,0,0),
(79000,15,-3418.395,3568.924,308.6242,100,0,0),
(79000,16,-3430.234,3569.661,308.2654,100,0,0),
(79000,17,-3440.633,3577.663,309.2992,100,0,0),
(79000,18,-3444.663,3587.792,310.9733,100,0,0),
(79000,19,-3440.342,3599.956,312.9632,100,0,0),
(79000,20,-3431.255,3611.706,314.6942,100,0,0),
(79000,21,-3420.302,3621.741,316.0444,100,0,0),
(79000,22,-3408.174,3630.403,317.0352,100,0,0),
(79000,23,-3397.201,3635.26,316.9998,100,0,0),
(79000,24,-3383.396,3632.26,315.6172,100,0,0),
(79000,25,-3367.627,3629.655,313.802,100,0,0),
(79000,26,-3352.286,3633.077,311.5085,100,0,0),
(79000,27,-3337.759,3639.175,309.4601,100,0,0),
(79000,28,-3325.732,3649.559,308.9855,100,0,0),
(79000,29,-3317.573,3663.949,310.7388,100,0,0),
(79000,30,-3314.669,3679.208,309.5195,100,0,0),
(79000,31,-3321.48,3693.717,307.6471,100,0,0),
(79000,32,-3331.736,3704.516,308.9377,100,0,0),
(79000,33,-3343.862,3715.846,313.2331,100,0,0),
(79000,34,-3358.442,3722.651,317.1931,100,0,0),
(79000,35,-3371.513,3715.965,319.2596,100,0,0),
(79000,36,-3382.648,3702.666,320.6953,100,0,0),
(79000,37,-3390.615,3689.254,321.194,100,0,0),
(79000,38,-3394.02,3673.099,319.8908,100,0,0),
(79000,39,-3392.427,3658.499,317.6282,100,0,0),
(79000,40,-3392.193,3644.147,315.6761,100,0,0),
(79000,41,-3392.313,3629.637,313.6498,100,0,0),
(79000,42,-3392.555,3614.103,311.2933,100,0,0),
(79000,43,-3392.956,3598.621,309.0099,100,0,0),
(79000,44,-3392.323,3583.405,307.8894,100,0,0),
(79000,45,-3387.777,3567.207,309.1995,100,0,0),
(79000,46,-3374.557,3562.636,312.7225,100,0,0),
(79000,47,-3357.774,3562.12,316.5208,100,0,0),
(79000,48,-3342.627,3566.215,318.2323,100,0,0),
(79000,49,-3327.892,3574.425,315.921,100,0,0),
(79000,50,-3315.838,3583.849,314.126,100,0,0),
(79000,51,-3308.309,3598.241,313.3024,100,0,0),
(79000,52,-3311.718,3613.184,310.7515,100,0,0),
(79000,53,-3316.476,3626.887,306.0682,100,0,0),
(79000,54,-3324.023,3640.797,301.4348,100,0,0),
(79000,55,-3336.885,3649.864,295.9571,100,0,0),
(79000,56,-3362.276,3650.026,291.0036,100,1000,2298002),
(79000,57,-3365.068,3649.966,284.633,100,1000,2298003),
(79000,58,-3360.029,3626.072,282.5948,100,1000,1); -- despawn

-- followers in Skyguard Scout patrol
UPDATE creature SET position_x=-3363.2963, position_y=3623.805, position_z=281.398773, orientation=1.5973, spawntimesecsmin=10, spawntimesecsmax=10 WHERE guid=78998;
UPDATE creature SET position_x=-3355.8808, position_y=3624.071, position_z=282.932373, orientation=1.7339, spawntimesecsmin=10, spawntimesecsmax=10 WHERE guid=78999;

DELETE FROM creature_linking WHERE guid IN (79000,78998,78999);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(78998, 79000, 8192+512+128),
(78999, 79000, 8192+512+128);

-- Pathing for Skyguard Windcharger Entry: 23257
SET @GUID := 79026;
UPDATE `creature` SET `position_x`=-3384.45,`position_y`=3594.493,`position_z`=276.0302, MovementType=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-3384.45,3594.493,276.0302,100,0,0),
(@GUID,2,-3394.456,3585.79,276.173,100,0,0),
(@GUID,3,-3405.133,3581.515,276.6277,100,0,0),
(@GUID,4,-3423.228,3578.195,276.1986,100,0,0),
(@GUID,5,-3443.128,3576.691,275.843,100,0,0),
(@GUID,6,-3423.228,3578.195,276.1986,100,0,0),
(@GUID,7,-3405.133,3581.515,276.6277,100,0,0),
(@GUID,8,-3394.456,3585.79,276.173,100,0,0),
(@GUID,9,-3384.45,3594.493,276.0302,100,0,0);
-- 0x2016FC424016B64000001200001CF697 .go xyz -3384.45 3594.493 276.0302

-- Skyguard Handler follows this Nether Ray
DELETE FROM creature_linking WHERE guid IN (79010,79012);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(79012,79010,512);

-- Pathing for Skyguard Nether Ray Entry: 22987
SET @GUID := 79010;
UPDATE `creature` SET `position_x`=-3371.153,`position_y`=3649.568,`position_z`=284.6181, MovementType=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-3371.153,3649.568,284.6181,100,0,0),
(@GUID,2,-3376.776,3642.593,284.947,100,0,0),
(@GUID,3,-3381.763,3636.195,284.1784,100,0,0),
(@GUID,4,-3381.562,3625.659,278.5819,100,0,0),
(@GUID,5,-3384.018,3621.177,277.0539,100,0,0),
(@GUID,6,-3389.594,3619.394,276.1452,100,0,0),
(@GUID,7,-3393.573,3612.967,276.3592,100,0,0),
(@GUID,8,-3389.948,3604.947,276.0845,100,0,0),
(@GUID,9,-3390.845,3600.086,276.2776,100,0,0),
(@GUID,10,-3397.516,3596.896,276.809,100,0,0),
(@GUID,11,-3390.845,3600.086,276.2776,100,0,0),
(@GUID,12,-3389.948,3604.947,276.0845,100,0,0),
(@GUID,13,-3393.573,3612.967,276.3592,100,0,0),
(@GUID,14,-3389.594,3619.394,276.1452,100,0,0),
(@GUID,15,-3384.018,3621.177,277.0539,100,0,0),
(@GUID,16,-3381.562,3625.659,278.5819,100,0,0),
(@GUID,17,-3381.763,3636.195,284.1784,100,0,0),
(@GUID,18,-3376.776,3642.593,284.947,100,0,0),
(@GUID,19,-3372.374,3645.655,284.6181,100,0,0),
(@GUID,20,-3371.153,3649.568,284.6181,100,0,0);
-- 0x2016FC42401672C000001200001CF693 .go xyz -3371.153 3649.568 284.6181

-- Pathing for Skyguard Navigator Entry: 22982
SET @GUID := 79004;
UPDATE `creature` SET `position_x`=-3364.906,`position_y`=3658.905,`position_z`=284.633, MovementType=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-3364.906,3658.905,284.633,4.625123,11000,2298201),
(@GUID,2,-3365.847,3641.92,284.633,1.553343,13000,2298202);
-- 0x2016FC424016718000001200009CF693 .go xyz -3364.906 3658.905 284.633

-- non-moving creatures
-- These two Skyguard Nether Rays near Skyguard Handler Deesak / Skyguard Navigator
UPDATE creature SET `MovementType` = 0, `spawndist` = 0 WHERE guid IN (79005,79008,79009);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (2298201,2298202);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2298201,5000,1,397,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - OneShotPointNoSheathe',0,0,0,0),

(2298202,2000,1,397,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - OneShotPointNoSheathe',0,0,0,0),
(2298202,5000,1,113,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - OneShotSaluteNoSheath',0,0,0,0),
(2298202,9000,1,397,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - OneShotPointNoSheathe',0,0,0,0);

-- Skyguard Windchargers working with hammers
-- UNIT_VIRTUAL_ITEM_SLOT_ID: 2028
UPDATE creature SET equipment_id=50130 WHERE guid IN (79021,79022,79024);

-- q.11004 World of Shadows end script

DELETE FROM dbscript_string WHERE entry IN (2000008005,2000008006,2000008007,2000008008,2000008009,2000008010);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000008005, 'The elixir... give it to me, Severin!', 0, 0, 0, 0, 21083, 'Sky Commander Adaris - say 1'),
(2000008006, 'I see them now... assassins from Skettis!', 0, 0, 0, 25, 21084, 'Sky Commander Adaris - say 2'),
(2000008007, 'The arakkoa can send all the assassins they have... they will meet the same fate as these!', 0, 0, 0, 0, 21086, 'Sky Commander Adaris - say 3'),
(2000008008, 'Is this... blood in my lungs?  If I don''t die to an assassin''s blade, it''ll be my old injuries that get me.', 0, 0, 0, 0, 21094, 'Sky Commander Adaris - say 4'),
(2000008009, 'Adaris!', 0, 6, 0, 0, 21132, 'Severin - say 1'),
(2000008010, 'Rest now, friend.  You need your strength.', 0, 0, 0, 0, 21133, 'Severin - say 2');

DELETE FROM creature_movement_template WHERE entry IN (23038,23042);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23038, 0, 1, -3408.263, 3622.707, 278.0751, 14000, 2303801, 100),
(23038, 0, 2, -3401.909, 3618.288, 277.5359, 0, 0, 100),
(23038, 0, 3, -3401.054, 3617.369, 276.9967, 15000, 2303802, 100),
(23038, 0, 4, -3403.409, 3619.288, 278.0359, 0, 0, 100),
(23038, 0, 5, -3408.263, 3622.707, 278.0751, 12000, 2303803, 100),

(23042, 0, 1, -3402.505, 3621.085, 278.4731, 0, 0, 100),
(23042, 0, 2, -3402.022, 3619.692, 277.9206, 8000, 2304201, 100),
(23042, 0, 3, -3407.59, 3624.57, 278.075, 25000, 2304202, 4.55531);

UPDATE quest_template SET CompleteScript=11004 WHERE entry=11004;
DELETE FROM dbscripts_on_quest_end WHERE id=11004;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11004, 0, 20, 2, 0, 0, 23038, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - start waypoint movement');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2303801,2303802,2303803,2304201,2304202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2303801, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - npcflags removed'),
(2303801, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - run on'),
(2303801, 2000, 0, 0, 0, 0, 0, 0, 0, 2000008005, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - say 1'),
(2303801, 2000, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - kneel state'),
(2303801, 5000, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - stand state'),
(2303801, 7000, 0, 0, 0, 0, 0, 0, 0, 2000008006, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - say 2'),
(2303801, 0, 25, 1, 0, 0, 23042, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Severin - run on'),

-- UNIT_FIELD_BYTES_2: 1
(2303802, 0, 20, 2, 0, 0, 23042, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Severin - set waypoint movement type'),
(2303802, 0, 10, 23207, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -3401.089, 3615.253, 276.6685, 2.600541, 'summon Skettis Assassin 1'),
(2303802, 1000, 15, 40450, 0, 0, 23207, 15, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - cast Melee Instakill on Skettis Assassin'),
(2303802, 4000, 10, 23207, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -3398.547, 3617.472, 277.1355, 2.775074, 'summon Skettis Assassin 2'),
(2303802, 5000, 15, 40489, 0, 0, 23207, 15, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - cast Melee Instakill 2 on Skettis Assassin'),
(2303802, 10000, 0, 0, 0, 0, 0, 0, 0, 2000008007, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - say 3'),
(2303802, 10000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - run off'),

(2303803, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - set idle movement type'),
(2303803, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.794493, 'Sky Commander Adaris - set facing'),
(2303803, 1000, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - kneel state'),
(2303803, 5000, 0, 0, 0, 0, 0, 0, 0, 2000008008, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - say 4'),
(2303803, 11000, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - npcflags added'),
(2303803, 11000, 28, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sky Commander Adaris - sit state'),
-- UNIT_FIELD_BYTES_2: 0

(2304201, 0, 0, 0, 0, 0, 0, 0, 0, 2000008009, 0, 0, 0, 0, 0, 0, 0, 'Severin - say 1'),
(2304201, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Severin - run off'),

(2304202, 15000, 0, 0, 0, 0, 0, 0, 0, 2000008010, 0, 0, 0, 0, 0, 0, 0, 'Severin - say 2'),
(2304202, 15000, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Severin - kneel state'),
(2304202, 20000, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Severin - stand state'),
(2304202, 20000, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Severin - set idle movement type');

-- slight adjustment to 11004 start script
-- kneel stand state instead of emote for Severin
UPDATE dbscripts_on_quest_start SET command=28, datalong=8 WHERE id=11004 AND delay=7;
DELETE FROM dbscripts_on_quest_start WHERE id=11004 AND delay=12;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11004, 12000, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Severin - stand state');

-- Hungry Nether Rays (11093) does not require To Skettis! (11098)
UPDATE quest_template SET PrevQuestId=0 WHERE entry=11093;

 -- correct data for Hungry Nether Ray
UPDATE creature_template SET UnitFlags=776, Faction=35 WHERE entry=23439; -- Faction 2402

DELETE FROM `game_tele` WHERE `id`=423;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES 
(423, -3969.14, 3273.35, 289.079, 2.4174, 530, 'skettis');

-- -----------------------------------------
-- Skettis Wing Guard - 21644
-- -----------------------------------------
-- Already reworked by Tobschinski
-- https://github.com/cmangos/tbc-db/commit/4e33087e40ee8734499f05e3a010c08cc4abe207

-- -----------------------------------------
-- Skettis Windwalker - 21649
-- -----------------------------------------
UPDATE creature_template SET ModelId2=0 WHERE entry=21649;
DELETE FROM creature WHERE id=21649;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@CGUID+590, 21649, 530, 1, 0, 0, -4194.8, 3170.41, 317.686, 2.85419, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+591, 21649, 530, 1, 0, 0, -4179.07, 3211.85, 314.277, 6.13317, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+592, 21649, 530, 1, 0, 0, -4173.23, 3116.24, 322.085, 3.92023, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+593, 21649, 530, 1, 0, 0, -4115.69, 3052.84, 314.352, 5.44543, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+594, 21649, 530, 1, 0, 0, -4110.58, 3119.43, 319.222, 2.30383, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+595, 21649, 530, 1, 0, 0, -4095.32, 3349.39, 285.753, 0.0872665, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+596, 21649, 530, 1, 0, 0, -4095.24, 3187.52, 297.125, 4.72984, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+597, 21649, 530, 1, 0, 0, -4074.62, 3411.43, 296.01, 2.14675, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+598, 21649, 530, 1, 0, 0, -4019.05, 3276.68, 285.021, 3.4383, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+599, 21649, 530, 1, 0, 0, -3975.3, 3004.88, 362.166, 0.506145, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+600, 21649, 530, 1, 0, 0, -3958.68, 3250.24, 294.14, 1.55334, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+601, 21649, 530, 1, 0, 0, -3945.96, 3314.51, 288.136, 0.959931, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+602, 21649, 530, 1, 0, 0, -3917.48, 2985.62, 358.446, 0.890118, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+603, 21649, 530, 1, 0, 0, -3886.4, 3045.04, 358.224, 5.28835, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+604, 21649, 530, 1, 0, 0, -3884.6, 3001.95, 361.278, 5.09636, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+605, 21649, 530, 1, 0, 0, -3874.46, 3280.49, 275.767, 0.139626, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+606, 21649, 530, 1, 0, 0, -3801.33, 3785.97, 275.574, 1.58825, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+607, 21649, 530, 1, 0, 0, -3739.6, 3748.64, 273.822, 0.0698132, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+608, 21649, 530, 1, 0, 0, -3712.35, 3710.6, 277.875, 0.110485, 300, 300, 2, 0, 1, 1, 0, 1),
(@CGUID+609, 21649, 530, 1, 0, 0, -3674.94, 3319.43, 283.569, 2.60054, 300, 300, 0, 0, 1, 1, 0, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=2164901;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2164901,0,36,0,0,0,0,0,0,0,21855,10,1,'Skettis Windwalker - Face Skettis Arakkoa Spell Origin 02',0,0,0,0),
(2164901,1000,1,61,0,0,0,0,0,0,0,0,0,'Skettis Windwalker - OneShotAttackThrown',0,0,0,0),
(2164901,2000,15,38016,0,0,0,0,0,0,21855,10,7,'Skettis Arakkoa Spell Origin 02 - Cast Cosmetic - Flare Effect',0,0,0,0),
(2164901,5000,28,8,0,0,0,0,0,0,0,0,0,'Skettis Windwalker - Set Stand State Kneel',0,0,0,0),
(2164901,29000,28,0,0,0,0,0,0,0,0,0,0,'Skettis Windwalker - Set Stand State Stand',0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1000);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1000,0,1,0,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_NONE',0,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+590;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+590,1,-4179.62,3181.173,315.7611,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+591;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+591,1,-4175.357,3188.113,314.7921,1000,0,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+592;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+592,1,-4174.465,3115.02,322.5234,29000,2164901,2.965612);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+596;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+596,1,-4095.24,3187.52,297.125,5000,1001,4.72984);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+600;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+600,1,-3958.684,3250.24,294.1398,6000,1069,3.944444),
(@CGUID+600,2,-3958.684,3250.24,294.1398,90000,1000,1.553343);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+607;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+607,1,-3739.599,3748.644,273.8217,6000,1069,2.024582),
(@CGUID+607,2,-3739.599,3748.644,273.8217,90000,1000,0.06981317);

-- -----------------------------------------
-- Skettis Talonite - 21650
-- -----------------------------------------
UPDATE creature_template SET ModelId2=0 WHERE entry=21650;
DELETE FROM creature WHERE id=21650;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@CGUID+610, 21650, 530, 1, 0, 0, -4183.36, 3029.33, 314.302, 0.575959, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+611, 21650, 530, 1, 0, 0, -4181.77, 3061.55, 314.312, 5.61996, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+612, 21650, 530, 1, 0, 0, -4157.19, 3186.35, 313.9, 3.61283, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+613, 21650, 530, 1, 0, 0, -4126.36, 3018.32, 314.247, 2.60054, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+614, 21650, 530, 1, 0, 0, -4102.73, 3228.18, 299.193, 5.5676, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+615, 21650, 530, 1, 0, 0, -4049.66, 3189.33, 297.434, 2.98451, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+616, 21650, 530, 1, 0, 0, -4012.36, 3145.49, 310.758, 2.75762, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+617, 21650, 530, 1, 0, 0, -3988.89, 3031.76, 356.957, 0.0698132, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+618, 21650, 530, 1, 0, 0, -3978.2, 3045.67, 357.12, 5.3058, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+619, 21650, 530, 1, 0, 0, -3947.9, 2991.69, 359.297, 1.23918, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+620, 21650, 530, 1, 0, 0, -3922.63, 3117.9, 329.121, 0.750492, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+621, 21650, 530, 1, 0, 0, -3883.88, 3126.34, 329.123, 3.56047, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+622, 21650, 530, 1, 0, 0, -3828.96, 3288.91, 275.27, 6.01849, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+623, 21650, 530, 1, 0, 0, -3796.52, 3751.35, 278.421, 2.6529, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+624, 21650, 530, 1, 0, 0, -3748.89, 3299.41, 296.395, 4.29351, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+625, 21650, 530, 1, 0, 0, -3708.66, 3783.71, 270.607, 5.2709, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+626, 21650, 530, 1, 0, 0, -3691.04, 3778.15, 270.233, 3.56047, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+627, 21650, 530, 1, 0, 0, -3685.11, 3707.43, 277.898, 5.13127, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+628, 21650, 530, 1, 0, 0, -3679.73, 3371.85, 283.075, 0.610865, 300, 300, 0, 0, 1, 1, 0, 0);

-- -----------------------------------------
-- Time-Lost Skettis Reaver - 21651
-- -----------------------------------------
DELETE FROM creature WHERE id=21651;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@CGUID+629, 21651, 530, 1, 0, 0, -4201.81, 3048.26, 344.221, 1.76208, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+630, 21651, 530, 1, 0, 0, -4177.21, 3185.07, 315.629, 1.00967, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+631, 21651, 530, 1, 0, 0, -4176.98, 3038.34, 343.808, 5.29149, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+632, 21651, 530, 1, 0, 0, -4147.09, 3046.92, 315.049, 2.95859, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+633, 21651, 530, 1, 0, 0, -4111.81, 3034.16, 344.638, 3.31024, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+634, 21651, 530, 1, 0, 0, -4098.58, 3014.3, 344.29, 1.13446, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+635, 21651, 530, 1, 0, 0, -4059.92, 3269.66, 332.927, 2.58309, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+636, 21651, 530, 1, 0, 0, -4050.19, 3297.91, 332.937, 4.36716, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+637, 21651, 530, 1, 0, 0, -4002.44, 3127.34, 363.567, 3.76991, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+638, 21651, 530, 1, 0, 0, -3999.53, 3152.35, 362.616, 0.203149, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+639, 21651, 530, 1, 0, 0, -3998.12, 3293.52, 284.247, 5.86045, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+640, 21651, 530, 1, 0, 0, -3976.86, 3218.68, 333.897, 4.80584, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+641, 21651, 530, 1, 0, 0, -3946.89, 3222, 334.047, 0.0349066, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+642, 21651, 530, 1, 0, 0, -3920.75, 3017.95, 356.836, 2.41862, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+643, 21651, 530, 1, 0, 0, -3907.58, 3112.35, 328.537, 0.145149, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+644, 21651, 530, 1, 0, 0, -3899.07, 3679.88, 335.833, 2.61603, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+645, 21651, 530, 1, 0, 0, -3894.04, 3086.47, 374.747, 5.53269, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+646, 21651, 530, 1, 0, 0, -3893.43, 3075.96, 362.592, 3.08923, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+647, 21651, 530, 1, 0, 0, -3889.44, 3788.59, 334.885, 5.25344, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+648, 21651, 530, 1, 0, 0, -3885.38, 3110.65, 362.677, 6.02236, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+649, 21651, 530, 1, 0, 0, -3883.7, 3654.49, 336.01, 1.41372, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+650, 21651, 530, 1, 0, 0, -3882.51, 3753.75, 334.89, 1.07291, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+651, 21651, 530, 1, 0, 0, -3868.96, 3425.71, 324.907, 2.3911, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+652, 21651, 530, 1, 0, 0, -3862.81, 3671.75, 335.951, 2.47837, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+653, 21651, 530, 1, 0, 0, -3858.87, 3448.51, 325.247, 0.767945, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+654, 21651, 530, 1, 0, 0, -3852.98, 3322.64, 324.138, 0.606613, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+655, 21651, 530, 1, 0, 0, -3839.25, 3429.05, 325.135, 5.09467, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+656, 21651, 530, 1, 0, 0, -3725.2, 3785.74, 302.199, 2.23402, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+657, 21651, 530, 1, 0, 0, -3711.1, 3809.29, 302.272, 6.10865, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+658, 21651, 530, 1, 0, 0, -3691.58, 3290.75, 312.3, 5.70723, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+659, 21651, 530, 1, 0, 0, -3685.78, 3733.7, 279.515, 4.97419, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+660, 21651, 530, 1, 0, 0, -3681.63, 3315.34, 312.017, 0.468172, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+661, 21651, 530, 1, 0, 0, -3669.3, 3390.64, 312.961, 1.48353, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+662, 21651, 530, 1, 0, 0, -3647.5, 3383.45, 312.345, 4.2237, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+663, 21651, 530, 1, 0, 0, -3642.93, 3771.03, 302.04, 2.37989, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+664, 21651, 530, 1, 0, 0, -3629.47, 3753.76, 302.228, 3.42085, 300, 300, 0, 0, 1, 1, 0, 0);

-- Time-Lost Skettis Reaver 21651
UPDATE `creature_template_addon` SET `auras` = '33900 37411' WHERE `entry` = 21651;

-- -----------------------------------------
-- Skettis Time-Shifter - 21652
-- -----------------------------------------
DELETE FROM creature WHERE id=21652;
-- No known spawns

-- -----------------------------------------
-- Skettis Followers Spawner - 21654
-- -----------------------------------------
UPDATE `creature_template` SET `ModelId1` = 10553, `ModelId2` = 19595 WHERE `entry` = 21654; -- (Entry: 21654) has nonexistent modelid_2 (23501), can crash client - using placeholder
DELETE FROM creature WHERE id=21654;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@CGUID+665,21654,530,1,0,0,-4174.494,3182.326,316.5217,4.39823,300,300,0,0,1,1,0,0),
(@CGUID+666,21654,530,1,0,0,-4149.724,3044.972,316.4383,0.2443461,300,300,0,0,1,1,0,0),
(@CGUID+667,21654,530,1,0,0,-3689.8,3321.765,284.1857,0.7504916,300,300,0,0,1,1,0,0),
(@CGUID+668,21654,530,1,0,0,-3905.199,3114.472,329.5585,5.654867,300,300,0,0,1,1,0,0),
(@CGUID+669,21654,530,1,0,0,-3859.998,3300.146,275.396,4.590216,300,300,0,0,1,1,0,0),
(@CGUID+670,21654,530,1,0,0,-4000.492,3291.4,285.1487,5.427974,300,300,0,0,1,1,0,0),
(@CGUID+671,21654,530,1,0,0,-3810.797,3768.533,276.7052,1.204277,300,300,0,0,1,1,0,0),
(@CGUID+672,21654,530,1,0,0,-3688.07,3736.209,280.2419,4.206244,300,300,0,0,1,1,0,0);

-- -----------------------------------------
-- Time-Lost Skettis Worshipper - 21763
-- -----------------------------------------
DELETE FROM creature WHERE id=21763;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@CGUID+794, 21763, 530, 1, 0, 0, -4177.55, 3196.21, 314.085, 4.46985, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+795, 21763, 530, 1, 0, 0, -4137.55, 3024.84, 314.436, 1.54734, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+796, 21763, 530, 1, 0, 0, -4119.48, 3108.57, 318.43, 3.95394, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+797, 21763, 530, 1, 0, 0, -4094.43, 3222.03, 297.902, 5.62453, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+798, 21763, 530, 1, 0, 0, -4071.17, 3399.93, 294.319, 4.74176, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+799, 21763, 530, 1, 0, 0, -3996.29, 2984.32, 367.039, 1.81564, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+800, 21763, 530, 1, 0, 0, -3975.11, 3032.89, 356.752, 5.95292, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+801, 21763, 530, 1, 0, 0, -3957.93, 3307.35, 287.057, 4.80624, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+802, 21763, 530, 1, 0, 0, -3901.3, 3036, 357.732, 3.28064, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+803, 21763, 530, 1, 0, 0, -3890.99, 3472.83, 274.006, 2.32129, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+804, 21763, 530, 1, 0, 0, -3868.35, 3521.88, 278.561, 3.74946, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+805, 21763, 530, 1, 0, 0, -3858.2, 3322.09, 274.691, 5.33744, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+806, 21763, 530, 1, 0, 0, -3851.71, 3537.58, 278.888, 2.8145, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+807, 21763, 530, 1, 0, 0, -3849.33, 3785.17, 284.397, 0.154029, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+808, 21763, 530, 1, 0, 0, -3746.1, 3304.42, 295.558, 1.02207, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+809, 21763, 530, 1, 0, 0, -3700.15, 3774.08, 270.23, 3.48523, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+810, 21763, 530, 1, 0, 0, -3680.68, 3378.94, 282.735, 4.35098, 300, 300, 0, 0, 1, 1, 0, 0);

-- -----------------------------------------
-- Skettis Kneel Target 01 - 21791
-- -----------------------------------------
UPDATE creature_template SET ModelId1=4626, ModelId2=15880 WHERE entry=21791;
DELETE FROM creature WHERE id=21791;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@CGUID+673,21791,530,1,0,0,-4153.904,3045.927,315.857,4.031711,300,300,0,0,1,1,0,0),
(@CGUID+674,21791,530,1,0,0,-4175.116,3187.101,315.5777,5.497787,300,300,0,0,1,1,0,0),
(@CGUID+675,21791,530,1,0,0,-3686.853,3324.495,283.4544,3.01942,300,300,0,0,1,1,0,0),
(@CGUID+676,21791,530,1,0,0,-3909.462,3115.087,328.7762,4.45059,300,300,0,0,1,1,0,0),
(@CGUID+677,21791,530,1,0,0,-3864.434,3300.081,274.5866,5.358161,300,300,0,0,1,1,0,0),
(@CGUID+678,21791,530,1,0,0,-4005.133,3290.918,284.282,6.248279,300,300,0,0,1,1,0,0),
(@CGUID+679,21791,530,1,0,0,-3814.508,3771.359,275.9081,0.2617994,300,300,0,0,1,1,0,0),
(@CGUID+680,21791,530,1,0,0,-3684.483,3733.077,279.6606,4.799655,300,300,0,0,1,1,0,0);

-- -----------------------------------------
-- Skettis Kneel Target 02 - 21792
-- -----------------------------------------
UPDATE creature_template SET ModelId1=4626, ModelId2=15880 WHERE entry=21792;
DELETE FROM creature WHERE id=21792;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@CGUID+681,21792,530,1,0,0,-4179.034,3181.982,315.7329,4.380776,300,300,0,0,1,1,0,0),
(@CGUID+682,21792,530,1,0,0,-4148.646,3049.163,315.6561,0.1047198,300,300,0,0,1,1,0,0),
(@CGUID+683,21792,530,1,0,0,-3692.612,3323.813,283.5542,0.6457718,300,300,0,0,1,1,0,0),
(@CGUID+684,21792,530,1,0,0,-3904.945,3119.009,328.7762,5.637414,300,300,0,0,1,1,0,0),
(@CGUID+685,21792,530,1,0,0,-3860.339,3304.378,274.6708,1.343904,300,300,0,0,1,1,0,0),
(@CGUID+686,21792,530,1,0,0,-3999.416,3286.251,284.2617,0.296706,300,300,0,0,1,1,0,0),
(@CGUID+687,21792,530,1,0,0,-3812.851,3764.827,275.9081,2.164208,300,300,0,0,1,1,0,0),
(@CGUID+688,21792,530,1,0,0,-3684.9,3739.629,279.4597,4.834562,300,300,0,0,1,1,0,0);

-- -----------------------------------------
-- Skettis Kneel Target 03 - 21793
-- -----------------------------------------
UPDATE creature_template SET ModelId1=4626, ModelId2=15880 WHERE entry=21793;
DELETE FROM creature WHERE id=21793;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@CGUID+689,21793,530,1,0,0,-4173.999,3178.323,315.8939,0.6108652,300,300,0,0,1,1,0,0),
(@CGUID+690,21793,530,1,0,0,-4145.495,3043.987,315.6561,2.740167,300,300,0,0,1,1,0,0),
(@CGUID+691,21793,530,1,0,0,-3692.466,3316.917,283.5307,0.6981317,300,300,0,0,1,1,0,0),
(@CGUID+692,21793,530,1,0,0,-3900.664,3114.232,328.7762,0.2792527,300,300,0,0,1,1,0,0),
(@CGUID+693,21793,530,1,0,0,-3855.497,3299.959,274.6689,5.288348,300,300,0,0,1,1,0,0),
(@CGUID+694,21793,530,1,0,0,-3995.174,3291,284.3664,5.951573,300,300,0,0,1,1,0,0),
(@CGUID+695,21793,530,1,0,0,-3807.18,3766.16,275.9081,4.066617,300,300,0,0,1,1,0,0),
(@CGUID+696,21793,530,1,0,0,-3691.025,3739.369,279.4597,2.164208,300,300,0,0,1,1,0,0);

-- -----------------------------------------
-- Skettis Arakkoa Spell Origin 01 - 21794
-- -----------------------------------------
UPDATE creature_template SET ModelId1=4626, ModelId2=15880 WHERE entry=21794;
DELETE FROM creature WHERE id=21794;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@CGUID+697,21794,530,1,0,0,-4174.489,3182.089,316.531,0.8552113,300,300,0,0,1,1,0,0),
(@CGUID+698,21794,530,1,0,0,-4149.682,3045.066,316.4383,1.291544,300,300,0,0,1,1,0,0),
(@CGUID+699,21794,530,1,0,0,-3689.859,3321.786,284.1835,3.961897,300,300,0,0,1,1,0,0),
(@CGUID+700,21794,530,1,0,0,-3905.214,3114.538,329.5585,2.181662,300,300,0,0,1,1,0,0),
(@CGUID+701,21794,530,1,0,0,-3859.876,3300.518,275.384,3.874631,300,300,0,0,1,1,0,0),
(@CGUID+702,21794,530,1,0,0,-3999.635,3291.002,285.1487,0.9424778,300,300,0,0,1,1,0,0),
(@CGUID+703,21794,530,1,0,0,-3810.775,3768.535,276.7052,5.410521,300,300,0,0,1,1,0,0),
(@CGUID+704,21794,530,1,0,0,-3688.113,3736.459,280.2419,1.361357,300,300,0,0,1,1,0,0);

-- -----------------------------------------
-- Skettis Arakkoa Spell Origin 02 - 21855
-- -----------------------------------------
UPDATE creature_template SET ModelId1=20781, ModelId2=15880 WHERE entry=21855;
DELETE FROM creature WHERE id=21855;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@CGUID+705,21855,530,1,0,0,-4178.479,3115.733,323.408,1.902409,300,300,0,0,1,1,0,0),
(@CGUID+706,21855,530,1,0,0,-3862.339,3532.467,278.5337,5.602507,300,300,0,0,1,1,0,0),
(@CGUID+707,21855,530,1,0,0,-3675.614,3374.405,283.6768,3.944444,300,300,0,0,1,1,0,0),
(@CGUID+708,21855,530,1,0,0,-3823.783,3284.722,276.9875,1.692969,300,300,0,0,1,1,0,0),
(@CGUID+709,21855,530,1,0,0,-3686.091,3702.037,279.9671,2.722714,300,300,0,0,1,1,0,0);

-- -----------------------------------------
-- Skettis Eviscerator - 21985
-- -----------------------------------------
DELETE FROM creature WHERE id=21985;
-- No known spawns

-- -----------------------------------------
-- Skettis Soulcaller - 21911
-- -----------------------------------------
UPDATE creature_template SET ModelId2=0 WHERE entry=21911;
DELETE FROM creature WHERE id=21911;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@CGUID+710, 21911, 530, 1, 0, 0, -4179.71, 3087.22, 325.272, 4.56723, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+711, 21911, 530, 1, 0, 0, -4166.77, 3162.57, 316.658, 3.38327, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+712, 21911, 530, 1, 0, 0, -4166.66, 3020.29, 315.567, 2.86234, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+713, 21911, 530, 1, 0, 0, -4141.05, 3084.63, 315.736, 1.35544, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+714, 21911, 530, 1, 0, 0, -4129.26, 3026.73, 343.992, 2.96207, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+715, 21911, 530, 1, 0, 0, -4120.7, 3031.75, 314.09, 4.3226, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+716, 21911, 530, 1, 0, 0, -4118.42, 3034.38, 344.21, 0.745701, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+717, 21911, 530, 1, 0, 0, -4011.03, 3305.47, 283.896, 3.90675, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+718, 21911, 530, 1, 0, 0, -4000.14, 3272, 284.181, 4.10152, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+719, 21911, 530, 1, 0, 0, -3979.96, 3240.45, 332.812, 2.60304, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+720, 21911, 530, 1, 0, 0, -3978.95, 3230.24, 333.329, 5.11798, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+721, 21911, 530, 1, 0, 0, -3967.03, 3204.66, 334.124, 4.26826, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+722, 21911, 530, 1, 0, 0, -3960.36, 3279.24, 290.437, 6.21966, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+723, 21911, 530, 1, 0, 0, -3933.67, 3146.5, 326.217, 3.29759, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+724, 21911, 530, 1, 0, 0, -3921.22, 3102.81, 373.619, 2.76837, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+725, 21911, 530, 1, 0, 0, -3917.57, 3103.06, 362.376, 4.42754, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+726, 21911, 530, 1, 0, 0, -3911.55, 3109.35, 373.686, 0.482293, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+727, 21911, 530, 1, 0, 0, -3898.88, 3150.28, 325.349, 0.999839, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+728, 21911, 530, 1, 0, 0, -3896.73, 3299.82, 287.387, 2.00663, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+729, 21911, 530, 1, 0, 50161, -3892.49, 3332.78, 275.45, 1.71042, 300, 300, 0, 0, 1, 1, 0, 2), -- One Arakkoa with a fishing rod
(@CGUID+730, 21911, 530, 1, 0, 0, -3879.7, 3698.13, 334.763, 1.47817, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+731, 21911, 530, 1, 0, 0, -3876.89, 3690.93, 335.228, 5.53803, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+732, 21911, 530, 1, 0, 0, -3876, 3108.36, 331.782, 2.60054, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+733, 21911, 530, 1, 0, 0, -3859.15, 3527.61, 278.447, 2.86234, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+734, 21911, 530, 1, 0, 0, -3857.84, 3324.47, 324.142, 5.97513, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+735, 21911, 530, 1, 0, 0, -3852.71, 3286.2, 275.285, 2.6099, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+736, 21911, 530, 1, 0, 0, -3848.12, 3418.07, 324.521, 0.936589, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+737, 21911, 530, 1, 0, 0, -3846.55, 3749.78, 281.67, 5.68134, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+738, 21911, 530, 1, 0, 0, -3815.26, 3727.33, 282.229, 5.37254, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+739, 21911, 530, 1, 0, 0, -3786.22, 3766.61, 277.464, 0.820305, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+740, 21911, 530, 1, 0, 0, -3724.74, 3772.46, 271.228, 4.97903, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+741, 21911, 530, 1, 0, 0, -3708.83, 3318.97, 289.862, 0.882999, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+742, 21911, 530, 1, 0, 0, -3708.16, 3745.77, 277.109, 3.87463, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+743, 21911, 530, 1, 0, 0, -3705.52, 3782.21, 302.252, 3.52856, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+744, 21911, 530, 1, 0, 0, -3704.95, 3339.51, 286.575, 5.28953, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+745, 21911, 530, 1, 0, 0, -3696.97, 3787.36, 302.157, 5.90214, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+746, 21911, 530, 1, 0, 0, -3681.84, 3341.2, 285.5, 5.53937, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+747, 21911, 530, 1, 0, 0, -3673.81, 3751.91, 277.84, 0.614866, 300, 300, 0, 0, 1, 1, 0, 2),
(@CGUID+748, 21911, 530, 1, 0, 0, -3658.74, 3716.84, 282.626, 1.24023, 300, 300, 0, 0, 1, 1, 0, 2);

DELETE FROM creature_equip_template WHERE entry=50161;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(50161,1117,12861,0); -- One Arakkoa with a fishing rod

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2191101 AND 2191105;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2191101,0,32,1,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Pause Waypoints',0,0,0,0),
(2191101,1000,36,0,0,0,0,0,0,0,21794,10,1,'Skettis Soulcaller - Face Skettis Arakkoa Spell Origin 01',0,0,0,0),
(2191101,2000,15,37679,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Cast Arakkoa Channeling (no duration)',0,0,0,0),
(2191101,11000,15,34892,0,0,0,0,0,0,21794,10,7,'Skettis Arakkoa Spell Origin 01 - Cast Arakkoa Channeling Target',0,0,0,0),
(2191101,12000,14,37679,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Remove Aura 37679',0,0,0,0),
(2191101,12000,20,1,2,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Random Movement',0,0,0,0),
(2191101,12000,47,3,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Interrupt Channeled Spell',0,0,0,0),
(2191101,60000,20,2,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Waypoint Movement',0,0,0,0),

(2191102,1000,36,0,0,0,0,0,0,0,21794,10,1,'Skettis Soulcaller - Face Skettis Arakkoa Spell Origin 01',0,0,0,0),
(2191102,2000,15,37679,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Cast Arakkoa Channeling (no duration)',0,0,0,0),
(2191102,11000,15,34892,0,0,0,0,0,0,21794,10,7,'Skettis Arakkoa Spell Origin 01 - Cast Arakkoa Channeling Target',0,0,0,0),
(2191102,12000,14,37679,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Remove Aura 37679',0,0,0,0),
(2191102,12000,47,3,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Interrupt Channeled Spell',0,0,0,0),

-- (2191103,1000,0,0,0,0,2000001524,0,0,0,0,0,0,'Skettis Soulcaller - %s appears to be speaking with an unseen entity.',0,0,0,0),
-- (2191103,6000,1,1,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - ONESHOT_TALK',0,0,0,0),
-- (2191103,11000,1,1,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - ONESHOT_TALK',0,0,0,0),

(2191103,0,32,1,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Pause Waypoints',0,0,0,0),
(2191103,1000,45,0,10082,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Talk emote (75%) or Text emote (25%)',0,0,0,0),
(2191103,5000,45,0,10081,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Talk emote (75%) or Resume Waypoints (25%)',0,0,0,0),

(2191104,1000,36,0,0,0,0,0,0,0,21855,10,1,'Skettis Soulcaller - Face Skettis Arakkoa Spell Origin 02',0,0,0,0),
(2191104,2000,1,61,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - OneShotAttackThrown',0,0,0,0),
(2191104,3000,15,38016,0,0,0,0,0,0,21855,10,7,'Skettis Arakkoa Spell Origin 02 - Cast Cosmetic - Flare Effect',0,0,0,0),

(2191105,1000,28,8,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Set Stand State Kneel',0,0,0,0),
(2191105,30000,28,0,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Set Stand State Stand',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 10048 AND 10050;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10048,0,1,1,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - ONESHOT_TALK',0,0,0,0),
(10048,4000,45,0,10081,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Talk emote (75%) or Resume Waypoints (25%)',0,0,0,0),

(10049,0,32,0,0,0,0,0,0,0,0,0,0,'Skettis Soulcaller - Resume Waypoints',0,0,0,0),

(10050,1,0,0,0,0,2000001524,0,0,0,0,0,0,'Skettis Soulcaller - %s appears to be speaking with an unseen entity.',0,0,0,0);

DELETE FROM dbscript_random_templates WHERE id BETWEEN 10081 AND 10082;
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10081,1,10048,75,'Talk emote (75%)'),
(10081,1,10049,25,'Resume Waypoints (25%)'),

(10082,1,10048,75,'Talk emote (75%)'),
(10082,1,10050,25,'Text emote (25%)');

DELETE FROM `dbscript_string` WHERE `entry`=2000001524;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES 
(2000001524, '%s appears to be speaking with an unseen entity.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 1, 21261, 'Skettis Soulcaller (Entry: 21911)');

DELETE FROM `creature_movement` WHERE `id`=@CGUID+710;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+710,1,-4182.831,3065.906,342.2857,0,0,0),
(@CGUID+710,2,-4185.462,3058.009,344.1404,0,0,0),
(@CGUID+710,3,-4198.147,3054.563,344.1403,0,0,0),
(@CGUID+710,4,-4203.268,3043.312,344.1399,0,0,0),
(@CGUID+710,5,-4197.607,3031.455,344.153,0,0,0),
(@CGUID+710,6,-4180.885,3032.452,343.7212,0,0,0),
(@CGUID+710,7,-4197.607,3031.455,344.153,0,0,0),
(@CGUID+710,8,-4203.268,3043.312,344.1399,0,0,0),
(@CGUID+710,9,-4198.147,3054.563,344.1403,0,0,0),
(@CGUID+710,10,-4185.462,3058.009,344.1404,0,0,0),
(@CGUID+710,11,-4182.831,3065.906,342.2857,0,0,0),
(@CGUID+710,12,-4179.644,3088.314,324.5818,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+711;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+711,1,-4173.053,3176.961,316.0626,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+712;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+712,1,-4148.862,3048.823,314.8345,12000,2191102,100),
(@CGUID+712,2,-4166.656,3020.304,315.6238,1000,2191103,2.86234);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+713;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+713,1,-4148.57,3049.41,314.5057,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+714;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+714,1,-4151.159,3030.708,336.9139,0,0,0),
(@CGUID+714,2,-4172.558,3034.896,343.2054,0,0,0),
(@CGUID+714,3,-4175.533,3039.491,343.7361,0,0,0),
(@CGUID+714,4,-4174.932,3050.146,344.0387,0,0,0),
(@CGUID+714,5,-4180.721,3057.82,344.1331,0,0,0),
(@CGUID+714,6,-4175.091,3050.357,344.0395,0,0,0),
(@CGUID+714,7,-4175.533,3039.491,343.7361,0,0,0),
(@CGUID+714,8,-4172.659,3035.051,343.2083,0,0,0),
(@CGUID+714,9,-4151.159,3030.708,336.9139,0,0,0),
(@CGUID+714,10,-4128.608,3026.253,344.0564,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+715;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+715,1,-4144.293,3043.399,315.1128,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+716;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+716,1,-4105.244,3036.221,344.0981,0,0,0),
(@CGUID+716,2,-4097.892,3031.171,344.0274,0,0,0),
(@CGUID+716,3,-4095.688,3020.443,343.9487,0,0,0),
(@CGUID+716,4,-4098.693,3011.087,344.1399,0,0,0),
(@CGUID+716,5,-4106.727,3008.446,344.1396,0,0,0),
(@CGUID+716,6,-4117.773,3008.964,344.1493,0,0,0),
(@CGUID+716,7,-4125.169,3020.097,344.152,0,0,0),
(@CGUID+716,8,-4117.911,3009.172,344.149,0,0,0),
(@CGUID+716,9,-4106.921,3008.459,344.1392,0,0,0),
(@CGUID+716,10,-4098.693,3011.087,344.1399,0,0,0),
(@CGUID+716,11,-4095.688,3020.443,343.9487,0,0,0),
(@CGUID+716,12,-4097.892,3031.171,344.0274,0,0,0),
(@CGUID+716,13,-4105.244,3036.221,344.0981,0,0,0),
(@CGUID+716,14,-4115.791,3036.804,344.0468,0,0,0),
(@CGUID+716,15,-4120.728,3032.136,344.0714,0,0,0),
(@CGUID+716,16,-4115.791,3036.804,344.0468,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+717;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+717,1,-4005.672,3291.76,284.2795,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+718;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+718,1,-3999.467,3285.253,284.2181,12000,2191102,100),
(@CGUID+718,2,-4000.14,3271.997,284.1545,1000,2191103,4.101524);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+719;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+719,1,-3998.741,3251.665,326.2222,0,0,0),
(@CGUID+719,2,-4022.938,3265.63,332.8612,0,0,0),
(@CGUID+719,3,-4032.456,3265.425,332.849,0,0,0),
(@CGUID+719,4,-4042.092,3258.393,332.8505,0,0,0),
(@CGUID+719,5,-4054.291,3258.963,332.8513,0,0,0),
(@CGUID+719,6,-4065.544,3273.363,332.8488,0,0,0),
(@CGUID+719,7,-4061.114,3290.431,332.8531,0,0,0),
(@CGUID+719,8,-4048.007,3298.704,332.8556,0,0,0),
(@CGUID+719,9,-4061.114,3290.431,332.8531,0,0,0),
(@CGUID+719,10,-4065.544,3273.363,332.8488,0,0,0),
(@CGUID+719,11,-4054.291,3258.963,332.8513,0,0,0),
(@CGUID+719,12,-4042.092,3258.393,332.8505,0,0,0),
(@CGUID+719,13,-4032.456,3265.425,332.849,0,0,0),
(@CGUID+719,14,-4022.945,3265.63,332.8587,0,0,0),
(@CGUID+719,15,-3998.741,3251.665,326.2222,0,0,0),
(@CGUID+719,16,-3979.637,3240.228,332.742,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+720;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+720,1,-3972.564,3215.374,333.8474,0,0,0),
(@CGUID+720,2,-3956.398,3211.545,333.9663,0,0,0),
(@CGUID+720,3,-3943.305,3220.042,333.9712,0,0,0),
(@CGUID+720,4,-3945.209,3233.368,333.9637,0,0,0),
(@CGUID+720,5,-3950.404,3242.912,333.964,0,0,0),
(@CGUID+720,6,-3967.185,3241.088,333.4649,0,0,0),
(@CGUID+720,7,-3950.404,3242.912,333.964,0,0,0),
(@CGUID+720,8,-3945.209,3233.368,333.9637,0,0,0),
(@CGUID+720,9,-3943.305,3220.042,333.9712,0,0,0),
(@CGUID+720,10,-3956.398,3211.545,333.9663,0,0,0),
(@CGUID+720,11,-3972.564,3215.374,333.8474,0,0,0),
(@CGUID+720,12,-3979.675,3230.16,333.1816,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+721;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+721,1,-3978.829,3179.861,345.1869,0,0,0),
(@CGUID+721,2,-3986.984,3162.926,360.8369,0,0,0),
(@CGUID+721,3,-3991.181,3154.454,362.5461,0,0,0),
(@CGUID+721,4,-4006.073,3150.619,362.5384,0,0,0),
(@CGUID+721,5,-4014.367,3134.93,362.5407,0,0,0),
(@CGUID+721,6,-4004.216,3122.312,362.5454,0,0,0),
(@CGUID+721,7,-3985.177,3123.629,362.0532,0,0,0),
(@CGUID+721,8,-4004.216,3122.312,362.5454,0,0,0),
(@CGUID+721,9,-4014.367,3134.93,362.5407,0,0,0),
(@CGUID+721,10,-4006.073,3150.619,362.5384,0,0,0),
(@CGUID+721,11,-3991.181,3154.454,362.5461,0,0,0),
(@CGUID+721,12,-3986.984,3162.926,360.8369,0,0,0),
(@CGUID+721,13,-3978.829,3179.861,345.1869,0,0,0),
(@CGUID+721,14,-3967.267,3204.62,334.049,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+722;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+722,1,-3994.27,3290.575,284.4029,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+723;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+723,1,-3910.106,3115.83,328.6015,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+724;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+724,1,-3946.159,3112.573,360.8351,0,0,0),
(@CGUID+724,2,-3977.61,3124.79,361.5083,0,0,0),
(@CGUID+724,3,-3976.483,3139.85,362.094,0,0,0),
(@CGUID+724,4,-3985.85,3153.416,362.5481,0,0,0),
(@CGUID+724,5,-3976.483,3139.85,362.094,0,0,0),
(@CGUID+724,6,-3977.61,3124.79,361.5083,0,0,0),
(@CGUID+724,7,-3946.159,3112.573,360.8351,0,0,0),
(@CGUID+724,8,-3921.249,3103.02,373.5276,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+725;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+725,1,-3920.866,3091.817,362.471,0,0,0),
(@CGUID+725,2,-3911.489,3077.632,362.4333,0,0,0),
(@CGUID+725,3,-3897.392,3073.736,362.4594,0,0,0),
(@CGUID+725,4,-3889.362,3083.736,362.6201,0,0,0),
(@CGUID+725,5,-3878.623,3097.023,362.2275,0,0,0),
(@CGUID+725,6,-3880.638,3110.479,362.4371,0,0,0),
(@CGUID+725,7,-3895.427,3115.992,362.4445,0,0,0),
(@CGUID+725,8,-3880.638,3110.479,362.4371,0,0,0),
(@CGUID+725,9,-3878.623,3097.023,362.2275,0,0,0),
(@CGUID+725,10,-3889.362,3083.736,362.6201,0,0,0),
(@CGUID+725,11,-3897.392,3073.736,362.4594,0,0,0),
(@CGUID+725,12,-3911.286,3077.576,362.4194,0,0,0),
(@CGUID+725,13,-3920.866,3091.817,362.471,0,0,0),
(@CGUID+725,14,-3917.073,3104.655,362.3246,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+726;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+726,1,-3899.567,3115.629,373.1055,0,0,0),
(@CGUID+726,2,-3888.237,3111.188,372.9841,0,0,0),
(@CGUID+726,3,-3882.615,3096.336,373.4726,0,0,0),
(@CGUID+726,4,-3886.255,3082.375,373.7563,0,0,0),
(@CGUID+726,5,-3896.847,3077.677,373.7189,0,0,0),
(@CGUID+726,6,-3910.445,3081.398,373.7242,0,0,0),
(@CGUID+726,7,-3915.513,3094.51,373.7202,0,0,0),
(@CGUID+726,8,-3910.445,3081.398,373.7242,0,0,0),
(@CGUID+726,9,-3896.847,3077.677,373.7189,0,0,0),
(@CGUID+726,10,-3886.255,3082.375,373.7563,0,0,0),
(@CGUID+726,11,-3882.615,3096.336,373.4726,0,0,0),
(@CGUID+726,12,-3888.237,3111.188,372.9841,0,0,0),
(@CGUID+726,13,-3899.567,3115.629,373.1055,0,0,0),
(@CGUID+726,14,-3913.777,3107.912,373.7201,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+727;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+727,1,-3904.739,3119.969,328.6015,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+728;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+728,1,-3865.375,3300.414,274.5859,12000,2191102,100),
(@CGUID+728,2,-3896.65,3299.819,287.3083,0,0,0),
(@CGUID+728,3,-3907.417,3322.782,285.6688,0,0,0),
(@CGUID+728,4,-3895.944,3300.406,287.0021,0,0,0),
(@CGUID+728,5,-3907.417,3322.782,285.6688,0,0,0),
(@CGUID+728,6,-3895.944,3300.406,287.0021,0,0,0),
(@CGUID+728,7,-3907.417,3322.782,285.6688,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+729;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+729,1,-3862.118,3305.949,274.3262,12000,2191102,100),
(@CGUID+729,2,-3892.488,3332.781,275.4784,30000,0,1.710423);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+730;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+730,1,-3877.59,3720.864,328.1188,0,0,0),
(@CGUID+730,2,-3875.228,3747.408,334.8005,0,0,0),
(@CGUID+730,3,-3877.839,3757.505,334.7971,0,0,0),
(@CGUID+730,4,-3891.944,3763.002,334.8042,0,0,0),
(@CGUID+730,5,-3896.142,3776.624,334.8072,0,0,0),
(@CGUID+730,6,-3882.098,3792.001,334.8045,0,0,0),
(@CGUID+730,7,-3865.477,3791.346,334.8057,0,0,0),
(@CGUID+730,8,-3852.935,3777.069,334.8137,0,0,0),
(@CGUID+730,9,-3865.477,3791.346,334.8057,0,0,0),
(@CGUID+730,10,-3882.098,3792.001,334.8045,0,0,0),
(@CGUID+730,11,-3896.142,3776.624,334.8072,0,0,0),
(@CGUID+730,12,-3891.944,3763.002,334.8042,0,0,0),
(@CGUID+730,13,-3877.839,3757.505,334.7971,0,0,0),
(@CGUID+730,14,-3875.228,3747.408,334.8005,0,0,0),
(@CGUID+730,15,-3877.59,3720.864,328.1188,0,0,0),
(@CGUID+730,16,-3879.636,3698.129,334.6891,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+731;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+731,1,-3868.377,3683.078,335.4613,0,0,0),
(@CGUID+731,2,-3866.359,3670.1,335.9215,0,0,0),
(@CGUID+731,3,-3878.931,3656.706,335.919,0,0,0),
(@CGUID+731,4,-3896.576,3661.47,335.9225,0,0,0),
(@CGUID+731,5,-3901.911,3676.683,335.9061,0,0,0),
(@CGUID+731,6,-3885.047,3692.206,335.2541,0,0,0),
(@CGUID+731,7,-3901.911,3676.683,335.9061,0,0,0),
(@CGUID+731,8,-3896.576,3661.47,335.9225,0,0,0),
(@CGUID+731,9,-3878.931,3656.706,335.919,0,0,0),
(@CGUID+731,10,-3866.359,3670.1,335.9215,0,0,0),
(@CGUID+731,11,-3868.377,3683.078,335.4613,0,0,0),
(@CGUID+731,12,-3874.686,3690.859,335.1707,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+732;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+732,1,-3900.073,3115.935,328.3515,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+733;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+733,1,-3859.148,3527.61,278.4466,5000,2191104,100),
(@CGUID+733,2,-3810.884,3518.752,286.6394,0,0,0),
(@CGUID+733,4,-3859.538,3529,278.5032,5000,2191104,100),
(@CGUID+733,5,-3871.956,3484.256,275.7191,0,0,0);

-- TODO one missing path
-- DELETE FROM `creature_movement` WHERE `id`=@CGUID+734;
-- 0x2016FC42401565C0000012000023341B
-- 0x2016FC42401565C000001200002337C4
-- Add Pathing for Skettis Soulcaller 21911 (242734)
SET @GUID := 242734;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`= @GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID, 1, -3837.281, 3317.93, 324.0533, 100, 0, 0),
(@GUID, 2, -3821.938, 3327.542, 324.0483, 100, 0, 0),
(@GUID, 3, -3817.531, 3343.313, 324.0551, 100, 0, 0),
(@GUID, 4, -3821.683, 3345.723, 324.0459, 100, 0, 0),
(@GUID, 5, -3842.635, 3357.883, 324.0527, 100, 0, 0),
(@GUID, 6, -3844.614, 3362.325, 324.0609, 100, 0, 0),
(@GUID, 7, -3849.152, 3392.454, 317.5022, 100, 0, 0),
(@GUID, 8, -3852.768, 3413.031, 324.0277, 100, 0, 0),
(@GUID, 9, -3849.152, 3392.454, 317.5022, 100, 0, 0),
(@GUID, 10, -3842.635, 3357.883, 324.0527, 100, 0, 0),
(@GUID, 11, -3821.683, 3345.723, 324.0459, 100, 0, 0),
(@GUID, 12, -3817.531, 3343.313, 324.0551, 100, 0, 0),
(@GUID, 13, -3821.938, 3327.542, 324.0483, 100, 0, 0);
-- 0x2016FC42401565C000001200002579DD .go xyz -3837.281 3317.93 324.0533

DELETE FROM `creature_movement` WHERE `id`=@CGUID+735;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+735,1,-3855.408,3298.995,274.4174,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+736;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+736,1,-3837.935,3431.92,325.102,0,0,0),
(@CGUID+736,2,-3844.354,3450.122,325.1728,0,0,0),
(@CGUID+736,3,-3860.309,3452.64,325.1678,0,0,0),
(@CGUID+736,4,-3872.518,3439.778,325.1501,0,0,0),
(@CGUID+736,5,-3864.665,3420.782,324.615,0,0,0),
(@CGUID+736,6,-3857.961,3419.865,324.5726,0,0,0),
(@CGUID+736,7,-3864.665,3420.782,324.615,0,0,0),
(@CGUID+736,8,-3872.518,3439.778,325.1501,0,0,0),
(@CGUID+736,9,-3860.309,3452.64,325.1678,0,0,0),
(@CGUID+736,10,-3844.619,3450.163,325.1708,0,0,0),
(@CGUID+736,11,-3837.935,3431.92,325.102,0,0,0),
(@CGUID+736,12,-3846.655,3418.705,324.4908,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+737;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+737,1,-3814.441,3764.062,275.6747,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+738;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+738,1,-3807.49,3763.933,275.4975,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+739;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+739,1,-3812.055,3770.946,275.6383,12000,2191102,100),
(@CGUID+739,2,-3786.217,3766.615,277.4848,31000,2191105,0.8203048);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+740;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+740,1,-3692.305,3740.711,278.4941,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+741;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+741,1,-3689.269,3324.335,283.368,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+742;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+742,1,-3685.526,3739.795,278.8297,12000,2191102,100),
(@CGUID+742,2,-3708.161,3745.768,276.9408,1000,2191103,3.874631);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+743;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+743,1,-3714.55,3778.527,302.0443,0,0,0),
(@CGUID+743,2,-3724.244,3783.691,302.0801,0,0,0),
(@CGUID+743,3,-3728.236,3794.528,302.0642,0,0,0),
(@CGUID+743,4,-3725.491,3806.317,302.1625,0,0,0),
(@CGUID+743,5,-3715.03,3811.035,302.1596,0,0,0),
(@CGUID+743,6,-3704.35,3806.55,302.1619,0,0,0),
(@CGUID+743,7,-3698.531,3794.304,302.1668,0,0,0),
(@CGUID+743,8,-3704.227,3806.291,302.1616,0,0,0),
(@CGUID+743,9,-3714.969,3811.008,302.1592,0,0,0),
(@CGUID+743,10,-3725.491,3806.317,302.1625,0,0,0),
(@CGUID+743,11,-3728.315,3794.741,302.0642,0,0,0),
(@CGUID+743,12,-3724.244,3783.691,302.0801,0,0,0),
(@CGUID+743,13,-3714.55,3778.527,302.0443,0,0,0),
(@CGUID+743,14,-3705.225,3782.647,302.1009,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+744;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+744,1,-3687.686,3325.143,283.1137,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+745;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+745,1,-3675.485,3778.753,294.9269,0,0,0),
(@CGUID+745,2,-3655.665,3770.661,301.1902,0,0,0),
(@CGUID+745,3,-3652.745,3765.458,301.8117,0,0,0),
(@CGUID+745,4,-3655.931,3757.439,301.965,0,0,0),
(@CGUID+745,5,-3652.093,3748.497,302.1431,0,0,0),
(@CGUID+745,6,-3655.931,3757.439,301.965,0,0,0),
(@CGUID+745,7,-3652.745,3765.458,301.8117,0,0,0),
(@CGUID+745,8,-3655.665,3770.661,301.1902,0,0,0),
(@CGUID+745,9,-3675.485,3778.753,294.9269,0,0,0),
(@CGUID+745,10,-3696.83,3787.275,302.0549,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+746;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+746,1,-3686.123,3326.348,283.4308,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+747;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+747,1,-3684.255,3740.325,278.6824,1000,2191101,100);

DELETE FROM `creature_movement` WHERE `id`=@CGUID+748;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@CGUID+748,1,-3651.325,3738.442,300.3476,0,0,0),
(@CGUID+748,2,-3646.555,3745.714,302.1531,0,0,0),
(@CGUID+748,3,-3633.416,3747.373,302.1508,0,0,0),
(@CGUID+748,4,-3626.225,3756.61,302.156,0,0,0),
(@CGUID+748,5,-3627.999,3765.262,302.149,0,0,0),
(@CGUID+748,6,-3634.116,3771.958,301.9988,0,0,0),
(@CGUID+748,7,-3648.544,3770.196,301.7656,0,0,0),
(@CGUID+748,8,-3634.116,3771.958,301.9988,0,0,0),
(@CGUID+748,9,-3627.999,3765.262,302.149,0,0,0),
(@CGUID+748,10,-3626.225,3756.61,302.156,0,0,0),
(@CGUID+748,11,-3633.416,3747.373,302.1508,0,0,0),
(@CGUID+748,12,-3646.555,3745.714,302.1531,0,0,0),
(@CGUID+748,13,-3651.325,3738.442,300.3476,0,0,0),
(@CGUID+748,14,-3658.698,3717.022,282.6302,0,0,0);

-- -----------------------------------------
-- Skettis Sentinel - 21912
-- -----------------------------------------
DELETE FROM creature WHERE id=21912;
-- No known spawns

-- -----------------------------------------
-- Skettis - Invis Raven Stone - 22986
-- -----------------------------------------
-- Recheck this later

-- -----------------------------------------
-- Monstrous Kaliri Egg Trigger - 22991
-- -----------------------------------------
DELETE FROM creature WHERE id=22991;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@CGUID+811,22991,530,1,0,0,-3864.132,3439.063,363.6791,6.230825,180,180,0,0,4120,0,0,0),
(@CGUID+812,22991,530,1,0,0,-3863.239,3440.425,363.6555,0.3490658,180,180,0,0,4120,0,0,0),
(@CGUID+813,22991,530,1,0,0,-3872.445,3675.384,374.4998,3.996804,180,180,0,0,4120,0,0,0),
(@CGUID+814,22991,530,1,0,0,-4189.669,3039.901,352.2472,5.497787,180,180,0,0,4120,0,0,0),
(@CGUID+815,22991,530,1,0,0,-4187.516,3040.387,352.0713,6.265732,180,180,0,0,4120,0,0,0),
(@CGUID+816,22991,530,1,0,0,-4184.984,3044.709,352.394,1.815142,180,180,0,0,4120,0,0,0),
(@CGUID+817,22991,530,1,0,0,-4192.606,3045.103,352.0957,3.141593,180,180,0,0,4120,0,0,0),
(@CGUID+818,22991,530,1,0,0,-4192.016,3046.909,352.2971,2.460914,180,180,0,0,4120,0,0,0),
(@CGUID+819,22991,530,1,0,0,-4186.471,3047.192,352.3156,2.600541,180,180,0,0,4120,0,0,0),
(@CGUID+820,22991,530,1,0,0,-4107.813,3023.422,352.1424,1.064651,180,180,0,0,4120,0,0,0),
(@CGUID+821,22991,530,1,0,0,-4109.062,3019.105,352.2397,0.2617994,180,180,0,0,4120,0,0,0),
(@CGUID+822,22991,530,1,0,0,-4113.577,3022.4,352.1574,5.637414,180,180,0,0,4120,0,0,0),
(@CGUID+823,22991,530,1,0,0,-3839.347,3344.851,337.8339,2.75762,180,180,0,0,4120,0,0,0),
(@CGUID+824,22991,530,1,0,0,-3835.297,3344.773,338.1549,5.51524,180,180,0,0,4120,0,0,0),
(@CGUID+825,22991,530,1,0,0,-3991.585,3134.326,372.7026,6.265732,180,180,0,0,4120,0,0,0),
(@CGUID+826,22991,530,1,0,0,-3990.417,3139.132,372.8784,3.665191,180,180,0,0,4120,0,0,0),
(@CGUID+827,22991,530,1,0,0,-4198.528,3168.909,355.847,5.899213,180,180,0,0,4120,0,0,0),
(@CGUID+828,22991,530,1,0,0,-4197.013,3170.043,356.1169,5.131268,180,180,0,0,4120,0,0,0),
(@CGUID+829,22991,530,1,0,0,-4196.543,3167.687,356.3481,5.742133,180,180,0,0,4120,0,0,0),
(@CGUID+830,22991,530,1,0,0,-4107.929,3121.497,357.4272,1.012291,180,180,0,0,4120,0,0,0),
(@CGUID+831,22991,530,1,0,0,-4108.307,3123.657,357.6325,5.602507,180,180,0,0,4120,0,0,0),
(@CGUID+832,22991,530,1,0,0,-4110.186,3122.643,358.0826,6.248279,180,180,0,0,4120,0,0,0),
(@CGUID+833,22991,530,1,0,0,-3917.205,2981.62,396.4834,0.7330383,180,180,0,0,4120,0,0,0),
(@CGUID+834,22991,530,1,0,0,-3883.213,3004.105,399.7378,4.642576,180,180,0,0,4120,0,0,0),
(@CGUID+835,22991,530,1,0,0,-3918.451,2982.438,397.2399,4.555309,180,180,0,0,4120,0,0,0),
(@CGUID+836,22991,530,1,0,0,-3883.263,3001.554,399.4308,3.892084,180,180,0,0,4120,0,0,0),
(@CGUID+837,22991,530,1,0,0,-3915.667,2983.397,396.9573,4.363323,180,180,0,0,4120,0,0,0),
(@CGUID+838,22991,530,1,0,0,-3884.286,3003.297,400.0627,4.39823,180,180,0,0,4120,0,0,0),
(@CGUID+839,22991,530,1,0,0,-3955.861,3222.162,347.5026,0.2443461,180,180,0,0,4120,0,0,0),
(@CGUID+840,22991,530,1,0,0,-3953.296,3227.943,347.5635,6.038839,180,180,0,0,4120,0,0,0),
(@CGUID+841,22991,530,1,0,0,-3898.453,3093.063,383.6674,2.530727,180,180,0,0,4120,0,0,0),
(@CGUID+842,22991,530,1,0,0,-3900.753,3100.755,383.7951,5.846853,180,180,0,0,4120,0,0,0),
(@CGUID+843,22991,530,1,0,0,-3903.025,3095.847,383.783,3.996804,180,180,0,0,4120,0,0,0),
(@CGUID+844,22991,530,1,0,0,-4049.308,3285.901,348.3347,1.43117,180,180,0,0,4120,0,0,0),
(@CGUID+845,22991,530,1,0,0,-4044.661,3287.294,348.3623,0.3490658,180,180,0,0,4120,0,0,0),
(@CGUID+846,22991,530,1,0,0,-3846.345,3439.343,363.6285,6.161012,180,180,0,0,4120,0,0,0),
(@CGUID+847,22991,530,1,0,0,-3846.435,3430.294,363.7288,0.4886922,180,180,0,0,4120,0,0,0),
(@CGUID+848,22991,530,1,0,0,-3847.319,3441.392,363.648,0.4537856,180,180,0,0,4120,0,0,0),
(@CGUID+849,22991,530,1,0,0,-3661.911,3379.15,320.3771,0.8901179,180,180,0,0,4120,0,0,0),
(@CGUID+850,22991,530,1,0,0,-3660.646,3381.897,320.1819,1.186824,180,180,0,0,4120,0,0,0),
(@CGUID+851,22991,530,1,0,0,-3665.481,3380.115,320.3647,5.811946,180,180,0,0,4120,0,0,0),
(@CGUID+852,22991,530,1,0,0,-3685.07,3305.966,320.1982,3.403392,180,180,0,0,4120,0,0,0),
(@CGUID+853,22991,530,1,0,0,-3686.208,3301.003,320.5129,0.8377581,180,180,0,0,4120,0,0,0),
(@CGUID+854,22991,530,1,0,0,-3687.772,3299.847,320.3074,2.75762,180,180,0,0,4120,0,0,0),
(@CGUID+855,22991,530,1,0,0,-3688.303,3308.931,320.3375,1.658063,180,180,0,0,4120,0,0,0),
(@CGUID+856,22991,530,1,0,0,-3690.651,3306.766,320.4299,3.490659,180,180,0,0,4120,0,0,0),
(@CGUID+857,22991,530,1,0,0,-3692.641,3302.068,320.3959,6.056293,180,180,0,0,4120,0,0,0),
(@CGUID+858,22991,530,1,0,0,-4020.066,3077.838,374.3913,1.53589,180,180,0,0,4120,0,0,0),
(@CGUID+859,22991,530,1,0,0,-4019.323,3079.743,375.1086,5.026548,180,180,0,0,4120,0,0,0),
(@CGUID+860,22991,530,1,0,0,-4018.354,3076.7,375.29,5.550147,180,180,0,0,4120,0,0,0),
(@CGUID+861,22991,530,1,0,0,-3996.888,3142.122,372.7289,3.054326,180,180,0,0,4120,0,0,0),
(@CGUID+862,22991,530,1,0,0,-3845.156,3332.205,338.5896,2.9147,180,180,0,0,4120,0,0,0),
(@CGUID+863,22991,530,1,0,0,-3857.694,3426.247,363.733,6.195919,180,180,0,0,4120,0,0,0),
(@CGUID+864,22991,530,1,0,0,-3965.164,3232.701,347.5522,6.161012,180,180,0,0,4120,0,0,0),
(@CGUID+865,22991,530,1,0,0,-4041.395,3271.003,346.6416,4.18879,180,180,0,0,4120,0,0,0),
(@CGUID+866,22991,530,1,0,0,-4076.988,3415.22,334.0085,3.944444,180,180,0,0,4120,0,0,0),
(@CGUID+867,22991,530,1,0,0,-4076.792,3412.907,334.6169,5.201081,180,180,0,0,4120,0,0,0),
(@CGUID+868,22991,530,1,0,0,-4077.917,3412.569,334.7684,5.550147,180,180,0,0,4120,0,0,0),
(@CGUID+869,22991,530,1,0,0,-3874.339,3779.95,348.309,2.303835,180,180,0,0,4120,0,0,0),
(@CGUID+870,22991,530,1,0,0,-3869.424,3778.605,348.7808,0.541052,180,180,0,0,4120,0,0,0),
(@CGUID+871,22991,530,1,0,0,-3877.273,3766.556,348.4797,2.164208,180,180,0,0,4120,0,0,0),
(@CGUID+872,22991,530,1,0,0,-3893.092,3677.173,374.5161,5.044002,180,180,0,0,4120,0,0,0),
(@CGUID+873,22991,530,1,0,0,-3892.465,3673.997,374.4775,4.13643,180,180,0,0,4120,0,0,0),
(@CGUID+874,22991,530,1,0,0,-3884.892,3684.977,374.4915,3.752458,180,180,0,0,4120,0,0,0),
(@CGUID+875,22991,530,1,0,0,-3798.912,3790.613,313.8517,3.630285,180,180,0,0,4120,0,0,0),
(@CGUID+876,22991,530,1,0,0,-3799.024,3788.061,314.158,3.193953,180,180,0,0,4120,0,0,0),
(@CGUID+877,22991,530,1,0,0,-3800.801,3789.621,314.0005,6.091199,180,180,0,0,4120,0,0,0),
(@CGUID+878,22991,530,1,0,0,-3717.186,3796.419,310.2196,4.485496,180,180,0,0,4120,0,0,0),
(@CGUID+879,22991,530,1,0,0,-3713.666,3797.594,310.0748,4.101524,180,180,0,0,4120,0,0,0),
(@CGUID+880,22991,530,1,0,0,-3712.203,3792.431,310.2712,0.3665192,180,180,0,0,4120,0,0,0),
(@CGUID+881,22991,530,1,0,0,-3639.385,3754.924,310.3625,3.106686,180,180,0,0,4120,0,0,0),
(@CGUID+882,22991,530,1,0,0,-3645.247,3757.539,310.4355,5.759586,180,180,0,0,4120,0,0,0),
(@CGUID+883,22991,530,1,0,0,-3643.539,3760.856,310.3239,4.764749,180,180,0,0,4120,0,0,0),

(@CGUID+884,22991,530,1,0,0,-3879.3694, 3665.222, 374.39325, 3.979350566864013671,180,180,0,0,4120,0,0,0),
(@CGUID+885,22991,530,1,0,0,-3877.2578, 3667.891, 374.45245, 2.984513044357299804,180,180,0,0,4120,0,0,0);

-- -----------------------------------------
-- Time-Lost Skettis High Priest - 21787
-- -----------------------------------------
DELETE FROM creature WHERE id=21787;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@CGUID+749, 21787, 530, 1, 0, 0, -4185.09, 3056.96, 344.23, 4.55205, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+750, 21787, 530, 1, 0, 0, -4172.23, 3180.69, 315.881, 5.36959, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+751, 21787, 530, 1, 0, 0, -4152.78, 3042.52, 315.855, 0.680402, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+752, 21787, 530, 1, 0, 0, -4121.05, 3013.41, 344.24, 3.46991, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+753, 21787, 530, 1, 0, 0, -4096.88, 3018.4, 344.202, 4.29351, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+754, 21787, 530, 1, 0, 0, -4073.83, 3189.6, 296.625, 2.66927, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+755, 21787, 530, 1, 0, 0, -4065.68, 3273.31, 332.931, 5.70723, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+756, 21787, 530, 1, 0, 0, -4038.8, 3258.21, 332.936, 2.26481, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+757, 21787, 530, 1, 0, 0, -4008.98, 3126.44, 362.605, 0.628318, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+758, 21787, 530, 1, 0, 0, -4002.64, 3288.83, 284.362, 3.93716, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+759, 21787, 530, 1, 0, 0, -3981.15, 3134.27, 363.592, 2.77507, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+760, 21787, 530, 1, 0, 0, -3962.09, 3243.77, 333.589, 1.74343, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+761, 21787, 530, 1, 0, 0, -3940.65, 3222.22, 334.057, 3.14159, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+762, 21787, 530, 1, 0, 0, -3927.41, 3024.03, 356.908, 0.713084, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+763, 21787, 530, 1, 0, 0, -3912.38, 3095.58, 374.801, 5.85324, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+764, 21787, 530, 1, 0, 0, -3904.77, 3116.96, 329.021, 1.86715, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+765, 21787, 530, 1, 0, 0, -3898.61, 3075.97, 362.578, 6.24828, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+766, 21787, 530, 1, 0, 0, -3898.12, 3474.97, 274.265, 0.105674, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+767, 21787, 530, 1, 0, 0, -3895.8, 3109.75, 374.735, 5.76875, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+768, 21787, 530, 1, 0, 0, -3888.01, 3080.67, 373.795, 2.35619, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+769, 21787, 530, 1, 0, 0, -3886.82, 3783.83, 334.878, 2.05949, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+770, 21787, 530, 1, 0, 0, -3882.73, 3661.17, 335.997, 4.62512, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+771, 21787, 530, 1, 0, 0, -3873.43, 3429.23, 325.033, 5.61996, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+772, 21787, 530, 1, 0, 0, -3870.89, 3487.53, 275.855, 2.02601, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+773, 21787, 530, 1, 0, 0, -3868.04, 3675.77, 335.904, 5.61996, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+774, 21787, 530, 1, 0, 0, -3860.19, 3299.72, 275.409, 4.9213, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+775, 21787, 530, 1, 0, 0, -3856.26, 3785.08, 334.891, 2.84489, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+776, 21787, 530, 1, 0, 0, -3854.17, 3452.98, 325.253, 3.89208, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+777, 21787, 530, 1, 0, 0, -3831.21, 3354.01, 324.133, 4.57327, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+778, 21787, 530, 1, 0, 0, -3727.48, 3789.05, 302.126, 5.34071, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+779, 21787, 530, 1, 0, 0, -3707.91, 3807.72, 302.27, 2.58309, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+780, 21787, 530, 1, 0, 0, -3705.29, 3787.83, 303.033, 1.01153, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+781, 21787, 530, 1, 0, 0, -3702.42, 3308.64, 312.313, 0.158466, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+782, 21787, 530, 1, 0, 0, -3690.03, 3322.21, 284.17, 2.02987, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+783, 21787, 530, 1, 0, 0, -3689.88, 3737.84, 278.899, 1.73484, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+784, 21787, 530, 1, 0, 0, -3687.17, 3287.76, 312.312, 2.60054, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+785, 21787, 530, 1, 0, 0, -3668.87, 3371.78, 313.102, 4.15372, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+786, 21787, 530, 1, 0, 0, -3668.63, 3395.73, 312.211, 4.53786, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+787, 21787, 530, 1, 0, 0, -3651.45, 3750.56, 302.141, 0.202562, 300, 300, 0, 0, 1, 1, 0, 0),
(@CGUID+788, 21787, 530, 1, 0, 0, -3649.2, 3379.72, 312.337, 1.02974, 300, 300, 0, 0, 1, 1, 0, 0);

-- Time-Lost Skettis High Priest - Skettis Corrupted Ghosts, Shadowform, Ghostly Facade, Shroud of Death
UPDATE `creature_template_addon` SET `auras` = '37411 37816 37509 33900' WHERE `entry` = 21787;

-- -----------------------------------------
-- Skettis Kneel Target 04 - 21856
-- -----------------------------------------
UPDATE creature_template SET ModelId1=20781, ModelId2=15880 WHERE entry=21856;
DELETE FROM creature WHERE id=21856;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@CGUID+789,21856,530,1,0,0,-4175.011,3114.481,323.1652,6.178465,300,300,0,0,1,1,0,0),
(@CGUID+790,21856,530,1,0,0,-3860.516,3529.206,278.512,2.303835,300,300,0,0,1,1,0,0),
(@CGUID+791,21856,530,1,0,0,-3678.979,3373.517,283.2334,1.186824,300,300,0,0,1,1,0,0),
(@CGUID+792,21856,530,1,0,0,-3826.197,3288.165,275.3025,2.949606,300,300,0,0,1,1,0,0),
(@CGUID+793,21856,530,1,0,0,-3684.748,3705.73,279.3377,0.9773844,300,300,0,0,1,1,0,0);

-- Darkscreecher Akkarai 23161
-- Vakkiz the Windrager 23162
-- Gezzarak the Huntress 23163
-- Karrog 23165
UPDATE creature_template SET Faction = 14, UnitFlags=33088 WHERE entry IN(23163,23162,23165,23161);

-- Sahaak <Keeper of Scrolls> 23363
DELETE FROM `creature` WHERE `id` = 23363;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+886, 23363, 530, 1, -3867.538, 3464.76, 275.5156, 3.159046, 300, 300, 0, 0);

-- Add Gossip Menu for Sahaak 23363
UPDATE `creature_template` SET `GossipMenuId` = 8683 WHERE `entry` = 23363;
DELETE FROM `gossip_menu` WHERE `entry` = 8683;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(8683, 10930, 0), -- Have you come to hurt me?  I have nothing to do with the war, $r.$B$BI'm just a sickly scholar, please leave me alone!
-- This is not displayed somehow befor the trade window is opened?
(8683, 10953, 11151); -- You're a young hatchling aren't you?  My eyes fail me.$B$BI assume you're here to purchase one of my exotic texts?

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 8683;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `condition_id`) VALUES
(8683, 0, 1, 'Let me browse your goods.', 3, 128, 11151);

DELETE FROM `conditions` WHERE `condition_entry` IN (11151);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `flags`, `comments`) VALUES
(11151, 1, 41181, 0, 0, 'Player Has Aura: 41181, EffectIndex: 0');

-- ===========
-- GAMEOBJECTS
-- ===========

-- -----------------------------------------
-- Skull Pile 185913
-- -----------------------------------------
DELETE FROM gameobject WHERE id=185913;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@OGUID+3,185913,530,1,-4150.497,3044.705,315.2822,3.089183,0,0,0.9996567,0.02620165,300,300,100,1),
(@OGUID+4,185913,530,1,-4174.483,3182.775,315.4025,3.124123,0,0,0.9999619,0.008734641,300,300,100,1),
(@OGUID+5,185913,530,1,-3923.334,3020.399,356.7197,0.9599299,0,0,0.4617481,0.8870111,300,300,100,1),
(@OGUID+6,185913,530,1,-3689.785,3321.333,282.9371,3.822273,0,0,-0.9426413,0.3338076,300,300,100,1),
(@OGUID+7,185913,530,1,-3905.128,3114.473,328.4449,0.802851,0,0,0.3907309,0.920505,300,300,100,1),
(@OGUID+8,185913,530,1,-3860.092,3299.944,274.3952,1.308995,0,0,0.6087608,0.7933538,300,300,100,1),
(@OGUID+9,185913,530,1,-4000.653,3290.9,284.0651,2.426008,0,0,0.9366722,0.3502074,300,300,100,1),
(@OGUID+10,185913,530,1,-3810.646,3768.97,275.4065,3.630291,0,0,-0.970295,0.241925,300,300,100,1),
(@OGUID+11,185913,530,1,-3687.738,3736.095,279.0833,4.81711,0,0,-0.6691303,0.743145,300,300,100,1);

-- -----------------------------------------
-- Monstrous Kaliri Egg 185549
-- -----------------------------------------
-- Spawned by Monstrous Kaliri Egg Trigger c.22991
DELETE FROM gameobject WHERE id=185549;
-- INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- (@OGUID+12,185549,530,1,-3863.239,3440.425,363.6555,0.3490652,0,0,0.1736479,0.9848078,180,180,100,1),
-- (@OGUID+13,185549,530,1,-3864.132,3439.063,363.6791,6.230826,0,0,-0.02617645,0.9996573,180,180,100,1),
-- (@OGUID+14,185549,530,1,-4189.669,3039.901,352.2472,5.497789,0,0,-0.3826828,0.9238798,180,180,100,1),
-- (@OGUID+15,185549,530,1,-4187.516,3040.387,352.0713,6.265733,0,0,-0.00872612,0.9999619,180,180,100,1),
-- (@OGUID+16,185549,530,1,-4184.984,3044.709,352.394,1.815142,0,0,0.7880106,0.6156617,180,180,100,1),
-- (@OGUID+17,185549,530,1,-4186.471,3047.192,352.3156,2.600535,0,0,0.9636297,0.267241,180,180,100,1),
-- (@OGUID+18,185549,530,1,-4192.016,3046.909,352.2971,2.460913,0,0,0.9426413,0.3338076,180,180,100,1),
-- (@OGUID+19,185549,530,1,-4192.606,3045.103,352.0957,3.141593,0,0,-1,0,180,180,100,1),
-- (@OGUID+20,185549,530,1,-4109.062,3019.105,352.2397,0.2617982,0,0,0.1305256,0.9914449,180,180,100,1),
-- (@OGUID+21,185549,530,1,-4107.813,3023.422,352.1424,1.06465,0,0,0.5075378,0.8616294,180,180,100,1),
-- (@OGUID+22,185549,530,1,-3835.297,3344.773,338.1549,5.515242,0,0,-0.3746061,0.927184,180,180,100,1),
-- (@OGUID+23,185549,530,1,-3839.347,3344.851,337.8339,2.757613,0,0,0.9816265,0.1908124,180,180,100,1),
-- (@OGUID+24,185549,530,1,-4196.543,3167.687,356.3481,5.742135,0,0,-0.2672377,0.9636307,180,180,100,1),
-- (@OGUID+25,185549,530,1,-4197.013,3170.043,356.1169,5.131269,0,0,-0.5446386,0.8386708,180,180,100,1),
-- (@OGUID+26,185549,530,1,-4198.528,3168.909,355.847,5.899214,0,0,-0.1908083,0.9816273,180,180,100,1),
-- (@OGUID+27,185549,530,1,-4113.577,3022.4,352.1574,5.637414,0,0,-0.3173046,0.9483237,180,180,100,1),
-- (@OGUID+28,185549,530,1,-4110.186,3122.643,358.0826,6.248279,0,0,-0.01745224,0.9998477,180,180,100,1),
-- (@OGUID+29,185549,530,1,-4108.307,3123.657,357.6325,5.602507,0,0,-0.333807,0.9426414,180,180,100,1),
-- (@OGUID+30,185549,530,1,-4107.929,3121.497,357.4272,1.012289,0,0,0.4848089,0.8746201,180,180,100,1),
-- (@OGUID+31,185549,530,1,-3915.667,2983.397,396.9573,4.363324,0,0,-0.8191519,0.5735767,180,180,100,1),
-- (@OGUID+32,185549,530,1,-3884.286,3003.297,400.0627,4.398232,0,0,-0.8090162,0.5877863,180,180,100,1),
-- (@OGUID+33,185549,530,1,-3918.451,2982.438,397.2399,4.555311,0,0,-0.7604055,0.6494485,180,180,100,1),
-- (@OGUID+34,185549,530,1,-3883.263,3001.554,399.4308,3.892087,0,0,-0.9304171,0.3665025,180,180,100,1),
-- (@OGUID+35,185549,530,1,-3917.205,2981.62,396.4834,0.7330382,0,0,0.3583679,0.9335805,180,180,100,1),
-- (@OGUID+36,185549,530,1,-3883.213,3004.105,399.7378,4.642576,0,0,-0.7313538,0.6819983,180,180,100,1),
-- (@OGUID+37,185549,530,1,-3955.861,3222.162,347.5026,0.2443456,0,0,0.1218691,0.9925462,180,180,100,1),
-- (@OGUID+38,185549,530,1,-3953.296,3227.943,347.5635,6.03884,0,0,-0.1218691,0.9925462,180,180,100,1),
-- (@OGUID+39,185549,530,1,-3898.453,3093.063,383.6674,2.530723,0,0,0.9537163,0.3007079,180,180,100,1),
-- (@OGUID+40,185549,530,1,-3903.025,3095.847,383.783,3.996807,0,0,-0.9099607,0.4146944,180,180,100,1),
-- (@OGUID+41,185549,530,1,-3900.753,3100.755,383.7951,5.846854,0,0,-0.2164392,0.9762961,180,180,100,1),
-- (@OGUID+42,185549,530,1,-3991.585,3134.326,372.7026,6.265733,0,0,-0.00872612,0.9999619,180,180,100,1),
-- (@OGUID+43,185549,530,1,-3990.417,3139.132,372.8784,3.665196,0,0,-0.9659252,0.2588213,180,180,100,1),
-- (@OGUID+44,185549,530,1,-4044.661,3287.294,348.3623,0.3490652,0,0,0.1736479,0.9848078,180,180,100,1),
-- (@OGUID+45,185549,530,1,-4049.308,3285.901,348.3347,1.431168,0,0,0.6560583,0.7547102,180,180,100,1),
-- (@OGUID+46,185549,530,1,-3847.319,3441.392,363.648,0.4537851,0,0,0.2249508,0.9743701,180,180,100,1),
-- (@OGUID+47,185549,530,1,-3846.435,3430.294,363.7288,0.4886912,0,0,0.2419214,0.9702958,180,180,100,1),
-- (@OGUID+48,185549,530,1,-3846.345,3439.343,363.6285,6.161013,0,0,-0.06104851,0.9981348,180,180,100,1),
-- (@OGUID+49,185549,530,1,-3665.481,3380.115,320.3647,5.811947,0,0,-0.2334452,0.97237,180,180,100,1),
-- (@OGUID+50,185549,530,1,-3660.646,3381.897,320.1819,1.186823,0,0,0.5591927,0.8290377,180,180,100,1),
-- (@OGUID+51,185549,530,1,-3661.911,3379.15,320.3771,0.8901166,0,0,0.4305105,0.9025856,180,180,100,1),
-- (@OGUID+52,185549,530,1,-3687.772,3299.847,320.3074,2.757613,0,0,0.9816265,0.1908124,180,180,100,1),
-- (@OGUID+53,185549,530,1,-3685.07,3305.966,320.1982,3.403396,0,0,-0.9914446,0.1305283,180,180,100,1),
-- (@OGUID+54,185549,530,1,-3686.208,3301.003,320.5129,0.8377575,0,0,0.4067364,0.9135455,180,180,100,1),
-- (@OGUID+55,185549,530,1,-3690.651,3306.766,320.4299,3.490667,0,0,-0.984807,0.1736523,180,180,100,1),
-- (@OGUID+56,185549,530,1,-3692.641,3302.068,320.3959,6.056293,0,0,-0.113203,0.9935719,180,180,100,1),
-- (@OGUID+57,185549,530,1,-3688.303,3308.931,320.3375,1.658062,0,0,0.737277,0.6755905,180,180,100,1),
-- (@OGUID+58,185549,530,1,-4018.354,3076.7,375.29,5.550147,0,0,-0.3583679,0.9335805,180,180,100,1),
-- (@OGUID+59,185549,530,1,-4019.323,3079.743,375.1086,5.026549,0,0,-0.5877848,0.8090174,180,180,100,1),
-- (@OGUID+60,185549,530,1,-4020.066,3077.838,374.3913,1.53589,0,0,0.6946583,0.7193398,180,180,100,1),
-- (@OGUID+61,185549,530,1,-3996.888,3142.122,372.7289,3.054327,0,0,0.9990482,0.04361926,180,180,100,1),
-- (@OGUID+62,185549,530,1,-3845.156,3332.205,338.5896,2.91469,0,0,0.9935713,0.1132084,180,180,100,1),
-- (@OGUID+63,185549,530,1,-3857.694,3426.247,363.733,6.19592,0,0,-0.04361916,0.9990482,180,180,100,1),
-- (@OGUID+64,185549,530,1,-3965.164,3232.701,347.5522,6.161013,0,0,-0.06104851,0.9981348,180,180,100,1),
-- (@OGUID+65,185549,530,1,-4041.395,3271.003,346.6416,4.188792,0,0,-0.866025,0.5000008,180,180,100,1),
-- (@OGUID+66,185549,530,1,-4077.917,3412.569,334.7684,5.550147,0,0,-0.3583679,0.9335805,180,180,100,1),
-- (@OGUID+67,185549,530,1,-4076.792,3412.907,334.6169,5.201083,0,0,-0.5150375,0.8571676,180,180,100,1),
-- (@OGUID+68,185549,530,1,-4076.988,3415.22,334.0085,3.944446,0,0,-0.9205046,0.3907318,180,180,100,1),
-- (@OGUID+69,185549,530,1,-3877.273,3766.556,348.4797,2.164206,0,0,0.882947,0.4694727,180,180,100,1),
-- (@OGUID+70,185549,530,1,-3869.424,3778.605,348.7808,0.5410506,0,0,0.2672377,0.9636307,180,180,100,1),
-- (@OGUID+71,185549,530,1,-3874.339,3779.95,348.309,2.303831,0,0,0.9135447,0.4067384,180,180,100,1),
-- (@OGUID+72,185549,530,1,-3892.465,3673.997,374.4775,4.136433,0,0,-0.8788166,0.4771597,180,180,100,1),
-- (@OGUID+73,185549,530,1,-3893.092,3677.173,374.5161,5.044002,0,0,-0.5807028,0.8141156,180,180,100,1),
-- (@OGUID+74,185549,530,1,-3879.369,3665.222,374.3932,3.979355,0,0,-0.9135447,0.4067384,180,180,100,1),
-- (@OGUID+75,185549,530,1,-3884.892,3684.977,374.4915,3.752462,0,0,-0.9537163,0.3007079,180,180,100,1),
-- (@OGUID+76,185549,530,1,-3872.445,3675.384,374.4998,3.996807,0,0,-0.9099607,0.4146944,180,180,100,1),
-- (@OGUID+77,185549,530,1,-3800.801,3789.621,314.0005,6.0912,0,0,-0.09584522,0.9953963,180,180,100,1),
-- (@OGUID+78,185549,530,1,-3799.024,3788.061,314.158,3.194002,0,0,-0.9996567,0.02620165,180,180,100,1),
-- (@OGUID+79,185549,530,1,-3798.912,3790.613,313.8517,3.630291,0,0,-0.970295,0.241925,180,180,100,1),
-- (@OGUID+80,185549,530,1,-3717.186,3796.419,310.2196,4.485497,0,0,-0.782608,0.6225148,180,180,100,1),
-- (@OGUID+81,185549,530,1,-3713.666,3797.594,310.0748,4.101525,0,0,-0.8870106,0.4617491,180,180,100,1),
-- (@OGUID+82,185549,530,1,-3712.203,3792.431,310.2712,0.3665176,0,0,0.1822348,0.983255,180,180,100,1),
-- (@OGUID+83,185549,530,1,-3643.539,3760.856,310.3239,4.76475,0,0,-0.6883545,0.7253745,180,180,100,1),
-- (@OGUID+84,185549,530,1,-3645.247,3757.539,310.4355,5.759588,0,0,-0.2588186,0.9659259,180,180,100,1),
-- (@OGUID+85,185549,530,1,-3639.385,3754.924,310.3625,3.106652,0,0,0.9998474,0.01746928,180,180,100,1);

-- -----------------------------------------
-- Ancient Skull Pile 185928
-- -----------------------------------------
UPDATE `gameobject` SET `spawntimesecsmin` = 900, `spawntimesecsmax` = 900 WHERE `id` = 185928; -- currently no option for despawn as GAMEOBJECT_TYPE_QUESTGIVER = 2

-- ------------------------------

-- Terokk
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN(23377);
DELETE FROM dbscripts_on_event WHERE id IN(15014);
UPDATE gossip_menu_option SET option_text='<Call forth Terokk.>' WHERE menu_id IN(8687) AND id IN(0);
UPDATE creature_template SET UnitFlags=33088 WHERE entry IN(21838);

DELETE FROM creature WHERE guid IN(151052) AND id IN(15214);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('151052', '15214', '530', '1', '0', '0', '-3789.232', '3508.207', '289.6832', '4.363323', '20', '20', '0', '0', '42', '0', '0', '0');

DELETE FROM creature_movement_template WHERE entry IN(23377);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23377,0,1,-3335.223,3431.947,426.3864,0,0,100),
(23377,0,2,-3548.365,3463.099,365.912,1000,0,100),
(23377,1,1,-3761.507,3494.25,305.4377,0,0,100),
(23377,1,2,-3746.017,3524.334,304.6043,0,0,100),
(23377,1,3,-3779.008,3555.692,304.3266,0,0,100),
(23377,1,4,-3821.49,3536.95,304.3821,0,0,100),
(23377,1,5,-3830.611,3503.102,303.9933,0,0,100),
(23377,1,6,-3805.376,3480.285,302.4099,0,0,100),
(23377,1,7,-3774.933,3484.546,305.4377,0,0,100),
(23377,2,1,-3697.907,3470.491,315.2088,0,0,100),
(23377,2,2,-3668.21,3478.07,330.9589,0,0,100),
(23377,2,3,-3632.058,3477.314,339.8755,0,0,100),
(23377,2,4,-3586.66,3462.709,351.9589,1000,0,100);

DELETE FROM creature_template_addon WHERE entry IN(23277);
INSERT INTO creature_template_addon(entry,auras) VALUES
(23277,'40656');

UPDATE creature_template SET InhabitType=4,SpeedWalk=2.5/2.5,SpeedRun=12/7 WHERE entry IN(23377);
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(23277);
UPDATE gameobject SET rotation2=-0.4771585,rotation3=0.8788173 WHERE guid IN(14141) AND id IN(185928);

