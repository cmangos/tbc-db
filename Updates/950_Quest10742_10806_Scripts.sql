-- Script quests 10806, 10742 (Showdown)

SET @GOC := '20555'; 			-- Goc
SET @BARON := '22473'; 			-- Baron Sablemane
SET @SABELLIAN := '22496';		-- Sabellian
SET @REXXAR := '22448'; 		-- Rexxar
SET @MISHA := '22498'; 			-- Misha
SET @SIGNET := '31808';			-- Sablemane's Signet
SET @HORN := '31146'; 			-- Rexxar's Battle Horn
SET @HORDE_EVENT := '14462'; 	-- Triggered by Rexxar's Battle Horn
SET @ALLY_EVENT := '14525'; 	-- Triggered by Sablemane's Signet

DELETE FROM creature WHERE `id` IN (@GOC, @SABELLIAN); -- hide spawned Sabellian & Goc in TBC

-- Goc
UPDATE `creature_template`
SET
    `RegenerateStats` = '1',
    `LootId` = '0',
    `UnitFlags` = '33536',
    `MovementType` = '0',
    `FactionAlliance` = '45',
    `FactionHorde` = '45',
    SpeedWalk=(4/2.5),
    SpeedRun=(8/7),
    `HealthMultiplier` = '20.0', `PowerMultiplier` = '1', `DamageMultiplier` = '4.6', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '139720', `MaxLevelHealth` = '139720', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '813', `MaxMeleeDmg` = '1150', `MinRangedDmg` = '941', `MaxRangedDmg` = '1398', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0'
WHERE
    `entry` = @GOC;

-- Baron Sablemane
UPDATE `creature_template`
SET
    `Rank` = '1',
    `UnitClass` = '8',
    `MinLevel` = '72',
    `MaxLevel` = '72',
    `FactionAlliance` = '210',
    `FactionHorde` = '210',
    `MovementType` = '0',
    UnitFlags=33536,
    `HealthMultiplier` = '20.0', `PowerMultiplier` = '20.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '103320', `MaxLevelHealth` = '103320', `MinLevelMana` = '150000', `MaxLevelMana` = '150000', `MinMeleeDmg` = '639', `MaxMeleeDmg` = '929', `MinRangedDmg` = '564', `MaxRangedDmg` = '839', `MeleeAttackPower` = '140.0', `RangedAttackPower` = '34.0', `Armor` = '3728.0'
WHERE `entry` = @BARON;

-- Rexxar
-- sets runspeed to 9/7 for initial flight in, also sets it briefly to 31.5/7 and 70/7 before flying away
UPDATE `creature_template`
SET
    `Rank` = '1',
    `MinLevel` = '72',
    `MaxLevel` = '72',
    `FactionAlliance` = '106',
    `FactionHorde` = '106',
    `MovementType` = '2',
    SpeedWalk=(2.5/2.5),
    SpeedRun=(20/7),
    UnitFlags=33600,
    `HealthMultiplier` = '16.0', `PowerMultiplier` = '1', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '118080', `MaxLevelHealth` = '118080', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '522', `MaxMeleeDmg` = '738', `MinRangedDmg` = '447', `MaxRangedDmg` = '664', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0'
WHERE `entry` = @REXXAR;

-- Misha
UPDATE `creature_template`
SET
    `FactionAlliance` = '106',
    `FactionHorde` = '106',
    `MinLevel` = '72',
    `MaxLevel` = '72',
    `HealthMultiplier` = '8.0', `PowerMultiplier` = '1', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '59040', `MaxLevelHealth` = '59040', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '522', `MaxMeleeDmg` = '738', `MinRangedDmg` = '447', `MaxRangedDmg` = '664', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0'
WHERE `entry` = @MISHA;

-- Huffer
UPDATE creature_template SET UnitFlags=256, SpeedRun=(11.5/7) WHERE entry=22490;

