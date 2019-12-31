-- CORE DEPENDENCY https://gitlab.com/vengeancewow/tbc-vengeance/commit/d8c196ac73cef7973d93d95761483af187ffa312
-- Also, currently spell is broken due to always targeting caster when no unit target. Needs fix before export

-- ----------------------------
-- Fix Magister Duskwither location
UPDATE creature SET position_x=9026.355, position_y=-7458.026, position_z=103.3589, orientation=5.148721 WHERE id=15951;

-- Fix template data for Magister Duskwither's Journal g.181012
UPDATE gameobject_template SET data0=1, data1=1, size=1.5 WHERE entry=181012;
-- And spawn it in world
DELETE FROM gameobject WHERE id=181012;
INSERT INTO `gameobject` (`guid`,`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(160783, 181012, 530, 1, 9049.713, -7434.266, 84.65627, 2.094393, 0, 0, 0.866025, 0.5000008, -15, -15, 100, 1);

-- Also spawn Fire gameobject
DELETE FROM gameobject WHERE id=181013;
INSERT INTO `gameobject` (`guid`,`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(160784, 181013, 530, 1, 9049.428, -7434.175, 85.13704, 1.256636, 0, 0, 0.5877848, 0.8090174, -11, -11, 100, 1);

-- Spell location for Duskwither's Fireball
DELETE FROM spell_target_position WHERE id=26660;
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(26660,530,9050,-7434,85,0);

-- Text
DELETE FROM `dbscript_string` WHERE `entry`=2000001542;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001542, 'Good riddance... now none shall be able to repeat my mistakes!', 0, 0, 0, 0, 'Magister Duskwither (Entry: 15951)');

-- Abandoned Investigations q.8891 CompleteScript
UPDATE quest_template SET CompleteScript=8891 WHERE entry=8891;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(8891); -- 18:35:40.231
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(8891,0,29,3,2,0,0,0,0,0,0,0,0,'Magister Duskwither - Remove NPCFlags 1|2',0,0,0,0), -- 18:35:40.526
(8891,1,42,0,0,0,12751,0,0,0,0,0,0,'Magister Duskwither - Set Virtual Item Slot',0,0,0,0), -- 18:35:41.356
(8891,2,3,0,0,0,0,0,0,0,0,0,0,'Magister Duskwither - Set Facing',0,0,0,0.6108652), -- 18:35:42.547
(8891,11,1,61,0,0,0,0,0,0,0,0,0,'Magister Duskwither - OneShotAttackThrown',0,0,0,0), -- 18:35:51.161
(8891,11,42,0,0,0,0,0,0,0,0,0,0,'Magister Duskwither - Set Virtual Item Slots',0,0,0,0), -- 18:35:51.162
(8891,11,9,0,15,0,0,0,0,0,181012,40,71,'Magister Duskwither - Respawn Magister Duskwither''s Journal',0,0,0,0), -- 18:35:51.162
(8891,17,15,26660,0,0,0,0,0,0,0,0,0,'Magister Duskwither - Cast Duskwither''s Fireball',0,0,0,0), -- 18:35:57.282
(8891,23,42,1,0,0,0,0,0,0,0,0,0,'Magister Duskwither - Reset Virtual Item Slots',0,0,0,0), -- 18:36:03.354
(8891,23,0,0,0,0,2000001542,0,0,0,0,0,0,'Magister Duskwither - Good riddance... now none shall be able to repeat my mistakes!',0,0,0,0), -- 18:36:03.494
(8891,29,36,1,0,0,0,0,0,0,0,0,0,'Magister Duskwither - Reset Facing',0,0,0,0.6108652), -- 18:36:09.450
(8891,30,29,3,1,0,0,0,0,0,0,0,0,'Magister Duskwither - Readd NPCFlags 1|2',0,0,0,0); -- 18:36:10.691

DELETE FROM `dbscripts_on_event` WHERE `id` IN(9813);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(9813,0,9,0,11,0,0,0,0,0,181013,40,71,'Magister Duskwither - Respawn Fire',0,0,0,0);

