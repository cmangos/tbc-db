-- *********************************
-- Misc
-- *********************************

-- -------------------
-- Stabled animals should move randomly
-- -------------------
UPDATE `creature` SET `spawndist`=2, `MovementType`=1 WHERE `guid` IN(68335,68334,68332,68333);
UPDATE `creature` SET `spawndist`=1, `MovementType`=1,`position_x`=-1482.726,`position_y`=7160.869,`position_z`=43.47326 WHERE `guid`=68337; -- Raptor
UPDATE `creature` SET `spawndist`=2, `MovementType`=1,`position_x`=-1489.766,`position_y`=7174.817,`position_z`=43.09795 WHERE `guid`=68336; -- Bear

-- -------------------
-- 2 more Garadar Defenders that should be kneeling
-- -------------------
DELETE FROM `creature_addon` WHERE `guid` IN(66676,66671);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(66676, 0, 8, 1, 16, 0, 0, NULL),
(66671, 0, 8, 1, 16, 0, 0, NULL);

-- -------------------
-- Seer Nakha missing spawn
-- -------------------
-- Update template with data from wotlk-db. Most of these fields were empty in tbc-db
UPDATE `creature_template` SET `DamageMultiplier`='1', `MinLevelHealth`='5060', `MaxLevelHealth`='5060', `MinLevelMana`='2933', `MaxLevelMana`='2933', `MinMeleeDmg`='204', `MaxMeleeDmg`='287', `MinRangedDmg`='170', `MaxRangedDmg`='253', `Armor`='5821', `MeleeAttackPower`='272', `RangedAttackPower`='31', `RangedBaseAttackTime`='0' WHERE `entry`=23265;

DELETE FROM `creature` WHERE `guid`=151176;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151176, 23265, 530, 1, 0, 0, -1333.528, 7221.961, 33.58298, 2.268928, 300, 0, 0, 5060, 2933, 0, 0);

-- -------------------
-- Missing gossip menus
-- -------------------
DELETE FROM `gossip_menu` WHERE `entry` IN(8019,7619,7622,7623,7630,7944,9035,7686,7684,7375,7372,7373);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8019,9886,0,0), -- Garrosh
(7619,9271,0,0), -- Farseer Kurkush
(7622,9276,0,0), -- Farseer Corhuk
(7623,9277,0,0), -- Farseer Margadesh
(7630,9297,0,0), -- Matron Drakia
(7944,9739,0,0), -- Garadar Guard Captain
(9035,12213,0,0), -- Karrtog
(7686,9375,0,0), -- Warden Bullrok
(7684,9373,0,0), -- Garadar Bulletin Board (ID already set in gameobject_template)
-- Other mag'har npcs
(7375,8813,0,0), -- Gorkan Bloodfist
(7372,8810,0,0), -- Earthcaller Ryga
(7373,8811,0,0); -- Provisioner Braknar

UPDATE `creature_template` SET `GossipMenuId`=8019 WHERE `entry`=18063; -- Garrosh
UPDATE `creature_template` SET `GossipMenuId`=7619 WHERE `entry`=18066; -- Farseer Kurkush
UPDATE `creature_template` SET `GossipMenuId`=7622 WHERE `entry`=18067; -- Farseer Corhuk
UPDATE `creature_template` SET `GossipMenuId`=7623 WHERE `entry`=18068; -- Farseer Margadesh
UPDATE `creature_template` SET `GossipMenuId`=7630 WHERE `entry`=18302; -- Matron Drakia
UPDATE `creature_template` SET `GossipMenuId`=7944 WHERE `entry`=19158; -- Garadar Guard Captain
UPDATE `creature_template` SET `GossipMenuId`=9035 WHERE `entry`=24881; -- Karrtog
UPDATE `creature_template` SET `GossipMenuId`=7686 WHERE `entry`=18407; -- Warden Bullrok
-- Other mag'har npcs
UPDATE `creature_template` SET `GossipMenuId`=7375 WHERE `entry`=16845; -- Gorkan Bloodfist
UPDATE `creature_template` SET `GossipMenuId`=7372 WHERE `entry`=17123; -- Earthcaller Ryga
UPDATE `creature_template` SET `GossipMenuId`=7373 WHERE `entry`=16848; -- Provisioner Braknar

-- *********************************
-- Warden Bullrok (Entry: 18407)
-- *********************************