-- Spirit
UPDATE creature_template SET MinLevel=72, MaxLevel=72, UnitFlags=256, FactionHorde=106, FactionAlliance=106 WHERE entry=22492;

-- [DND]Dragon Totem
-- TODO: Not despawning properly after respawning? (starts despawned)
UPDATE gameobject_template SET faction=114, flags=1, size=0.5 WHERE entry=185314;

DELETE FROM gameobject WHERE guid=170000;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(170000, 185314, 530, 1, 3723.682, 5381.09, -6.126707, 4.886924, 0, 0, -0.642787, 0.766045, -3, -3, 100, 1);

DELETE FROM `dbscripts_on_event` WHERE `id` IN (@HORDE_EVENT, @ALLY_EVENT);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(@HORDE_EVENT,0,31,@GOC,100,0,0,8,0,0,0,0,0,0,0,0,'Check for Goc'),
(@HORDE_EVENT,1,10,@GOC,40000,0,0,0,1,0,0,0,3705.892,5385.802,-3.875916,0.1919862,'spawn Goc'),
(@HORDE_EVENT,2,0,0,0,@GOC,100,3,2000005908,0,0,0,0,0,0,0,'Goc yell 0'),
(@HORDE_EVENT,3,10,@REXXAR,35000,0,0,0,1,0,0,0,3681.652,5365.256,16.54717,4.927432,'spawn Rexxar'), -- possibly where he is supposed to spawn, first waypoint in spline
(@HORDE_EVENT,2,9,170000,5,0,0,0,0,0,0,0,0,0,0,0,'respawn Dragon Totem gobject'),
-- (@HORDE_EVENT,3,13,0,0,185314,30,1,0,0,0,0,0,0,0,0,'activate Dragon Totem gobject'),
(@HORDE_EVENT,5,1,35,0,@GOC,100,3,0,0,0,0,0,0,0,0,'Goc emote OneShotAttackUnarmed'), -- Goc 'breaks' the totem object
(@HORDE_EVENT,5,40,0,0,185314,30,7,0,0,0,0,0,0,0,0,'despawn Dragon Totem gobject'),

(@ALLY_EVENT,0,31,@GOC,100,0,0,8,0,0,0,0,0,0,0,0,'Check for Goc'),
(@ALLY_EVENT,1,10,@GOC,30000,0,0,0,1,0,0,0,3703.205811,5387.445313,-4.380342,5.694569,'spawn Goc'),
(@ALLY_EVENT,2,0,0,0,@GOC,100,3,2000005898,0,0,0,0,0,0,0,'Goc yell 1'),
(@ALLY_EVENT,4,10,@BARON,30000,0,0,0,1,0,0,0,3719.341,5365.952,-7.876413,2.216568,'spawn Baron'),
(@ALLY_EVENT,5,15,15742,0,@BARON,100,3,0,0,0,0,0,0,0,0,'Baron cast Ashcrombe''s Teleport (Rank 1)'),
(@ALLY_EVENT,9,0,0,0,@BARON,100,3,2000005899,0,0,0,0,0,0,0,'Baron yell 1'),
(@ALLY_EVENT,13,0,0,0,@BARON,100,3,2000005900,0,0,0,0,0,0,0,'Baron yell 2'),
(@ALLY_EVENT,17,0,0,0,@GOC,100,3,2000005901,0,0,0,0,0,0,0,'Goc yell 2'),
(@ALLY_EVENT,21,0,0,0,@BARON,100,3,2000005902,0,0,0,0,0,0,0,'Baron yell 3'),
(@ALLY_EVENT,23,5,46,512,@BARON,100,0,0,0,0,0,0,0,0,0,'Baron Remove UnitFlag - Immune to NPC'),
(@ALLY_EVENT,23,5,46,768,@GOC,100,0,0,0,0,0,0,0,0,0,'Goc Remove UnitFlag - Immune to NPC/Player'),
(@ALLY_EVENT,24,26,0,0,@GOC,100,3,0,0,0,0,0,0,0,0,'Goc attack Player'),
(@ALLY_EVENT,24,3,0,1000,@BARON,100,3,0,0,0,0,3717.383545,5381.583984,-5.516471,2.659832,'Baron move');

