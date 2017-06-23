-- Delete duplicates
DELETE FROM creature WHERE guid IN(12159,17315) AND id=24437;
DELETE FROM creature_addon WHERE guid IN(12159,17315);
DELETE FROM creature_movement WHERE id IN(12159,17315);
DELETE FROM game_event_creature WHERE guid IN(12159,17315);
DELETE FROM game_event_creature_data WHERE guid IN(12159,17315);
DELETE FROM creature_battleground WHERE guid IN(12159,17315);
DELETE FROM creature_linking WHERE guid IN(12159,17315) OR master_guid IN(12159,17315);

UPDATE creature_template_addon SET emote=0 WHERE entry=24437; -- Emote should be controlled by script

UPDATE creature_model_info SET modelid_alternative=17685 WHERE `modelid`=17689; -- Fix model randomization

UPDATE creature SET position_x=-1803.88, position_y=5140.38, position_z=-40.2092, orientation=1.500983, MovementType=2, spawndist=0 WHERE guid=12268;
UPDATE creature SET position_x=-1788.74, position_y=5149.57, position_z=-40.2092, orientation=2.338741, MovementType=2, spawndist=0 WHERE guid=12269;

-- Set the correct positions and rotations for the holographic stands. Seems like they were spawned in by hand at some point
UPDATE `gameobject` SET `position_x`=-1803.748, `position_y`=5143.45, `position_z`=-40.554, `orientation`=1.980303, `rotation2`=0.8361092, `rotation3`=0.5485631 WHERE `guid`=50361;
UPDATE `gameobject` SET `position_x`=-1787.592, `position_y`=5158.493, `position_z`=-40.554, `orientation`=2.621049, `rotation2`=0.2573433, `rotation3`=0.96632 WHERE  `guid`=50360;

