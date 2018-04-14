-- Fix templates
UPDATE creature_template SET name='Kristen Dipswitch', SpeedWalk=(2.5/2.5), SpeedRun=(9.7/7), NpcFlags=0, MovementType=2 WHERE entry=18294; -- Kristen Dipswitch (She was renamed at some time in TBC from Kristen DeMeza to Kristen Dipswitch http://www.wowhead.com/npc=18294/kristen-dipswitch#comments:id=330563)
UPDATE creature_template SET UnitFlags=768, SpeedWalk=(2.5/2.5), SpeedRun=(8/7), MovementType=2  WHERE entry=18297; -- Gankly Rottenfist
UPDATE creature_template SET FactionAlliance=35, FactionHorde=35, ExtraFlags=0 WHERE entry=18200; -- Shado 'Fitz' Farstrider: Set the correct faction and remove CREATURE_EXTRA_FLAG_CIVILIAN
UPDATE creature_template SET MovementType=2 WHERE entry=17130; -- Talbuk stag (Default MovementType needs to be waypoint)
UPDATE creature_template SET MovementType=2 WHERE entry=18180; -- Hemet Nesingwary
UPDATE creature SET MovementType=2 WHERE id=18180; -- Hemet Nesingwary
UPDATE quest_template SET DetailsEmote1=1, DetailsEmote2=1, DetailsEmoteDelay2=1000 WHERE entry=9897; -- I'm saved!

-- Delete static Gankly spawns
DELETE FROM creature WHERE id=18297;
-- Delete static Kristen spawn
DELETE FROM creature WHERE id=18294;

-- Mount up in EventAI instead to prevent re-mounting on evade
UPDATE `creature_template_addon` SET `mount`='0' WHERE `entry`=18294;

-- Do aura in EventAI instead to prevent re-stealth on evade
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=18297;

-- Kristen Dipswitch
-- Gossip. Text existed already
DELETE FROM gossip_menu WHERE entry=7629;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(7629,9292,0,0);
UPDATE creature_template SET GossipMenuId=7629 WHERE entry=18294;

DELETE FROM `creature_movement_template` WHERE `entry`=18294;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(18294,1,-1270.193,6248.346,49.55033,0,0,0),
(18294,2,-1285.323,6281.505,47.62993,0,0,0),
(18294,3,-1320.364,6310.724,45.0323,0,0,0),
(18294,4,-1355.681,6335.349,43.30283,0,0,0),
(18294,5,-1386.623,6357.333,40.50692,0,0,0),
(18294,6,-1423.456,6354.504,37.79586,0,0,0),
(18294,7,-1452.595,6351.944,37.27388,9000,1829401,100),
(18294,8,-1452.595,6351.944,37.27388,1000,1829402,2.978586),
(18294,10,-1452.595,6351.944,37.27388,1000,1829403,2.978586);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1829401 AND 1829403;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1829401,8,24,0,0,0,0,0,0,0,0,0,0,'Kristen Dipswitch - Dismount',0,0,0,0),

(1829402,0,32,1,0,0,0,0,0,0,0,0,0,'Kristen Dipswitch - Pause Waypoints',0,0,0,0),
(1829402,1,22,250,2,0,0,0,0,0,0,0,0,'Kristen Dipswitch - Set Faction 250',0,0,0,0),
(1829402,1,0,0,0,0,2000001294,0,0,0,0,0,0,'Kristen Dipswitch - Hi, Harold.  I have your skins!',0,0,0,0),
(1829402,4,10,18297,0,0,0,0,0,0,0,0,0,'Kristen Dipswitch - Summon Gankly Rottenfist',-1463.596,6363.452,36.91611,1.020515),

