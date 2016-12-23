-- UDB_286
-- q.9932 'Body of Evidence'
DELETE FROM dbscripts_on_event WHERE id = 11675; 
INSERT INTO dbscripts_on_event VALUES 
(11675,1,10,18396,200000,0,0,0,0,0,0,0,-880.977,7723.34,34.4599,3.40423,'spawn - Boulderfist Saboteur #1'),
(11675,2,10,18396,200000,0,0,0,0,0,0,0,-885.034,7721.97,35.1005,0.267349,'spawn - Boulderfist Saboteur #2'),
(11675,3,20,2,0,18396,100,7,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint'),
(11675,81,34,1026,9932,0,0,0,0,0,0,0,0,0,0,0,'q. check'),
(11675,83,8,18395,0,0,0,0,0,0,0,0,0,0,0,0,'q.9932 completed');
DELETE FROM creature_movement_template WHERE entry = 18396;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18396,1,-880.977,7723.34,34.4599,12000,1839601,3.40423,0,0),
(18396,2,-870.818054,7729.425293,33.072216,7000,1839602,0.588451,0,0),
(18396,3,-854.718506,7736.624023,33.605515,7000,1839603,6.248030,0,0),
(18396,4,-843.973633,7734.010254,34.304436,7000,1839604,5.245867,0,0),
(18396,5,-840.694641,7725.600098,34.427502,0,0,4.720438,0,0),
(18396,6,-843.479553,7712.913086,34.926540,7000,1839605,3.578475,0,0),
(18396,7,-852.309692,7708.916016,35.747322,0,0,2.976861,0,0),
(18396,8,-862.609924,7712.046875,36.545654,10000,1839606,3.075036,0,0),
(18396,9,-880.005249,7719.872070,34.585533,0,0,3.813309,0,0),
(18396,10,-895.986755,7699.797852,39.720840,0,0,3.821946,0,0),
(18396,11,-906.355347,7692.775879,38.878551,5000,1839607,3.777111,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1839601 AND 1839607; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1839601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1839601,1,0,0,0,0,0,0,2000000613,2000000614,2000000615,0,0,0,0,0,''),
(1839601,3,0,0,0,18396,100,7,2000000616,0,0,0,0,0,0,0,''),
(1839601,6,0,0,0,0,0,0,2000000617,0,0,0,0,0,0,0,''),
(1839601,9,0,0,0,18396,100,7,2000000618,0,0,0,0,0,0,0,''),
(1839601,12,3,0,0,18396,100,7,0,0,0,0,-868.813,7726.22,33.2503,0.526763,'force buddy to move'),
(1839602,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839602,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839602,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839602,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839602,6,0,0,0,0,0,0,2000000619,2000000620,2000000621,2000000622,0,0,0,0,''),
(1839602,7,0,0,0,18396,100,7,2000000620,2000000621,2000000622,2000000619,0,0,0,0,''),
(1839602,8,3,0,0,18396,100,7,0,0,0,0,-856.478,7732.11,33.3715,6.28059,'force buddy to move'),
(1839603,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839603,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839603,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839603,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839603,6,0,0,0,0,0,0,2000000621,2000000622,2000000619,2000000620,0,0,0,0,''),
(1839603,7,0,0,0,18396,100,7,2000000622,2000000619,2000000620,2000000621,0,0,0,0,''),
(1839603,8,3,0,0,18396,100,7,0,0,0,0,-846.731,7729.53,34.3368,5.38681,'force buddy to move'),
(1839604,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839604,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839604,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839604,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839604,6,0,0,0,0,0,0,2000000621,2000000622,2000000619,2000000620,0,0,0,0,''),
(1839604,7,0,0,0,18396,100,7,2000000620,2000000621,2000000622,2000000619,0,0,0,0,''),
(1839604,8,3,0,0,18396,100,7,0,0,0,0,-845.993,7717.55,34.4689,3.57625,'force buddy to move'),
(1839605,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839605,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839605,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839605,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839605,6,0,0,0,0,0,0,2000000621,2000000622,2000000619,2000000620,0,0,0,0,''),
(1839605,7,0,0,0,18396,100,7,2000000622,2000000619,2000000620,2000000621,0,0,0,0,''),
(1839605,8,3,0,0,18396,100,7,0,0,0,0,-860.757,7715.71,35.3607,2.97546,'force buddy to move'),
(1839606,3,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1839606,4,1,16,0,18396,100,7,0,0,0,0,0,0,0,0,''),
(1839606,5,15,32318,0,0,0,0,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839606,6,15,32318,0,18396,100,7,0,0,0,0,0,0,0,0,'Invader corpse #1'),
(1839606,6,0,0,0,0,0,0,2000000623,0,0,0,0,0,0,0,''),
(1839606,7,0,0,0,18396,100,7,2000000624,0,0,0,0,0,0,0,''),
(1839606,8,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1839606,8,25,1,0,18396,100,7,0,0,0,0,0,0,0,0,'RUN ON'),
(1839606,9,3,0,0,18396,100,7,0,0,0,0,-906.355347,7692.775879,38.878551,3.78,'force buddy to move'),
(1839606,9,18,7000,0,18396,100,7,0,0,0,0,0,0,0,0,'desp'),
(1839607,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(1839607,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
-- quest check
DELETE FROM conditions WHERE condition_entry = 1026;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1026, 36, 0, 100);
DELETE FROM db_script_string WHERE entry BETWEEN 2000000613 AND 2000000624;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000613,'Shadow Council come for you Warmaul! We is mad at you!',0,1,0,0,NULL),
(2000000614,'Rawr! Me is Shadow Council magishun! Me came for Warmaul terri... tettritor... Me come for Warmaul land!',0,1,0,0,NULL),
(2000000615,'I killed another Warmaul ogre! I am Shadow Council! Come get me',0,1,0,0,NULL),
(2000000616,'Shut up, stupid! Why you yell?',0,0,0,0,NULL),
(2000000617,'Me wanted to make it belive... Me wanted to make it real. Dey tink for shure it Shadow Council now!',0,0,0,1,NULL),
(2000000618,'You so smart. Le\'s do dis now before more come.',0,0,0,1,NULL),
(2000000619,'Your dead orc sound ok. Mine better.',0,0,0,0,NULL),
(2000000620,'You make dat sound pretty good. Sound like da orc dieded.',0,0,0,0,NULL),
(2000000621,'My dead orc sound is da best!',0,0,0,0,NULL),
(2000000622,'For shure it be good.',0,0,0,0,NULL),
(2000000623,'Last mont, me won da dead orc sound champi... champichi... me won da dead orc sound contest.',0,0,0,0,NULL),
(2000000624,'Dat\'s all of dem! Dese Warmaul be so mad! Hooray!',0,0,0,0,NULL);
-- fix for Kil'sorrow Invader
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 2, DynamicFlags = 32, MovementType = 0 WHERE entry = 18397;
UPDATE creature_template_addon SET bytes1 = 7, b2_0_sheath = 1, emote = 65 WHERE entry = 18397;
-- Boulderfist Saboteur 
UPDATE creature_template SET MovementType = 0 WHERE entry = 18396; -- movement will be set by script
-- Warmaul Shaman and Reaver - update
UPDATE creature SET position_x = -868.073853, position_y = 7752.742188, position_z = 33.407558, spawndist = 2, MovementType = 1 WHERE guid = 60139;
UPDATE creature SET position_x = -863.464478, position_y = 7695.895020, position_z = 37.632339, spawndist = 2, MovementType = 1 WHERE guid = 63882;