DELETE FROM creature_movement_template WHERE entry=@REXXAR AND pathId IN (0,1);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- entering
(@REXXAR, 0, 1, 3681.652, 5365.256, 16.54717, 100, 500, 2244801),
(@REXXAR, 0, 2, 3683.595, 5359.013, 24.11366, 100, 0, 0),
(@REXXAR, 0, 3, 3684.11, 5357.356, 26.12221, 100, 0, 0),
(@REXXAR, 0, 4, 3690.166, 5332.238, 28.51113, 100, 0, 0),
(@REXXAR, 0, 5, 3702.881, 5313.007, 27.84446, 100, 0, 0),
(@REXXAR, 0, 6, 3728.815, 5327.952, 24.73333, 100, 0, 0),
(@REXXAR, 0, 7, 3734.789, 5342.359, 17.34445, 100, 0, 0),
(@REXXAR, 0, 8, 3732.856, 5351.67, 5.427792, 100, 0, 0),
(@REXXAR, 0, 9, 3714.24, 5355.639, -7.905539, 100, 20000, 2244802),
-- leaving
(@REXXAR, 1, 1, 3703.95, 5376.273, 1.391727, 100, 0, 0),
(@REXXAR, 1, 2, 3707.112, 5387.91, 4.508653, 100, 0, 0),
(@REXXAR, 1, 3, 3704.224, 5402.733, 10.11976, 100, 0, 0),
(@REXXAR, 1, 4, 3689.688, 5417.691, 17.9531, 100, 0, 0),
(@REXXAR, 1, 5, 3671.367, 5437.79, 25.64756, 100, 0, 0),
(@REXXAR, 1, 6, 3659.497, 5466.217, 31.36977, 100, 0, 0),
(@REXXAR, 1, 7, 3641.468, 5498.768, 33.50867, 100, 0, 0),
(@REXXAR, 1, 8, 3612.708, 5515.171, 37.61978, 100, 0, 0),
(@REXXAR, 1, 9, 3570.344, 5529.203, 44.70311, 100, 0, 0),
(@REXXAR, 1, 10, 3557.326, 5531.315, 45.6532, 100, 0, 0),
(@REXXAR, 1, 11, 3538.567, 5528.219, 50.16153, 100, 0, 0),
(@REXXAR, 1, 12, 3509.916, 5524.874, 67.42397, 100, 1000, 1); -- despawn

-- Rexxar mount displayid 4585
-- use 4110 Pridewing Patriarch or 4015 Highperch Patriarch
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2244801,2244802);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(2244801,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'Rexxar fly on'),
(2244801,1,24,4110,0,0,0,0,0,0,0,0,0,0,0,0,'Rexxar mount'),

