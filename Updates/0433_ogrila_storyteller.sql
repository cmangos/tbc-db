-- Ogri'la Storyteller plays one out of 3 possible events every 30min

SET @CRYSTAL_GUID := 160785;
DELETE FROM gameobject WHERE id=185901;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(@CRYSTAL_GUID+0,185901,530,1,2320.505,7295.949,373.2904,4.956738,0,0,-0.6156607,0.7880114,-45,-45,100,1),
(@CRYSTAL_GUID+1,185901,530,1,2322.847,7293.795,373.4224,2.932139,0,0,0.9945211,0.1045355,-45,-45,100,1),
(@CRYSTAL_GUID+2,185901,530,1,2319.371,7293.306,373.5336,0.5235979,0,0,0.2588186,0.9659259,-45,-45,100,1);

-- Ogri'la Storyteller c.23256
UPDATE creature SET MovementType=2 WHERE id=23256;
DELETE FROM `creature_movement_template` WHERE `entry`=23256;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`,`comment`) VALUES
(23256,1,2278.665,7314.88,365.4426,1800000,0,5.340707,'Wait approx 30min'),
(23256,2,2278.665,7314.88,365.4426,0,2325601,5.340707,'Resume path, do start stuff'),
(23256,3,2316.355,7303.424,367.0267,1000,2325602,100,NULL);

SET @STRING_ID := 2000001577;
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN @STRING_ID+0 AND @STRING_ID+21;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(@STRING_ID+0, 'We ogres were once lost...', 0, 0, 0, 396, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+1, 'Though mighty, we only knew of violence...', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+2, 'We fought long and hard.  We had proven again and again that we ogres were a force to be reckoned with.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+3, 'Yet soon we turned on each other.  Brother fought brother to decide who was the mightiest.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+4, 'It was clear that our paths were set.  We were our own greatest enemies, and we were determined to destroy ourselves.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+5, 'Among these crystals we have seen a new path, a path of peace.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+6, 'We are brothers.  And we will stand united against those who oppose our peace.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),

(@STRING_ID+7, '%s is disgusted!', 0, 2, 0, 15, 'Ogri''la Peacekeeper (Entry: 23115)'),
(@STRING_ID+8, '%s roars!', 0, 2, 0, 15, 'Ogri''la Peacekeeper (Entry: 23115)'),
(@STRING_ID+9, '%s cheers!', 0, 2, 0, 15, 'Ogri''la Peacekeeper (Entry: 23115)'),

(@STRING_ID+10, 'We are in heaven.', 0, 0, 0, 396, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+11, 'We are in Ogri''la.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+12, 'We''ve moved from bloodstained roads to roads illuminated by crystals.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+13, 'Though the sounds of battle are still near, we also hear the song of these crystals.', 11773, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+14, 'Even with enemies at our door step, the light and song of the crystals have sustained us.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+15, 'Here in Ogri''la, we have reached a higher existence.  And we will keep it that way.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),

(@STRING_ID+16, 'Do you hear that brothers?', 0, 0, 0, 396, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+17, 'Over the song of the crystals, do you hear the battle that is approaching?', 11773, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+18, 'Do you see our enemies?', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+19, 'They lurk nearby ready to strike.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+20, 'Are we ready?', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)'),
(@STRING_ID+21, 'The crystals have enlightened us brothers.  But we must still be on guard.', 0, 0, 0, 0, 'Ogri''la Storyteller (Entry: 23256)');

DELETE FROM dbscript_random_templates WHERE id=10155;
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10155,1,10137,0,'Ogri''la Storyteller Event 1'),
(10155,1,10138,0,'Ogri''la Storyteller Event 2'),
(10155,1,10139,0,'Ogri''la Storyteller Event 3');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2325601,2325602);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
-- 00:04:22.580 spawns Entry: 21234 Low: 4691396
-- (2325601,0,10,21234,126000,0,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2314.843,7299.106,365.7002,5.148721), -- This trigger does nothing that's visible in sniffs. Possibly it's a controller for something. Ignore it for now
(2325601,6,35,5,0,0,0,0,0,0,21234,161459,17,'Ogri''la Storyteller - Send AI Event 5 to Blade''s Edge Invisible Stalker',0,0,0,0),
(2325601,8,32,0,0,0,0,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - Resume Waypoints',0,0,0,0),

-- 1. 00:04:22.582 - move from spawn
-- 2. 01:13:01.712 - move from spawn
-- 3. 01:47:51.156 - move from spawn
(2325602,0,32,1,0,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - Pause Waypoints',0,0,0,0),
(2325602,7,28,8,0,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - Set StandState Kneel',0,0,0,0),
(2325602,8,15,40116,0,0,0,0,0,0,21234,161457,23,'Blade''s Edge Invisible Stalker - Cast Copy of Lava Spout Totem (Rank 1)',0,0,0,0), -- 00:04:43.687 / 01:13:22.781 / 01:48:12.228
(2325602,8,45,0,10155,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - Start Random Relay Script',0,0,0,0),
(2325602,9,36,0,0,0,0,0,0,0,23300,10,3,'Gahk - Face Ogri''la Storyteller',0,0,0,0),
(2325602,9,36,0,0,0,0,0,0,0,23316,10,3,'Torkus - Face Ogri''la Storyteller',0,0,0,0),
(2325602,9,36,0,0,0,0,0,0,0,23233,25,3,'Chu''a''lor - Face Ogri''la Storyteller',0,0,0,0),
(2325602,13,28,0,0,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - Set StandState Stand',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 10137 AND 10139;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
-- Random event 1
(10137,0,10,21234,116000,1,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2323.31,7291.406,365.7002,5.358161), -- 00:04:43.679
(10137,0,10,21234,116000,2,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2322.76,7295.074,365.7002,2.251475),
(10137,0,10,21234,116000,3,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2317.615,7291.23,365.7002,1.204277),
(10137,0,10,21234,116000,4,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2317.758,7295.116,365.7002,0.03490658),
(10137,9,0,0,0,0,@STRING_ID+0,0,0,0,0,0,0,'Ogri''la Storyteller - We ogres were once lost...',0,0,0,0), -- 00:04:52.282
(10137,17,10,23088,300000,1,0,0,0,-1,0,0,0,'Spawn Ogre Smoke Image',2319.278,7292.505,369.6418,5.044002), -- 00:05:00.679
(10137,21,0,0,0,0,@STRING_ID+1,0,0,0,0,0,0,'Ogri''la Storyteller - Though mighty, we only knew of violence...',0,0,0,0), -- 00:05:04.479
(10137,33,0,0,0,0,@STRING_ID+2,0,0,0,0,0,0,'Ogri''la Storyteller - We fought long and hard.  We had proven again and again that we ogres were a force to be reckoned with.',0,0,0,0), -- 00:05:16.579
(10137,45,0,0,0,0,@STRING_ID+3,0,0,0,0,0,0,'Ogri''la Storyteller - Yet soon we turned on each other.  Brother fought brother to decide who was the mightiest.',0,0,0,0), -- 00:05:28.746
(10137,55,1,35,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotAttackUnarmed',0,0,0,0), -- 00:05:38.746 -- questionable
(10137,56,0,0,0,0,@STRING_ID+7,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s is disgusted!',0,0,0,0), -- 00:05:40.113
(10137,62,0,0,0,0,@STRING_ID+4,0,0,0,0,0,0,'Ogri''la Storyteller - It was clear that our paths were set.  We were our own greatest enemies, and we were determined to destroy ourselves.',0,0,0,0), -- 00:05:45.812
(10137,72,1,15,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotRoar',0,0,0,0), -- 00:05:55.746
(10137,73,0,0,0,0,@STRING_ID+8,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s roars!',0,0,0,0), -- 00:05:57.112
(10137,79,0,0,0,0,@STRING_ID+5,0,0,0,0,0,0,'Ogri''la Storyteller - Among these crystals we have seen a new path, a path of peace.',0,0,0,0), -- 00:06:02.779
(10137,88,0,0,0,0,@STRING_ID+6,0,0,0,0,0,0,'Ogri''la Storyteller - We are brothers.  And we will stand united against those who oppose our peace.',0,0,0,0), -- 00:06:11.278
(10137,89,1,15,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotRoar',0,0,0,0), -- 00:06:12.779
(10137,90,0,0,0,0,@STRING_ID+9,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s cheers!',0,0,0,0), -- 00:06:14.113
(10137,97,15,40116,0,0,0,0,0,0,21234,161457,23,'Blade''s Edge Invisible Stalker - Cast Copy of Lava Spout Totem (Rank 1)',0,0,0,0), -- 00:06:20.878
(10137,100,35,6,0,0,0,0,0,0,21234,161459,17,'Ogri''la Storyteller - Send AI Event 6 to Blade''s Edge Invisible Stalker',0,0,0,0), -- 00:06:23.346
(10137,110,32,0,0,0,0,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - Resume Waypoints',0,0,0,0), -- 00:06:33.479
(10137,120,32,0,0,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - Resume Waypoints',0,0,0,0), -- 00:06:44.045
(10137,123,36,1,0,0,0,0,0,0,23300,30,7,'Gahk - Reset Facing',0,0,0,0), -- 00:06:46.879
(10137,123,36,1,0,0,0,0,0,0,23316,30,7,'Torkus - Reset Facing',0,0,0,0),
(10137,123,36,1,0,0,0,0,0,0,23233,50,7,'Chu''a''lor - Reset Facing',0,0,0,0),

-- 01:13:01.711 spawn 0x203AEC424014BC80000017000047A5DB
-- 01:13:01.712 - move from spawn
-- 01:13:08.975 - first 40114 cast
-- 01:13:13.408 - peacekeeper moves
-- 01:13:20.309 - kneel
-- 01:13:22.776 - spawn 4 triggers (01:14:53.074 despawn)
-- 01:13:23.142 - facings
-- 01:13:27.576 - stand
-- 01:13:31.208 - first talk
-- 01:13:55.541 - spawn 185901 and 23033
-- 01:14:10.109 - spawn 23252
-- 01:14:40.941 - despawn 185901, 23033, 23252
-- 01:14:45.808 - single 21234 despawns 0x203AEC424014BC80000017000047A5DB
-- 01:14:51.875 - 4 21234 despawns
-- 01:15:01.174 - Return to spawnpoint

-- Random event 2
(10138,0,10,21234,90000,1,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2323.31,7291.406,365.7002,5.358161), -- 01:13:22.776
(10138,0,10,21234,90000,2,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2322.76,7295.074,365.7002,2.251475),
(10138,0,10,21234,90000,3,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2317.615,7291.23,365.7002,1.204277),
(10138,0,10,21234,90000,4,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2317.758,7295.116,365.7002,0.03490658),
(10138,9,0,0,0,0,@STRING_ID+10,0,0,0,0,0,0,'Ogri''la Storyteller - We are in heaven.',0,0,0,0), -- 01:13:31.342
(10138,14,1,15,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotRoar',0,0,0,0), -- 01:13:36.508
(10138,15,0,0,0,0,@STRING_ID+9,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s cheers!',0,0,0,0), -- 01:13:37.808
(10138,21,0,0,0,0,@STRING_ID+11,0,0,0,0,0,0,'Ogri''la Storyteller - We are in Ogri''la.',0,0,0,0), -- 01:13:43.509
(10138,26,1,15,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotRoar',0,0,0,0), -- 01:13:48.642
(10138,26,0,0,0,0,@STRING_ID+8,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s roars!',0,0,0,0), -- 01:13:48.775
(10138,33,9,@CRYSTAL_GUID+0,45,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - ReSpawn Ogri''la Crystal Smoke Image 1',0,0,0,0), -- 01:13:55.541
(10138,33,9,@CRYSTAL_GUID+1,45,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - ReSpawn Ogri''la Crystal Smoke Image 2',0,0,0,0), -- 01:13:55.541
(10138,33,9,@CRYSTAL_GUID+2,45,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - ReSpawn Ogri''la Crystal Smoke Image 3',0,0,0,0), -- 01:13:55.541
(10138,33,10,23033,45000,1,0,0,0,-1,0,0,0,'Ogri''la Storyteller - Spawn Invisible Stalker (Floating)',2320.714,7294.402,371.7051,2.617994),  -- 01:13:55.541
(10138,33,0,0,0,0,@STRING_ID+12,0,0,0,0,0,0,'Ogri''la Storyteller - We''ve moved from bloodstained roads to roads illuminated by crystals.',0,0,0,0), -- 01:13:55.675
(10138,40,0,0,0,0,@STRING_ID+13,0,0,0,0,0,0,'Ogri''la Storyteller - Though the sounds of battle are still near, we also hear the song of these crystals.',0,0,0,0), -- 01:14:02.942
(10138,42,15,40116,0,0,0,0,0,0,21234,161457,23,'Blade''s Edge Invisible Stalker - Cast Copy of Lava Spout Totem (Rank 1)',0,0,0,0), -- 01:14:05.242
(10138,47,10,23252,31000,1,0,0,0,-1,0,0,0,'Spawn Felguard Smoke Image',2320.981,7293.128,369.3938,5.061455), -- 01:14:10.109
(10138,47,0,0,0,0,@STRING_ID+14,0,0,0,0,0,0,'Ogri''la Storyteller - Even with enemies at our door step, the light and song of the crystals have sustained us.',0,0,0,0), -- 01:14:10.242
(10138,51,15,40116,0,0,0,0,0,0,21234,161457,23,'Blade''s Edge Invisible Stalker - Cast Copy of Lava Spout Totem (Rank 1)',0,0,0,0), -- 01:14:13.776
(10138,57,0,0,0,0,@STRING_ID+15,0,0,0,0,0,0,'Ogri''la Storyteller - Here in Ogri''la, we have reached a higher existence.  And we will keep it that way.',0,0,0,0), -- 01:14:19.975
(10138,62,1,15,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotRoar',0,0,0,0), -- 01:14:25.075
(10138,62,0,0,0,0,@STRING_ID+9,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s cheers!',0,0,0,0), -- 01:14:25.208
(10138,75,15,40116,0,0,0,0,0,0,21234,161457,23,'Blade''s Edge Invisible Stalker - Cast Copy of Lava Spout Totem (Rank 1)',0,0,0,0), -- 01:14:38.109
(10138,82,35,6,0,0,0,0,0,0,21234,161459,17,'Ogri''la Storyteller - Send AI Event 6 to Blade''s Edge Invisible Stalker',0,0,0,0), -- 01:14:44.975
(10138,96,32,0,0,0,0,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - Resume Waypoints',0,0,0,0), -- 01:14:59.141
(10138,98,32,0,0,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - Resume Waypoints',0,0,0,0), -- 01:15:01.174
(10138,101,36,1,0,0,0,0,0,0,23300,30,7,'Gahk - Reset Facing',0,0,0,0), -- 01:15:04.008
(10138,101,36,1,0,0,0,0,0,0,23316,30,7,'Torkus - Reset Facing',0,0,0,0),
(10138,101,36,1,0,0,0,0,0,0,23233,50,7,'Chu''a''lor - Reset Facing',0,0,0,0),

-- 01:47:51.155 - spawn 0x203AEC424014BC80000017000047AE05
-- 01:47:51.156 - move from spawn
-- 01:47:57.255 - first 40114 cast
-- 01:47:58.054 - peacekeeper moves
-- 01:48:09.788 - kneel
-- 01:48:12.222 - 4 21234 spawns
-- 01:48:12.622 - facings
-- 01:48:17.088 - stand
-- 01:48:20.822 - first talk
-- 01:48:29.189 - spawn 23189
-- 01:48:41.355 - spawn 23190
-- 01:48:53.922 - 23300 OneShotAttackUnarmed
-- 01:49:27.188 - last cast of 40114
-- 01:49:40.122 - Peacekeeper return to spawn
-- 01:49:47.521 - despawn 4 21234 triggers
-- 01:49:48.321 - Return to spawn
-- 01:49:51.154 - Reset facings

-- Random event 3
(10139,0,10,21234,95000,1,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2323.31,7291.406,365.7002,5.358161), -- 01:48:12.222
(10139,0,10,21234,95000,2,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2322.76,7295.074,365.7002,2.251475),
(10139,0,10,21234,95000,3,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2317.615,7291.23,365.7002,1.204277),
(10139,0,10,21234,95000,4,0,0,0,-1,0,0,0,'Spawn Blade''s Edge Invisible Stalker',2317.758,7295.116,365.7002,0.03490658),
(10139,9,0,0,0,0,@STRING_ID+16,0,0,0,0,0,0,'Ogri''la Storyteller - Do you hear that brothers?',0,0,0,0), -- 01:48:20.822
(10139,15,0,0,0,0,@STRING_ID+17,0,0,0,0,0,0,'Ogri''la Storyteller - Over the song of the crystals, do you hear the battle that is approaching?',0,0,0,0), -- 01:48:26.921
(10139,17,10,23189,28000,1,0,0,0,-1,0,0,0,'Spawn Ethereal Smoke Image',2320.769,7292.098,369.4641,5.61996), -- 01:48:29.189
(10139,17,15,40116,0,0,0,0,0,0,21234,161457,23,'Blade''s Edge Invisible Stalker - Cast Copy of Lava Spout Totem (Rank 1)',0,0,0,0), -- 01:48:29.192
(10139,26,0,0,0,0,@STRING_ID+18,0,0,0,0,0,0,'Ogri''la Storyteller - Do you see our enemies?',0,0,0,0), -- 01:48:37.822
(10139,29,10,23190,16000,1,0,0,0,-1,0,0,0,'Spawn Black Dragon Smoke Image',2320.526,7291.772,371.9918,4.956735), -- 01:48:41.355
(10139,38,0,0,0,0,@STRING_ID+19,0,0,0,0,0,0,'Ogri''la Storyteller - They lurk nearby ready to strike.',0,0,0,0), -- 01:48:49.954
(10139,42,1,35,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotAttackUnarmed',0,0,0,0), -- 01:48:53.922
(10139,43,0,0,0,0,@STRING_ID+7,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s is disgusted!',0,0,0,0), -- 01:48:55.255
(10139,45,15,40116,0,0,0,0,0,0,21234,161457,23,'Blade''s Edge Invisible Stalker - Cast Copy of Lava Spout Totem (Rank 1)',0,0,0,0), -- 01:48:57.155
(10139,54,0,0,0,0,@STRING_ID+20,0,0,0,0,0,0,'Ogri''la Storyteller - Are we ready?',0,0,0,0), -- 01:49:05.754
(10139,56,1,15,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotRoar',0,0,0,0), -- 01:49:08.488
(10139,58,0,0,0,0,@STRING_ID+9,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s cheers!',0,0,0,0), -- 01:49:09.888
(10139,62,0,0,0,0,@STRING_ID+21,0,0,0,0,0,0,'Ogri''la Storyteller - The crystals have enlightened us brothers.  But we must still be on guard.',0,0,0,0), -- 01:49:14.288
(10139,65,1,15,0,0,0,0,0,0,23300,10,7,'Gahk - OneShotRoar',0,0,0,0), -- 01:49:17.021
(10139,65,0,0,0,0,@STRING_ID+8,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - %s roars!',0,0,0,0), -- 01:49:17.121
(10139,73,15,40116,0,0,0,0,0,0,21234,161457,23,'Blade''s Edge Invisible Stalker - Cast Copy of Lava Spout Totem (Rank 1)',0,0,0,0), -- 01:49:25.122
(10139,75,35,6,0,0,0,0,0,0,21234,161459,17,'Ogri''la Storyteller - Send AI Event 6 to Blade''s Edge Invisible Stalker',0,0,0,0), -- 01:49:27.188
(10139,88,32,0,0,0,0,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - Resume Waypoints',0,0,0,0), -- 01:49:40.122
(10139,96,32,0,0,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - Resume Waypoints',0,0,0,0), -- 01:49:48.321
(10139,99,36,1,0,0,0,0,0,0,23300,30,7,'Gahk - Reset Facing',0,0,0,0), -- 01:49:51.154
(10139,99,36,1,0,0,0,0,0,0,23316,30,7,'Torkus - Reset Facing',0,0,0,0),
(10139,99,36,1,0,0,0,0,0,0,23233,50,7,'Chu''a''lor - Reset Facing',0,0,0,0);

UPDATE creature SET MovementType=2 WHERE guid=161447 AND id=23115;
DELETE FROM `creature_movement` WHERE `id`=161447;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`,`comment`) VALUES
(161447,1,2341.349,7253.382,366.5562,1000,7,1.291544,'Pause Waypoints (Resumed by Ogri''la Storyteller c.23256)'), -- 00:04:30.680
(161447,2,2327.506,7275.727,365.7517,0,0,100,NULL),
(161447,3,2323.784,7282.219,365.6267,1000,7,100,'Pause Waypoints (Resumed by Ogri''la Storyteller c.23256)');

