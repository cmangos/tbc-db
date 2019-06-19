-- Script spawning of Bash'ir and Bash'ir's Harbinger (c.23391, c.23390)
-- Script the spawn event that takes place after a player uses an Accelerator Module i.32759 on a Proton Accelerator Controller

-- Bash'ir's Harbinger c.23390
-- Bash'ir c.23391
-- Proton Accelerator Controller g.185959/185962/185963/185964

-- (Re)Add 4 generic DBScripts that are used in this event
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(13,14,15,16);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(13,0,35,8,0,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 8 (C) to Self',0,0,0,0),
(14,0,35,9,0,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 9 (D) to Self',0,0,0,0),
(15,0,35,10,0,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 10 (E) to Self',0,0,0,0),
(16,0,35,11,0,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 11 (F) to Self',0,0,0,0);

-- Gameobjects despawn handled by script on Harbinger/Bash'ir despawn, so 30min respawntimer is just in case something malfunctions
DELETE FROM gameobject WHERE id IN(185962,185964,185959,185963);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(160608,185959,530,1,3812.865,5933.495,266.6364,4.677484,0,0,-0.7193394,0.6946588,1800,1800,100,1),
(160609,185962,530,1,3941.589,5969.436,266.1698,3.700105,0,0,-0.9612608,0.2756405,1800,1800,100,1),
(160610,185963,530,1,3791.777,6008.304,265.1614,5.323256,0,0,-0.4617481,0.8870111,1800,1800,100,1),
(160611,185964,530,1,3905.888,6044.87,265.3038,1.675514,0,0,0.743144,0.6691315,1800,1800,100,1);

DELETE FROM npc_text WHERE ID IN(10954,10955);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`) VALUES 
(10954, 'The controller can be used to activate the linked proton accelerator.  This will call forth one of Bash''ir''s harbingers, or perhaps Bash''ir himself.$B$BAssuming, of course, that you have an accelerator module to activate the device.', 1),
(10955, 'The controller can be used to activate the linked proton accelerator.  This will call forth one of Bash''ir''s harbingers, or perhaps Bash''ir himself.$B$BUnfortunate that you do not possess an accelerator module to activate the device.', 1);

DELETE FROM `conditions` WHERE `condition_entry`=10162 AND type=2 AND value1=32759;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10162, 2, 32759, 1);

UPDATE creature_template SET MovementType=2 WHERE entry IN(23059,23390,23391);

DELETE FROM `dbscript_string` WHERE `entry` IN(2000001615,2000001616);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001615, 'Fools!', 0, 1, 0, 0, 'Bash''ir''s Harbinger (Entry: 23390)'),
(2000001616, 'Next time, show me the respect of at least being prepared!', 0, 1, 0, 0, 'Bash''ir (Entry: 23391)');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2305901,2305902,2305903);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2305901,0,32,1,0,0,0,0,0,0,0,0,0,'Legion Ring Event InvisMan - Pause Waypoints',0,0,0,0),
(2305901,0,15,41332,0,0,0,0,0,0,23390,20,1,'Legion Ring Event InvisMan - Cast Blade''s Edge - Bash''ir Materialization Beam 01',0,0,0,0),
(2305901,0,15,41332,0,0,0,0,0,0,23391,20,1,'Legion Ring Event InvisMan - Cast Blade''s Edge - Bash''ir Materialization Beam 01',0,0,0,0),

(2305902,0,32,1,0,0,0,0,0,0,0,0,0,'Legion Ring Event InvisMan - Pause Waypoints',0,0,0,0),
(2305902,5,15,41335,0,0,0,0,0,0,23390,40,1,'Legion Ring Event InvisMan - Cast Blade''s Edge - Bash''ir Materialization Beam 02',0,0,0,0),
(2305902,5,15,41335,0,0,0,0,0,0,23391,40,1,'Legion Ring Event InvisMan - Cast Blade''s Edge - Bash''ir Materialization Beam 02',0,0,0,0),

(2305903,0,32,1,0,0,0,0,0,0,0,0,0,'Legion Ring Event InvisMan - Pause Waypoints',0,0,0,0),
(2305903,7,15,41336,0,0,0,0,0,0,23390,20,1,'Legion Ring Event InvisMan - Cast Blade''s Edge - Bash''ir Materialization Beam 03',0,0,0,0),
(2305903,7,15,41336,0,0,0,0,0,0,23391,20,1,'Legion Ring Event InvisMan - Cast Blade''s Edge - Bash''ir Materialization Beam 03',0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2339001 AND 2339005;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2339101 AND 2339104;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
-- 185959
(2339002,0,0,0,0,0,2000001615,0,0,0,0,0,0,'Bash''ir''s Harbinger - Fools!',0,0,0,0),
(2339002,0,9,0,0,0,0,0,0,0,185959,160608,16,'Bash''ir''s Harbinger - Respawn Proton Accelerator Controller',0,0,0,0),
(2339002,0,18,500,0,0,0,0,0,0,0,0,0,'Bash''ir''s Harbinger - Despawn Self',0,0,0,0),
-- 185962
(2339003,0,0,0,0,0,2000001615,0,0,0,0,0,0,'Bash''ir''s Harbinger - Fools!',0,0,0,0),
(2339003,0,9,0,0,0,0,0,0,0,185962,160609,16,'Bash''ir''s Harbinger - Respawn Proton Accelerator Controller',0,0,0,0),
(2339003,0,18,500,0,0,0,0,0,0,0,0,0,'Bash''ir''s Harbinger - Despawn Self',0,0,0,0),
-- 185963
(2339004,0,0,0,0,0,2000001615,0,0,0,0,0,0,'Bash''ir''s Harbinger - Fools!',0,0,0,0),
(2339004,0,9,0,0,0,0,0,0,0,185963,160610,16,'Bash''ir''s Harbinger - Respawn Proton Accelerator Controller',0,0,0,0),
(2339004,0,18,500,0,0,0,0,0,0,0,0,0,'Bash''ir''s Harbinger - Despawn Self',0,0,0,0),
-- 185964
(2339005,0,0,0,0,0,2000001615,0,0,0,0,0,0,'Bash''ir''s Harbinger - Fools!',0,0,0,0),
(2339005,0,9,0,0,0,0,0,0,0,185964,160611,16,'Bash''ir''s Harbinger - Respawn Proton Accelerator Controller',0,0,0,0),
(2339005,0,18,500,0,0,0,0,0,0,0,0,0,'Bash''ir''s Harbinger - Despawn Self',0,0,0,0),

-- 185959
(2339101,0,0,0,0,0,2000001616,0,0,0,0,0,0,'Bash''ir - Next time, show me the respect of at least being prepared!',0,0,0,0),
(2339101,0,9,0,0,0,0,0,0,0,185959,160608,16,'Bash''ir - Respawn Proton Accelerator Controller',0,0,0,0),
(2339101,0,18,500,0,0,0,0,0,0,0,0,0,'Bash''ir - Despawn Self',0,0,0,0),
-- 185962
(2339102,0,0,0,0,0,2000001616,0,0,0,0,0,0,'Bash''ir - Next time, show me the respect of at least being prepared!',0,0,0,0),
(2339102,0,9,0,0,0,0,0,0,0,185962,160609,16,'Bash''ir - Respawn Proton Accelerator Controller',0,0,0,0),
(2339102,0,18,500,0,0,0,0,0,0,0,0,0,'Bash''ir - Despawn Self',0,0,0,0),
-- 185963
(2339103,0,0,0,0,0,2000001616,0,0,0,0,0,0,'Bash''ir - Next time, show me the respect of at least being prepared!',0,0,0,0),
(2339103,0,9,0,0,0,0,0,0,0,185963,160610,16,'Bash''ir - Respawn Proton Accelerator Controller',0,0,0,0),
(2339103,0,18,500,0,0,0,0,0,0,0,0,0,'Bash''ir - Despawn Self',0,0,0,0),
-- 185964
(2339104,0,0,0,0,0,2000001616,0,0,0,0,0,0,'Bash''ir - Next time, show me the respect of at least being prepared!',0,0,0,0),
(2339104,0,9,0,0,0,0,0,0,0,185964,160611,16,'Bash''ir - Respawn Proton Accelerator Controller',0,0,0,0),
(2339104,0,18,500,0,0,0,0,0,0,0,0,0,'Bash''ir - Despawn Self',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10157,10158,10159,10160) AND command=9;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10157,0,9,0,0,0,0,0,0,0,185959,160608,16,'Bash''ir''s Harbinger/Bash''ir - Respawn Proton Accelerator Controller',0,0,0,0),
(10158,0,9,0,0,0,0,0,0,0,185962,160609,16,'Bash''ir''s Harbinger/Bash''ir - Respawn Proton Accelerator Controller',0,0,0,0),
(10159,0,9,0,0,0,0,0,0,0,185963,160610,16,'Bash''ir''s Harbinger/Bash''ir - Respawn Proton Accelerator Controller',0,0,0,0),
(10160,0,9,0,0,0,0,0,0,0,185964,160611,16,'Bash''ir''s Harbinger/Bash''ir - Respawn Proton Accelerator Controller',0,0,0,0);

-- ----------------------------
-- Proton Accelerator Controller (Entry: 185959)
-- East
DELETE FROM gossip_menu WHERE entry=8706;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8706, 10954, 0, 10162),
(8706, 10955, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=8706;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8706, 0, 0, 'Power the proton accelerator with an Accelerator Module to summon Bash\'ir, or one of his harbingers.', 1, 0, -1, 0, 870601, 0, 0, '', 10162);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(870601);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(870601,0,15,41225,0,0,0,0,0,0,0,0,2,'Proton Accelerator Controller - Make Player Cast Bash''ir Landing Boss: Force Cast - East',0,0,0,0),
(870601,0,40,0,0,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - Despawn Self',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10149,10150) AND command=10;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10149,0,10,23390,300000,1,0,0,0,-1,0,0,8,'Spawn Bash''ir''s Harbinger',3831.746,5905.568,267.3358,2.365805),
(10150,0,10,23391,300000,1,0,0,0,-1,0,0,8,'Spawn Bash''ir',3831.746,5905.568,267.3358,2.365805);

DELETE FROM dbscript_random_templates WHERE id=10159 AND target_id IN(10149,10150);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10159,1,10149,90,'Spawn Bash''ir''s Harbinger'),
(10159,1,10150,10,'Spawn Bash''ir');

DELETE FROM `dbscripts_on_event` WHERE `id` IN(15112);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(15112,0,45,0,10159,0,0,0,0,0,0,0,0,'Spawn Bash''ir''s Harbinger (90%) or Bash''ir (10%)',0,0,0,0),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3813.917,5930.542,270.5378,3.735005),
(15112,0,10,23059,14600,3,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3811.243,5927.829,277.5243,3.473205),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3809.276,5926.106,276.7728,3.735005),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3819.508,5924.207,274.6422,3.211406),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3818.898,5923.751,268.5068,3.735005),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3806.464,5923.637,270.624,3.228859),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3817.125,5921.867,276.7972,5.131268),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3825.467,5918.669,271.4534,5.178046),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3813.382,5918.309,268.4932,4.520403),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3812.758,5917.878,274.551,2.86234),
(15112,0,10,23059,14600,2,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3822.844,5915.938,277.119,4.520403),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3820.903,5914.194,277.4704,5.605237),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3831.105,5912.234,275.4609,4.881932),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3830.48,5911.823,269.5042,4.978702),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3818.226,5911.569,271.4362,5.84648),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3828.745,5909.962,277.8467,5.338246),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3837.276,5906.523,271.3421,3.445422),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3825.023,5906.342,269.646,6.099082),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3824.373,5905.865,275.5559,6.172438),
(15112,0,10,23059,14600,1,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3834.622,5903.869,277.6865,2.688083),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3832.669,5902.162,277.6018,1.68464),
(15112,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3829.814,5899.67,271.6451,1.12549);

-- Bash'ir's Harbinger
DELETE FROM creature_movement_template WHERE entry IN(23390,23391) AND pathId=1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23390,1,1,3806.538,5930.291,266.1328,1000,13,100),
(23390,1,2,3806.538,5930.291,266.1328,1000,2339002,100),

(23391,1,1,3806.538,5930.291,266.1328,1000,13,100),
(23391,1,2,3806.538,5930.291,266.1328,1000,2339101,100);

-- Invisman
DELETE FROM creature_movement_template WHERE entry=23059 AND pathId IN(1,2,3);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23059,1,1,3834.622,5903.869,277.6865,1000,2305901,2.688083),
(23059,2,1,3822.844,5915.938,277.119,1000,2305902,4.520403),
(23059,3,1,3811.243,5927.829,277.5243,1000,2305903,3.473205);

-- ----------------------------
-- Proton Accelerator Controller (Entry: 185962)
-- North
DELETE FROM gossip_menu WHERE entry=8707;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8707, 10954, 0, 10162),
(8707, 10955, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=8707;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8707, 0, 0, 'Power the proton accelerator with an Accelerator Module to summon Bash\'ir, or one of his harbingers.', 1, 0, -1, 0, 870701, 0, 0, '', 10162);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(870701);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(870701,0,15,41226,0,0,0,0,0,0,0,0,2,'Proton Accelerator Controller - Make Player Cast Bash''ir Landing Boss: Force Cast - North',0,0,0,0),
(870701,0,40,0,0,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - Despawn Self',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10151,10152) AND command=10;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10151,0,10,23390,300000,2,0,0,0,-1,0,0,8,'Spawn Bash''ir''s Harbinger',3923.801,5940.345,267.3069,1.233332),
(10152,0,10,23391,300000,2,0,0,0,-1,0,0,8,'Spawn Bash''ir',3923.801,5940.345,267.3069,1.233332);

DELETE FROM dbscript_random_templates WHERE id=10160 AND target_id IN(10151,10152);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10160,1,10151,90,'Spawn Bash''ir''s Harbinger'),
(10160,1,10152,10,'Spawn Bash''ir');

DELETE FROM `dbscripts_on_event` WHERE `id` IN(15113);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(15113,0,45,0,10160,0,0,0,0,0,0,0,0,'Spawn Bash''ir''s Harbinger (90%) or Bash''ir (10%)',0,0,0,0),
(15113,0,10,23059,14600,5,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3927.062,5954.042,278.6801,3.263766),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3926.458,5945.163,278.0529,4.208329),
(15113,0,10,23059,14600,6,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3932.962,5969.581,277.9629,3.351032),
(15113,0,10,23059,14600,4,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3921.108,5938.311,277.3162,0.646901),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3932.358,5960.858,277.1997,1.762783),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3921.281,5947.217,275.3957,5.063899),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3929.426,5944.104,275.2721,3.730616),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3935.428,5959.528,274.9583,2.775074),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3927.101,5962.87,274.9351,5.305801),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3933.036,5951.917,271.7996,4.038817),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3923.646,5955.377,271.7128,4.722702),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3917.618,5939.827,271.2817,0.08367716),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3926.968,5936.028,271.0751,2.203756),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3938.931,5967.347,271.0114,2.775074),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3929.435,5971.034,270.8694,0.4712389),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3928.865,5944.299,269.2476,3.804406),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3921.615,5947.083,269.0977,5.025998),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3927.69,5962.652,268.9678,6.091199),
(15113,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3934.646,5959.894,268.7249,2.932153);

-- Bash'ir's Harbinger
DELETE FROM creature_movement_template WHERE entry IN(23390,23391) AND pathId=2;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23390,2,1,3935.58,5973.892,266.6255,1000,14,100),
(23390,2,2,3935.58,5973.892,266.6255,1000,2339003,100),

(23391,2,1,3935.58,5973.892,266.6255,1000,14,100),
(23391,2,2,3935.58,5973.892,266.6255,1000,2339102,100);

-- Invisman
DELETE FROM creature_movement_template WHERE entry=23059 AND pathId IN(4,5,6);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23059,4,1,3921.108,5938.311,277.3162,1000,2305901,0.646901),
(23059,5,1,3927.062,5954.042,278.6801,1000,2305902,3.263766),
(23059,6,1,3932.962,5969.581,277.9629,1000,2305903,3.351032);

-- ----------------------------
-- Proton Accelerator Controller (Entry: 185963)
-- South
DELETE FROM gossip_menu WHERE entry=8708;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8708, 10954, 0, 10162),
(8708, 10955, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=8708;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8708, 0, 0, 'Power the proton accelerator with an Accelerator Module to summon Bash\'ir, or one of his harbingers.', 1, 0, -1, 0, 870801, 0, 0, '', 10162);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(870801);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(870801,0,15,41227,0,0,0,0,0,0,0,0,2,'Proton Accelerator Controller - Make Player Cast Bash''ir Landing Boss: Force Cast - South',0,0,0,0),
(870801,0,40,0,0,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - Despawn Self',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10153,10154) AND command=10;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10153,0,10,23390,300000,3,0,0,0,-1,0,0,8,'Spawn Bash''ir''s Harbinger',3812.404,6034.736,265.5529,4.270128),
(10154,0,10,23391,300000,3,0,0,0,-1,0,0,8,'Spawn Bash''ir',3812.404,6034.736,265.5529,4.270128);

DELETE FROM dbscript_random_templates WHERE id=10161 AND target_id IN(10153,10154);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10161,1,10153,90,'Spawn Bash''ir''s Harbinger'),
(10161,1,10154,10,'Spawn Bash''ir');

DELETE FROM `dbscripts_on_event` WHERE `id` IN(15114); -- Mistake by blizz, triggers are backwards
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(15114,0,45,0,10161,0,0,0,0,0,0,0,0,'Spawn Bash''ir''s Harbinger (90%) or Bash''ir (10%)',0,0,0,0),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3809.934,6040.174,269.6977,5.269852),
(15114,0,10,23059,14600,7,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3813.345,6038.501,275.9535,1.815142),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3815.606,6037.176,275.8101,3.660439),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3819.014,6035.438,269.7408,3.119668),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3806.601,6032.446,273.6225,0.4672792),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3807.181,6032.01,267.5751,0.5652915),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3809.563,6030.975,275.9816,0.9572971),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3814.158,6028.625,267.6781,1.763587),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3814.844,6028.174,273.7334,1.840088),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3802.334,6025.049,269.4551,0.7882009),
(15114,0,10,23059,14600,8,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3805.795,6023.396,275.6274,6.195919),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3808.044,6022.155,275.4812,1.230137),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3811.432,6020.472,269.4115,1.480403),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3799.104,6017.571,273.2367,5.654867),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3799.74,6017.124,267.2024,5.078908),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3802.047,6016.078,275.4858,2.164208),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3806.672,6013.684,267.2396,2.513274),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3807.267,6013.258,273.2981,3.228859),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3794.889,6010.212,269.2891,5.654867),
(15114,0,10,23059,14600,9,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3798.339,6008.543,275.2906,1.079516),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3800.599,6007.266,275.2346,2.094395),
(15114,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3803.971,6005.571,269.4094,3.193953);

-- Bash'ir's Harbinger
DELETE FROM creature_movement_template WHERE entry IN(23390,23391) AND pathId=3;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23390,3,1,3797.495,6003.255,264.8959,1000,15,100),
(23390,3,2,3797.495,6003.255,264.8959,1000,2339004,100),

(23391,3,1,3797.495,6003.255,264.8959,1000,15,100),
(23391,3,2,3797.495,6003.255,264.8959,1000,2339103,100);

-- Invisman
DELETE FROM creature_movement_template WHERE entry=23059 AND pathId IN(7,8,9);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23059,7,1,3813.345,6038.501,275.9535,1000,2305901,1.815142),
(23059,8,1,3805.795,6023.396,275.6274,1000,2305902,6.195919),
(23059,9,1,3798.339,6008.543,275.2906,1000,2305903,1.079516);

-- ----------------------------
-- Proton Accelerator Controller (Entry: 185964)
-- West
DELETE FROM gossip_menu WHERE entry=8709;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8709, 10954, 0, 10162),
(8709, 10955, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=8709;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8709, 0, 0, 'Power the proton accelerator with an Accelerator Module to summon Bash\'ir, or one of his harbingers.', 1, 0, -1, 0, 870901, 0, 0, '', 10162);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(870901);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(870901,0,15,41228,0,0,0,0,0,0,0,0,2,'Proton Accelerator Controller - Make Player Cast Bash''ir Landing Boss: Force Cast - West',0,0,0,0),
(870901,0,40,0,0,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - Despawn Self',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10155,10156) AND command=10;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10155,0,10,23390,300000,4,0,0,0,-1,0,0,8,'Spawn Bash''ir''s Harbinger',3875.615,6061.854,264.9635,5.980374),
(10156,0,10,23391,300000,4,0,0,0,-1,0,0,8,'Spawn Bash''ir',3875.615,6061.854,264.9635,5.980374);

DELETE FROM dbscript_random_templates WHERE id=10162 AND target_id IN(10155,10156);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10162,1,10155,90,'Spawn Bash''ir''s Harbinger'),
(10162,1,10156,10,'Spawn Bash''ir');

DELETE FROM `dbscripts_on_event` WHERE `id` IN(15115);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(15115,0,45,0,10162,0,0,0,0,0,0,0,0,'Spawn Bash''ir''s Harbinger (90%) or Bash''ir (10%)',0,0,0,0),
(15115,0,10,23059,14600,12,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3904.45,6051.278,275.3144,1.867502),
(15115,0,10,23059,14600,11,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3888.681,6056.573,275.3877,0.6632251),
(15115,0,10,23059,14600,10,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3872.736,6061.978,275.6061,6.240478),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3905.408,6053.678,275.5965,5.218534),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3889.622,6058.991,275.414,2.93994),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3873.714,6064.44,275.4991,5.34661),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3906.646,6057.268,269.0264,5.305801),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3903.294,6047.622,269.1785,0.5061455),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3896.507,6053.88,275.45,5.201081),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3895.425,6050.813,273.1809,1.832596),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3898.603,6059.49,272.8445,4.625123),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3895.786,6051.431,266.9518,1.204277),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3898.27,6058.839,267.1327,4.834562),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3887.576,6052.944,269.1812,2.501339),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3890.839,6062.597,269.0424,3.19034),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3880.693,6059.245,275.3303,2.666775),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3882.749,6064.878,273.2201,3.542521),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3879.698,6056.157,273.0637,2.19256),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3879.979,6056.764,266.8927,2.279494),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3882.385,6064.228,266.9525,3.478734),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3871.518,6058.444,269.282,0.6941401),
(15115,0,10,23059,14600,0,0,0,0,-1,0,0,0,'Spawn Legion Ring Event InvisMan',3874.442,6068.194,269.4635,4.89543);

-- Bash'ir's Harbinger
DELETE FROM creature_movement_template WHERE entry IN(23390,23391) AND pathId=4;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23390,4,1,3909.676,6051.213,264.953,1000,16,100),
(23390,4,2,3909.676,6051.213,264.953,1000,2339005,100),

(23391,4,1,3909.676,6051.213,264.953,1000,16,100),
(23391,4,2,3909.676,6051.213,264.953,1000,2339104,100);

-- Invisman
DELETE FROM creature_movement_template WHERE entry=23059 AND pathId IN(10,11,12);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23059,10,1,3904.45,6051.278,275.3144,1000,2305901,1.867502),
(23059,11,1,3888.681,6056.573,275.3877,1000,2305902,0.6632251),
(23059,12,1,3904.45,6051.278,275.3144,1000,2305903,1.867502);