(2244802,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Rexxar set idle movement'),
(2244802,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,'Rexxar fly off'),
(2244802,2,24,0,0,0,0,0,0,0,0,0,0,0,0,0,'Rexxar dismount'),
(2244802,3,36,0,0,@GOC,100,1,0,0,0,0,0,0,0,0,'Rexxar face Goc'),
(2244802,3,36,0,0,@GOC,100,3,0,0,0,0,0,0,0,0,'Goc face Rexxar'),
(2244802,4,0,0,0,0,0,0,2000005904,0,0,0,0,0,0,0,'Rexxar yell 1'),
(2244802,7,0,0,0,@GOC,100,3,2000005898,0,0,0,0,0,0,0,'Goc yell 1'),
(2244802,9,0,0,0,0,0,0,2000005905,0,0,0,0,0,0,0,'Rexxar yell 2'),
(2244802,14,0,0,0,@GOC,100,3,2000005901,0,0,0,0,0,0,0,'Goc yell 2'),
(2244802,18,0,0,0,0,0,0,2000005906,0,0,0,0,0,0,0,'Rexxar yell 3'),
(2244802,19,5,46,512,0,0,0,0,0,0,0,0,0,0,0,'Rexxar Remove UnitFlag - Immune to NPC'),
(2244802,19,5,46,768,@GOC,100,0,0,0,0,0,0,0,0,0,'Goc Remove UnitFlag - Immune to NPC/Player'),
(2244802,20,26,0,0,@GOC,100,3,0,0,0,0,0,0,0,0,'Goc attack Rexxar');

DELETE FROM `dbscripts_on_creature_death` WHERE `id`=@GOC;
INSERT INTO `dbscripts_on_creature_death` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(@GOC,0,44,@BARON,0,@SABELLIAN,100,3,0,0,0,0,0,0,0,0,'Baron transform to human form'),
(@GOC,0,4,46,512,@BARON,100,3,0,0,0,0,0,0,0,0,'Baron Add UnitFlag - Immune to NPC'),
(@GOC,1,3,0,1000,@BARON,100,3,0,0,0,0,3724.598145,5355.335938,-8.116101,1.696503,'Baron move'),
(@GOC,2,0,0,0,@BARON,100,3,2000005903,0,0,0,0,0,0,0,'Baron yell 4'),
(@GOC,5,15,39225,0,@BARON,100,3,0,0,0,0,0,0,0,0,'Baron cast [DND]Sablemane''s Teleport (Rank 1)'),
(@GOC,6,18,0,0,@BARON,100,2,0,0,0,0,0,0,0,0,'Baron despawn'),

(@GOC,0,3,0,300,@REXXAR,100,3,0,0,0,0,3713.322,5355.852,-8.061543,100,'Rexxar move'),
(@GOC,0,4,46,512,@REXXAR,100,3,0,0,0,0,0,0,0,0,'Rexxar Add UnitFlag - Immune to NPC'),
(@GOC,2,0,0,0,@REXXAR,100,3,2000005907,0,0,0,0,0,0,0,'Rexxar yell 4'),
(@GOC,5,24,22268,0,@REXXAR,100,3,0,0,0,0,0,0,0,0,'Rexxar mount'),
(@GOC,5,39,1,0,@REXXAR,100,3,0,0,0,0,0,0,0,0,'Rexxar fly on'),
(@GOC,7,20,2,1,@REXXAR,100,3,0,0,0,0,0,0,0,0,'Rexxar set waypoint movement');

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000005898 AND 2000005908;
INSERT INTO `dbscript_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(2000005898,'Who dares rouse Goc from his restful slumber?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'Goc yell 1'),
(2000005899,'It''s only right that you know the name of the one who will take your life.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,397,'Baron yell 1'),
(2000005900,'Baron Sablemane. It will be on your lips as you gasp your dying breath.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,153,'Baron yell 2'),
(2000005901,'Your name is as insignificant to me as the names of the thousands who have died under the might of Goc. I will crush you and $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'Goc yell 2'),
(2000005902,'Let us begin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,15,'Baron yell 3'),
(2000005903,'We will speak again, but away from here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,396,'Baron yell 4'),

(2000005904,'I am Rexxar, son of the Mok''Nathal, champion of the Horde.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,397,'Rexxar yell 1'),
(2000005905,'And their torment at your hands is at an end. By my name, I shall put an end to your life.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,113,'Rexxar yell 2'),
(2000005906,'Prepare yourself for the end.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,15,'Rexxar yell 3'),
(2000005907,'I could not have achieved this victory without you. We will speak back at Thunderlord Stronghold.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,396,'Rexxar yell 4'),
(2000005908,'Who dares place this affront upon the altar of Goc?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,53,'Goc yell 0');