-- Blade''s Edge Invisible Stalker
DELETE FROM `creature_movement_template` WHERE `entry`=21234;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21234,1,1,2323.31,7291.406,365.7002,1000,2123401,5.358161),
(21234,1,2,2322.76,7295.074,365.7002,1000,2123401,2.251475),
(21234,1,3,2317.615,7291.23,365.7002,1000,2123401,1.204277),
(21234,1,4,2317.758,7295.116,365.7002,1000,2123401,0.03490658);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2123401);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2123401,0,32,1,0,0,0,0,0,0,0,0,0,'Blade''s Edge Invisible Stalker - Pause Waypoints',0,0,0,0),
(2123401,0,15,37746,0,0,0,0,0,0,0,0,0,'Blade''s Edge Invisible Stalker - Cast Hookah Smoke',0,0,0,0);

-- Invisible Stalker (Floating)
UPDATE creature_template SET MovementType=2 WHERE entry=23033;
DELETE FROM `creature_movement_template` WHERE `entry`=23033;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23033,1,1,2320.714,7294.402,371.7051,1000,2303301,2.617994);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2303301);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2303301,0,32,1,0,0,0,0,0,0,0,0,0,'Invisible Stalker (Floating) - Pause Waypoints',0,0,0,0),
(2303301,0,15,37248,0,0,0,0,0,0,0,0,0,'Invisible Stalker (Floating) - Cast Power Converters: Electromental Visual',0,0,0,0);