DELETE FROM `db_script_string` WHERE `entry` IN(2000001138,2000001139);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001138, 'Damn those ogres. Damn them to the Nether. Won''t someone save us from these savages! This is the fifth kidnapping in as many days.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 234, NULL),
(2000001139, 'That''s the best reward we''re going to be able to offer. Hopefully someone accepts the mission.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1840701;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1840701,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Warden Bullrok - Pause Waypoints'),
(1840701,0,42,0,0,0,0,0,1903,0,0,0,0,0,0,0,'Warden Bullrok - Equip Hammer'),
(1840701,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.96706,'Warden Bullrok - Change orientation'),
(1840701,4,0,0,0,0,0,0,2000001138,0,0,0,0,0,0,0,'Warden Bullrok - Damn those ogres. Damn them to the Nether. Won''t someone save us from these savages! This is the fifth kidnapping in as many days.'),
(1840701,20,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Warden Bullrok - Turn off emote'),
(1840701,21,0,0,0,0,0,0,2000001139,0,0,0,0,0,0,0,'Warden Bullrok - That''s the best reward we''re going to be able to offer. Hopefully someone accepts the mission.'),
(1840701,24,36,1,0,0,0,0,0,0,0,0,0,0,0,0,'Warden Bullrok - Reset orientation'),
(1840701,24,42,0,0,0,0,0,0,0,0,0,0,0,0,0,'Warden Bullrok - UnEquip Hammer'),
(1840701,25,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'Warden Bullrok - Resume Waypoints');

UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=18407;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=65799;
DELETE FROM `creature_movement_template` WHERE `entry`=18407;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(18407,1,-1356.12,7213.31,33.717,275000,1840701,0,0,0,0,0,0,0,0.628319,0,0);

-- *********************************
-- Matron Drakia (Entry: 18302)
-- *********************************
-- She was missing texts, had incorrect points and slightly incorrect scripts.

-- Speed
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=18302;
-- Texts
-- Delete old text. It had incorrect language and emote, and it looks better to have all of them next to each other
DELETE FROM `db_script_string` WHERE `entry`=2000005041; 
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001140 AND 2000001143;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001140, 'Greatmother, is there anything I can do?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 6, NULL), 
(2000001141, 'Greatmother, please drink this water.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 6, NULL), 
(2000001142, 'Greatmother, Garrosh has lost his heart. We are lost without you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 6, NULL), 
(2000001143, 'I will do my best to take care of the children, Greatmother.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 6, NULL);


-- Delete old scripts and replace them
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1830201 AND 1830207;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1830201,0,0,0,0,0,0,0,2000001140,2000001141,2000001142,2000001143,0,0,0,0,'Matron Drakia - Random Text'),

(1830202,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - Pause Waypoints'),
(1830202,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - STATE_KNEEL'),
(1830202,105,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - STATE_STAND'),
(1830202,105,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - Resume Waypoints'),

(1830203,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - OneShotKneel'),

(1830204,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - Pause Waypoints'),
(1830204,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - STATE_USESTANDING'),
(1830204,43,1,30,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - STATE_NONE'),
(1830204,43,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - Resume Waypoints'),

(1830205,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - Pause Waypoints'),
(1830205,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - STATE_USESTANDING'),
(1830205,23,1,30,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - STATE_NONE'),
(1830205,23,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - Resume Waypoints'),

(1830206,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - Pause Waypoints'),
(1830206,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - STATE_USESTANDING'),
(1830206,38,1,30,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - STATE_NONE'),
(1830206,38,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'Matron Drakia - Resume Waypoints');

UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=18302;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=18302;
DELETE FROM `creature_movement` WHERE `id`=65638; -- Delete old GUID path
DELETE FROM `creature_movement_template` WHERE `entry`=18302;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(18302,1,-1217.702,7162.614,57.64006,0,1830201,0,0,0,0,0,0,0,0,0,0),
(18302,2,-1220.25,7164.88,57.2655,500,1830202,0,0,0,0,0,0,0,2.54339,0,0),
(18302,3,-1224.101,7182.29,57.32571,3650,1830203,0,0,0,0,0,0,0,1.53589,0,0),
(18302,4,-1235.985,7174.404,57.33359,0,0,0,0,0,0,0,0,0,0,0,0),
(18302,5,-1241.797,7164.311,57.631,0,0,0,0,0,0,0,0,0,0,0,0),
(18302,6,-1242.862,7141.084,57.39006,500,1830204,0,0,0,0,0,0,0,3.857178,0,0),
(18302,7,-1216.119,7136.42,57.39006,500,1830205,0,0,0,0,0,0,0,5.113815,0,0),
(18302,8,-1202.38,7148.165,57.39006,3500,1830203,0,0,0,0,0,0,0,5.916666,0,0),
(18302,9,-1218.452,7153.36,57.39006,500,1830206,0,0,0,0,0,0,0,2.565634,0,0);

-- *********************************
-- Bleeding Hollow Refugee (Entry: 18292, GUID: 151242)
-- *********************************

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` =1829201;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1829201,18,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Bleeding Hollow Refugee - Pause Waypoints'),
(1829201,18,28,3,0,0,0,0,0,0,0,0,0,0,0,0,'Bleeding Hollow Refugee - UNIT_STAND_STATE_SLEEP'),
(1829201,90,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'Bleeding Hollow Refugee - UNIT_STAND_STATE_SIT'),
(1829201,90,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bleeding Hollow Refugee - Resume Waypoints');

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=151242;
DELETE FROM `creature_movement` WHERE `id`=151242;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(151242,1,-1243.43,7138.18,57.3609,0,1829201,0,0,0,0,0,0,0,2.44346,0,0);