-- Also update position for the target images (currently these are not scripted, it's just two static spawns, but this is the correct position)
UPDATE creature SET position_x=-1803.635, position_y=5143.491, position_z=-39.25083 WHERE guid=79462 AND id=24410;
UPDATE creature SET position_x=-1787.656, position_y=5158.583, position_z=-39.02167 WHERE guid=79464 AND id=24854;

-- These creatures are random in several ways. It will be randomized with the help of EventAI
-- They pick a random location to teleport to
-- They set an emotestate or channel a spell (Only one of them randomizes betweem spell/emote)
-- They wait a random amount of seconds before teleporting back to default position
-- Repeat

-- 12268
-- Spawn position
DELETE FROM `creature_movement` WHERE `id`=12268;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(12268,1,-1803.88,5140.38,-40.2092,1000,2443712,1.500983);

-- Random position 1 (Purple beam thing)
DELETE FROM `creature_movement_template` WHERE `entry`=24437 AND `pathId`=1;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(24437,1,1,-1803.88,5140.38,-40.2092,2000,2443708,1.500983),
(24437,2,1,-1784.51,5143.86,-40.2092,1000,2443702,5.811946),
(24437,3,1,-1784.51,5143.86,-40.2092,5000,2443709,5.811946);

-- Random position 2 (Holographic stand)
DELETE FROM `creature_movement_template` WHERE `entry`=24437 AND `pathId`=2;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(24437,1,2,-1803.88,5140.38,-40.2092,1000,2443710,1.500983),
(24437,2,2,-1803.88,5140.38,-40.2092,1000,2443711,1.500983);

-- 12269
-- Spawn position
DELETE FROM `creature_movement` WHERE `id`=12269;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(12269,1,-1788.74,5149.57,-40.2092,1000,2443701,2.338741);

-- Random position 1 (Purple beam thing)
DELETE FROM `creature_movement_template` WHERE `entry`=24437 AND `pathId`=3;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(24437,1,3,-1788.74,5149.57,-40.2092,2000,2443705,2.338741),
(24437,2,3,-1783.81,5142.04,-40.2092,1000,2443702,0.4712389),
(24437,3,3,-1783.81,5142.04,-40.2092,5000,2443706,0.4712389);

-- Random position 2 (Boxes)
DELETE FROM `creature_movement_template` WHERE `entry`=24437 AND `pathId`=4;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(24437,1,4,-1792.488,5163.685,-40.20918,1000,2443702,100),
(24437,2,4,-1792.488,5163.685,-40.20918,2000,2443703,100),
(24437,3,4,-1788.74,5149.57,-40.2092,1000,2443704,2.338741);

-- Random position 3 (Holographic stand)
DELETE FROM `creature_movement_template` WHERE `entry`=24437 AND `pathId`=5;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(24437,1,5,-1788.135,5155.346,-40.20918,1000,2443707,100),
(24437,2,5,-1788.135,5155.346,-40.20918,2000,0,100),
(24437,3,5,-1788.74,5149.57,-40.2092,1000,2443704,2.338741);


DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2443701 AND 2443712;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2443701,0,25,1,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Set Run On',0,0,0,0),
(2443701,0,20,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Set Idle Movement',0,0,0,0),
(2443701,1,35,5,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Send AI Event 5 (A) to Self',0,0,0,0),

(2443702,0,32,1,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Pause Waypoints',0,0,0,0),
(2443702,2,1,233,0,0,0,0,0,0,0,0,0,'Consortium Assistant - STATE_WORK_MINING',0,0,0,0),

(2443703,0,1,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - ONESHOT_NONE',0,0,0,0),

(2443704,0,20,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Set Idle Movement',0,0,0,0),
(2443704,90,35,5,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Send AI Event 5 (A) to Self',0,0,0,0),

(2443705,0,15,34427,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Cast Ethereal Teleport',0,0,0,0),
(2443705,1,3,0,0,0,0,0,0,0,0,0,8,'Consortium Assistant - Teleport',-1783.81,5142.04,-40.2092,0.4712389),

(2443706,0,1,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - ONESHOT_NONE',0,0,0,0),
(2443706,0,20,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Set Idle Movement',0,0,0,0),
(2443706,2,15,34427,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Cast Ethereal Teleport',0,0,0,0),
(2443706,3,3,0,0,0,0,0,0,0,0,0,8,'Consortium Assistant - Teleport',-1788.74,5149.57,-40.2092,2.338741),
(2443706,93,35,5,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Send AI Event 5 (A) to Self',0,0,0,0),

(2443707,0,32,1,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Pause Waypoints',0,0,0,0),
(2443707,2,15,43778,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Cast Channel Cast Directed (no effects)',0,0,0,0),

(2443708,0,15,34427,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Cast Ethereal Teleport',0,0,0,0),
(2443708,1,3,0,0,0,0,0,0,0,0,0,8,'Consortium Assistant - Teleport',-1784.51,5143.86,-40.2092,5.811946),

(2443709,0,1,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - ONESHOT_NONE',0,0,0,0),
(2443709,0,20,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Set Idle Movement',0,0,0,0),
(2443709,2,15,34427,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Cast Ethereal Teleport',0,0,0,0),
(2443709,3,3,0,0,0,0,0,0,0,0,0,8,'Consortium Assistant - Teleport',-1803.88,5140.38,-40.2092,1.500983),
(2443709,33,35,6,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Send AI Event 6 (B) to Self',0,0,0,0),

(2443710,0,32,1,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Pause Waypoints',0,0,0,0),
(2443710,2,35,8,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Send AI Event 8 (C) to Self',0,0,0,0), -- Randomize between the emote or channel spell

(2443711,0,1,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - ONESHOT_NONE',0,0,0,0),
(2443711,0,20,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Set Idle Movement',0,0,0,0),
(2443711,30,35,6,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Send AI Event 6 (B) to Self',0,0,0,0),

(2443712,0,20,0,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Set Idle Movement',0,0,0,0),
(2443712,1,35,6,0,0,0,0,0,0,0,0,0,'Consortium Assistant - Send AI Event 6 (A) to Self',0,0,0,0);