(1829403,0,32,1,0,0,0,0,0,0,0,0,0,'Kristen Dipswitch - Pause Waypoints',0,0,0,0),
(1829403,7,2,168,3,0,0,0,0,0,0,0,0,'Kristen Dipswitch - Set NPCFlags to 3',0,0,0,0),
(1829403,7,22,35,0,0,0,0,0,0,0,0,0,'Kristen Dipswitch - Set Faction 35',0,0,0,0),
(1829403,7,36,1,0,0,0,0,0,0,18180,20,7,'Hemet Nesingwary - Reset Facing',0,0,0,0),
(1829403,300,18,0,0,0,0,0,0,0,0,0,0,'Kristen Dipswitch - Despawn Self',0,0,0,0); -- 5 min despawn

-- Gankly Rottenfist
DELETE FROM `creature_movement_template` WHERE `entry`=18297;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(18297,1,0,-1455.336,6367.115,36.27614,0,0,0),
(18297,2,0,-1452.799,6364.542,36.65889,0,0,0),
(18297,3,0,-1450.19,6361.55,36.9106,0,0,0),
(18297,4,0,-1448.176,6358.954,37.14888,0,0,0),
(18297,5,0,-1447.029,6354.988,37.39888,0,0,0),
(18297,6,0,-1448.83,6352.422,37.35176,0,0,0),
(18297,7,0,-1451.463,6352.27,37.27388,2000,1829701,3.422285),
(18297,8,0,-1451.463,6352.27,37.27388,2000,1829702,3.138516);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1829701 AND 1829702;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1829701,0,0,0,0,0,2000001295,0,0,0,0,0,0,'Gankly Rottenfist - I''ll be taking those skins, tiny.',0,0,0,0),
(1829701,0,2,46,0,0,0,0,0,0,0,0,0,'Gankly Rottenfist - Set UnitFlags to 0',0,0,0,0),
(1829701,0,36,0,0,0,0,0,0,0,18180,20,3,'Hemet Nesingwary - Face Gankly Rottenfist',0,0,0,0),
(1829701,1,26,0,0,0,0,0,0,0,18294,10,1,'Gankly Rottenfist - Start Attack on Kristen Dipswitch',0,0,0,0),
(1829701,1,0,0,0,0,2000001296,0,0,0,18294,10,0,'Kristen Dipswitch - Ack!  Somebody help me!',0,0,0,0),

(1829702,0,32,1,0,0,0,0,0,0,0,0,0,'Gankly Rottenfist - Pause Waypoints',0,0,0,0),
(1829702,6,0,0,0,0,2000001297,0,0,0,0,0,0,'Gankly Rottenfist - %s rifles through Kristen''s stuff and grabs her bundle of skins.',0,0,0,0),
(1829702,10,36,0,0,0,0,0,0,0,18218,10,1,'Gankly Rottenfist - Face Harold Lane',0,0,0,0),
(1829702,10,0,0,0,0,2000001298,0,0,0,0,0,0,'Gankly Rottenfist - Here are my skins, Harold.  Now give me the reward!',0,0,0,0),
(1829702,13,0,0,0,0,2000001299,0,0,0,18218,10,0,'Harold Lane - Uh... sure thing, Gankly.  Just...<cough>... wait right there.  <Cough>  Guys?',0,0,0,0),
(1829702,13,22,250,2,0,0,0,0,0,18200,15,7,'Shado ''Fitz'' Farstrider - Set Faction 250',0,0,0,0),
(1829702,13,22,250,2,0,0,0,0,0,18180,15,7,'Hemet Nesingwary - Set Faction 250',0,0,0,0),
(1829702,21,15,32190,0,0,0,0,0,0,18180,15,3,'Hemet Nesingwary - Cast Shoot',0,0,0,0),
(1829702,21,15,32190,0,0,0,0,0,0,18200,15,3,'Shado ''Fitz'' Farstrider - Cast Shoot',0,0,0,0),
(1829702,21,26,0,0,0,0,0,0,0,18180,10,3,'Hemet Nesingwary - Start Attack on Gankly Rottenfist',0,0,0,0),
(1829702,21,26,0,0,0,0,0,0,0,18200,10,3,'Shado ''Fitz'' Farstrider - Start Attack on Gankly Rottenfist',0,0,0,0);