-- Ogre Smoke Image -- 00:05:00.679
DELETE FROM `creature_movement_template` WHERE `entry`=23088;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23088,1,1,2319.278,7292.505,369.6418,1000,2308801,5.044002),
(23088,1,2,2322.036,7293.374,369.5996,1000,2308802,4.852015);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2308801,2308802);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2308801,0,32,1,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Pause Waypoints',0,0,0,0),
(2308801,0,16,396,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Play sound 396',0,0,0,0), 
(2308801,0,15,40131,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Cast Copy of Shroud of Death',0,0,0,0),
(2308801,12,1,36,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack1H',0,0,0,0),
(2308801,15,1,38,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack2Loose',0,0,0,0),
(2308801,17,1,36,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack1H',0,0,0,0),
(2308801,20,1,38,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack2Loose',0,0,0,0),
(2308801,22,1,36,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack1H',0,0,0,0),
(2308801,24,1,38,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack2Loose',0,0,0,0),
(2308801,24,10,23088,300000,2,0,0,0,-1,0,0,0,'Spawn Ogre Smoke Image',2322.036,7293.374,369.5996,4.852015), -- 00:05:24.980
(2308801,26,1,36,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack1H',0,0,0,0),
(2308801,28,1,38,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack2Loose',0,0,0,0),
(2308801,30,1,36,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack1H',0,0,0,0),
(2308801,33,1,38,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack2Loose',0,0,0,0),
(2308801,35,1,36,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack1H',0,0,0,0),
(2308801,36,1,38,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack2Loose',0,0,0,0),
(2308801,37,3,0,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Set Orientation',0,0,0,0.3049044), -- 00:05:37.147
(2308801,37,3,0,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - Set Orientation',0,0,0,3.446497),
(2308801,38,1,53,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotBattleRoar',0,0,0,0), -- 37
(2308801,38,1,45,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - OneShotReady1H',0,0,0,0), -- 37
(2308801,39,1,38,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack2Loose',0,0,0,0), -- 00:05:39.479
(2308801,39,1,36,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - OneShotAttack1H',0,0,0,0),
(2308801,41,1,389,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttackOff',0,0,0,0),
(2308801,41,1,37,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - OneShotAttack2HTight',0,0,0,0),
(2308801,44,1,53,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotBattleRoar',0,0,0,0),
(2308801,44,1,45,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - OneShotReady1H',0,0,0,0),
(2308801,47,1,38,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttack2Loose',0,0,0,0),
(2308801,47,1,36,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - OneShotAttack1H',0,0,0,0),
(2308801,50,1,389,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotAttackOff',0,0,0,0),
(2308801,50,1,37,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - OneShotAttack2HTight',0,0,0,0),
(2308801,52,1,53,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - OneShotBattleRoar',0,0,0,0),
(2308801,52,1,45,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - OneShotReady1H',0,0,0,0),
(2308801,53,1,36,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - OneShotAttack1H',0,0,0,0),
(2308801,54,28,7,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Set StandState Dead',0,0,0,0), -- 00:05:54.546
(2308801,54,28,7,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - Set StandState Dead',0,0,0,0),
(2308801,83,18,0,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Despawn Self',0,0,0,0),
(2308801,83,18,0,0,0,0,0,0,0,23088,5,7,'Ogre Smoke Image(2) - Despawn Self',0,0,0,0),

(2308802,0,32,1,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Pause Waypoints',0,0,0,0),
(2308802,0,16,396,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Play sound 396',0,0,0,0),
(2308802,0,15,40131,0,0,0,0,0,0,0,0,0,'Ogre Smoke Image - Cast Copy of Shroud of Death',0,0,0,0);

-- Felguard Smoke Image - spawned 01:14:10.109
DELETE FROM `creature_movement_template` WHERE `entry`=23252;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23252,1,1,2320.981,7293.128,369.3938,1000,2325201,5.061455);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2325201);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2325201,0,32,1,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Pause Waypoints',0,0,0,0),
(2325201,0,15,40131,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:14:10.111
(2325201,2,1,36,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - OneShotAttack1H',0,0,0,0), -- 01:14:12.575
(2325201,2,15,40131,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:14:12.575
(2325201,5,1,36,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - OneShotAttack1H',0,0,0,0), -- 01:14:14.976
(2325201,5,15,40131,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:14:14.976
(2325201,7,1,36,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - OneShotAttack1H',0,0,0,0), -- 01:14:17.409
(2325201,7,15,40131,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:14:17.409
(2325201,10,1,36,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - OneShotAttack1H',0,0,0,0), -- 01:14:19.841
(2325201,10,15,40131,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:14:19.842
(2325201,11,1,36,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - OneShotAttack1H',0,0,0,0), -- 01:14:21.042
(2325201,11,15,40131,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:14:21.043
(2325201,13,1,36,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - OneShotAttack1H',0,0,0,0), -- 01:14:23.441
(2325201,13,15,40131,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:14:23.442
(2325201,14,28,7,0,0,0,0,0,0,0,0,0,'Felguard Smoke Image - Set StandState Dead',0,0,0,0); -- 01:14:23.875

-- Ethereal Smoke Image - spawned 01:48:29.189
DELETE FROM `creature_movement_template` WHERE `entry`=23189;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23189,1,1,2320.769,7292.098,369.4641,1000,2318901,5.61996);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2318901);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2318901,0,32,1,0,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - Pause Waypoints',0,0,0,0), -- 01:48:29.189
(2318901,0,15,40131,0,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:48:29.189
(2318901,2,1,36,0,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - OneShotAttack1H',0,0,0,0), -- 01:48:31.655
(2318901,10,15,40131,0,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:48:38.922
(2318901,12,1,36,0,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - OneShotAttack1H',0,0,0,0), -- 01:48:41.355
(2318901,19,15,40131,0,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:48:48.656
(2318901,22,1,36,0,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - OneShotAttack1H',0,0,0,0); -- 01:48:51.089

-- Black Dragon Smoke Image - spawned 01:48:41.355
DELETE FROM `creature_movement_template` WHERE `entry`=23190;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23190,1,1,2320.526,7291.772,371.9918,1000,2319001,4.956735);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2319001);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2318901,0,32,1,0,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - Pause Waypoints',0,0,0,0),
(2319001,0,15,40131,0,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - Cast Copy of Shroud of Death',0,0,0,0), -- 01:48:41.357
(2319001,13,1,15,0,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - OneShotRoar',0,0,0,0), -- 01:48:54.754
(2319001,13,16,3525,0,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - Play sound 3525',0,0,0,0); -- 01:48:54.755



