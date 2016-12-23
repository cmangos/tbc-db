-- q.9312 'The Emitter'
DELETE FROM dbscripts_on_quest_end WHERE id = 9312;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9312,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(9312,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- in case if she has 69 state emote
(9312,1,3,0,0,0,0,0,0,0,0,0,-4184.55,-13733.1,74.1389,1.91986,''), -- she must go back to place where she should be
(9312,1,13,0,0,181286,50,0x02,0,0,0,0,0,0,0,0,''),
(9312,2,10,16550,47000,0,0,0,0,0,0,0,-4187.708,-13738.72,75.65491,1.850049,'summon Image of Technician Dyvuun'),
(9312,4,3,0,0,0,0,0,0,0,0,0,0,0,0,3.92457,''),
(9312,4,36,0,0,16550,50,3,0,0,0,0,0,0,0,0,''),
(9312,4,0,0,0,16550,50,7,2000000638,0,0,0,0,0,0,0,''),
(9312,5,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(9312,5,1,70,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9312,12,36,0,0,16550,50,0,0,0,0,0,0,0,0,0,''),
(9312,15,0,0,0,16550,50,0,2000000639,0,0,0,0,0,0,0,''),
(9312,29,0,0,0,16550,50,0,2000000640,0,0,0,0,0,0,0,''),
(9312,46,3,0,0,0,0,0,0,0,0,0,0,0,0,1.91986,''),
(9312,49,0,0,0,0,0,0,2000000641,0,0,0,0,0,0,0,''),
(9312,50,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints'),
(9312,50,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added');
UPDATE quest_template SET CompleteScript = 9312 WHERE entry = 9312;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000638 AND 2000000641;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000638,'By the seven Ata\'mal crystals!  Others have survived the crash!  Zhanaa, is that you?  It is so good to see you again!',0,0,0,0,NULL),
(2000000639,'And who do we have here?  No doubt th... crzzzk ...ade this communication possible?  I give you greetings fro... psshzzzk... Azure Watch.',0,0,0,0,NULL),
(2000000640,'Judging by your signal, we put you... ust southeast of the larger part of the island we crashed onto.  Cross the Crystalbrook River to ge... kshhhhk zzzt. Sorry, there\'s a lot of stat...',0,0,0,0,NULL),
(2000000641,'This is great news!  Your efforts have indeed saved us, $N!',0,0,0,0,NULL);

-- Technician Zhanaa
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 7978;
DELETE FROM creature_movement WHERE id = 7978;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17071;
DELETE FROM creature_movement_template WHERE entry = 17071;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17071,1,-4184.55,-13733.1,74.1389,40000,0,1.91986,0,0),
(17071,2,-4186.46,-13736,74.4728,30000,1707101,3.92457,0,0),
(17071,3,-4184.26,-13734,74.3718,0,0,100,0,0),
(17071,4,-4180.06,-13736.4,74.5934,30000,1707101,5.88493,0,0),
(17071,5,-4184.55,-13733.1,74.1389,240000,0,1.91986,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1707101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1707101,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1707101,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Image of Technician Dyvuun
UPDATE creature_template SET UnitFlags = 33587968, movementType = 0, Inhabittype = 4 WHERE entry = 16550; -- correct flags 