DELETE FROM `dbscripts_on_creature_death` WHERE `id`=18297;
INSERT INTO `dbscripts_on_creature_death` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(18297,0,32,0,0,0,0,0,0,0,18294,100,7,'Kristen Dipswitch - Resume Waypoints',0,0,0,0);

-- Hemet Nesingwary (Talbuk event runs every 30min, Kristen every 45min)
DELETE FROM `creature_movement_template` WHERE `entry`=18180;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(18180,1,0,-1461.778,6344.301,37.27388,2000,1818001,6.230825), -- Spawn talbuks
(18180,2,0,-1459.696,6341.464,37.24043,12000,1818002,5.953772), -- Take position (timer)
(18180,3,0,-1459.696,6341.464,37.24043,11000,1818003,5.953772), -- After fight
(18180,4,0,-1459.696,6341.464,37.24043,7000,1818004,5.953772), -- Restore factions
(18180,5,0,-1461.778,6344.301,37.27388,900000,0,6.230825), -- Back to spawn, wait 15min

(18180,6,0,-1461.778,6344.301,37.27388,900000,1818005,6.230825), -- Summon Kristen Dipswitch, wait 15min

(18180,7,0,-1461.778,6344.301,37.27388,2000,1818001,6.230825), -- Spawn talbuks
(18180,8,0,-1459.696,6341.464,37.24043,10000,1818002,5.953772), -- Take position (timer)
(18180,9,0,-1459.696,6341.464,37.24043,11000,1818003,5.953772), -- After fight
(18180,10,0,-1459.696,6341.464,37.24043,7000,1818004,5.953772), -- Restore factions
(18180,11,0,-1461.778,6344.301,37.27388,1800000,0,6.230825); -- Back to spawn, wait 30min

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1818001 AND 1818005;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1818001,0,10,17130,300000,1,0,0,0,0,0,0,0,'Hemet Nesingwary - Summon Talbuk Stag 1',-1404.007,6327.922,39.87714,5.099442),
(1818001,0,10,17130,300000,2,0,0,0,0,0,0,0,'Hemet Nesingwary - Summon Talbuk Stag 2',-1414.938,6305.905,42.40896,2.952087),
(1818001,0,10,17130,300000,3,0,0,0,0,0,0,0,'Hemet Nesingwary - Summon Talbuk Stag 3',-1416.502,6317.921,40.0441,0.466735),
(1818001,2,22,495,16,0,0,0,0,0,18200,15,7,'Shado ''Fitz'' Farstrider - Set Faction 495',0,0,0,0),
(1818001,2,22,495,16,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Set Faction 495',0,0,0,0),
(1818001,2,0,0,0,0,2000001287,0,0,0,0,0,0,'Hemet Nesingwary - Uh oh, those stags don''t look pleased with us!',0,0,0,0),

(1818002,6,31,17130,60,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Terminate Script if no Talbuk stag in range',0,0,0,0),
(1818002,7,3,0,0,0,0,0,0,0,18200,15,0,'Shado ''Fitz'' Farstrider - Set Orientation',0,0,0,5.4323),
(1818002,7,15,32168,0,0,0,0,0,0,17130,60,1,'Hemet Nesingwary - Cast Shoot',0,0,0,0),
(1818002,7,0,0,0,0,2000001288,0,0,0,0,0,0,'Hemet Nesingwary - Look out, Fitz, they''re coming right for us!',0,0,0,0),
(1818002,7,0,0,0,0,2000001289,0,0,0,18200,15,0,'Shado ''Fitz'' Farstrider - %s smiles and sheathes his rifle.',0,0,0,0),
(1818002,7,2,209,1,0,0,0,0,0,18200,15,0,'Shado ''Fitz'' Farstrider - Set Sheath State 1 (Melee weapon equipped)',0,0,0,0),
(1818002,8,2,168,0,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Set NPCFlags to 0',0,0,0,0),
(1818002,8,2,168,0,0,0,0,0,0,18200,15,0,'Shado ''Fitz'' Farstrider - Set NPCFlags to 0',0,0,0,0),

(1818002,12,31,17130,20,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Terminate Script if no alive Talbuk stag in range',0,0,0,0),
(1818002,13,0,0,0,0,2000001290,0,0,0,18218,50,0,'Harold Lane - What''s going on?!',0,0,0,0),

(1818002,23,31,17130,20,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Terminate Script if no alive Talbuk stag in range',0,0,0,0),
(1818002,24,0,0,0,0,2000001291,0,0,0,18218,50,0,'Harold Lane - Um... guys?',0,0,0,0),

(1818002,34,31,17130,20,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Terminate Script if no alive Talbuk stag in range',0,0,0,0),
(1818002,35,0,0,0,0,2000001292,0,0,0,18218,50,0,'Harold Lane - Hemet?  Fitz?',0,0,0,0),

(1818003,0,2,168,3,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Set NPCFlags to 3',0,0,0,0),
(1818003,0,2,168,3,0,0,0,0,0,18200,50,0,'Shado ''Fitz'' Farstrider - Set NPCFlags to 3',0,0,0,0),
(1818003,4,0,0,0,0,2000001293,0,0,0,18218,50,0,'Oh good, I was beginning to worry.',0,0,0,0),

(1818004,11,22,35,0,0,0,0,0,0,18200,50,7,'Shado ''Fitz'' Farstrider - Set Faction 35',0,0,0,0),
(1818004,11,22,35,0,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Set Faction 35',0,0,0,0),

(1818005,0,10,18294,0,0,1,0,0,0,0,0,8,'Hemet Nesingwary - Summon Kristen Dipswitch',-1250.59,6236.95,52.4592,2.61514);

-- Talbuks
DELETE FROM `creature_movement_template` WHERE `entry`=17130;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(17130,1,1,-1404.007,6327.922,39.87714,0,1713001,5.099442),
(17130,1,2,-1414.938,6305.905,42.40896,0,1713001,2.952087),
(17130,1,3,-1416.502,6317.921,40.0441,0,1713001,0.466735);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1713001);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1713001,0,22,14,0,0,0,0,0,0,0,0,0,'Talbuk Stag - Set Faction to 14',0,0,0,0),
(1713001,0,20,1,5,0,0,0,0,0,0,0,0,'Talbuk Stag - Set Random Movement',0,0,0,0),
(1713001,10,26,0,0,0,0,0,0,0,18180,65,1,'Talbuk Stag - Start Attack on Hemet Nesingwary',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001287 AND 2000001299;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
-- Attacking stags event
(2000001287, 'Uh oh, those stags don''t look pleased with us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Hemet Nesingwary (Entry: 18180)'),
(2000001288, 'Look out, Fitz, they''re coming right for us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Hemet Nesingwary (Entry: 18180)'),
(2000001289, '%s smiles and sheathes his rifle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Shado ''Fitz'' Farstrider (Entry: 18200)'),
(2000001290, 'What''s going on?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Harold Lane (Entry: 18218)'),
(2000001291, 'Um... guys?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Harold Lane (Entry: 18218)'),
(2000001292, 'Hemet?  Fitz?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Harold Lane (Entry: 18218)'),
(2000001293, 'Oh good, I was beginning to worry.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Harold Lane (Entry: 18218)'),
-- Kristen event
(2000001294, 'Hi, Harold.  I have your skins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Kristen Dipswitch (Entry: 18294)'),
(2000001295, 'I''ll be taking those skins, tiny.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gankly Rottenfist (Entry: 18297)'),
(2000001296, 'Ack!  Somebody help me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Kristen Dipswitch (Entry: 18294)'),
(2000001297, '%s rifles through Kristen''s stuff and grabs her bundle of skins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Gankly Rottenfist (Entry: 18297)'),
(2000001298, 'Here are my skins, Harold.  Now give me the reward!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gankly Rottenfist (Entry: 18297)'),
(2000001299, 'Uh... sure thing, Gankly.  Just...<cough>... wait right there.  <Cough>  Guys?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Harold Lane (Entry: 18218)');

