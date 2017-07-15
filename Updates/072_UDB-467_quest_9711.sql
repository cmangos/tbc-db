-- q.9711 'Matis the Cruel'
DELETE FROM dbscripts_on_quest_end WHERE id = 9711;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9711,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9711,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(9711,1,10,17874,160000,0,0,0,0,0,0,0,-1959.74,-11886.9,49.6712,0.8552113,'summon Image of Velen'),
(9711,1,10,17865,160000,0,0,0,0,0,0,0,-1938,-11847.7,51.4714,3.735005,'summon Matis'),
(9711,2,21,1,0,17874,100,7,0,0,0,0,0,0,0,0,'Image of Velen - active'),
(9711,2,21,1,0,17865,100,7,0,0,0,0,0,0,0,0,'Matis - active'),
(9711,150,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(9711,151,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 9711 WHERE entry = 9711;

-- spell scripted
DELETE FROM dbscripts_on_spell WHERE id = 31333;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(31333,2,15,31334,0,17853,100,7,0,0,0,0,0,0,0,0,''),
(31333,4,0,0,0,0,0,0x02,2000000878,2000000879,2000000880,0,0,0,0,0,''),
(31333,8,35,5,100,0,0,0x02,0,0,0,0,0,0,0,0,''),
(31333,8,28,7,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000878 AND 2000000880;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000878,'You will never take me alive!',0,0,0,0,NULL),
(2000000879,'To the death!',0,0,0,0,NULL),
(2000000880,'You will regret this, maggot.',0,0,0,0,NULL);

-- Matis the Cruel
UPDATE creature_template_addon SET mount = 0 WHERE entry = 17664;

-- Matis
UPDATE creature_template SET MovementType = 0 WHERE entry = 17865;

-- Image of Velen
UPDATE creature_template SET MovementType = 2 WHERE entry = 17874;
DELETE FROM creature_movement_template WHERE entry = 17874;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17874,1,-1959.74,-11886.9,49.6712, 500000, 1787401,0.8552113, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1787401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1787401,1,0,0,0,0,0,0,2000000881,0,0,0,0,0,0,0,''),
(1787401,2,21,1,0,17659,63382,7 | 0x10,0,0,0,0,0,0,0,0,'active'),
(1787401,2,3,0,0,17659,63382,7 | 0x10,0,0,0,0,0,0,0,1.571112,''),
(1787401,6,13,0,0,182012,81381,1 | 0x10,0,0,0,0,0,0,0,0,''),
(1787401,8,0,0,0,17659,63382,7 | 0x10,2000000882,0,0,0,0,0,0,0,''),
(1787401,10,3,0,0,17865,100,7,0,0,0,0,-1956.76,-11883.6,49.1993,3.61112,'Matis'),
(1787401,12,3,0,0,17659,63382,7 | 0x10,0,0,0,0,-1953.19,-11884.8,49.6402,2.6655,'Guard'),
(1787401,30,0,0,0,0,0,0,2000000883,0,0,0,0,0,0,0,''),
(1787401,36,0,0,0,0,0,0,2000000884,0,0,0,0,0,0,0,''),
(1787401,41,0,0,0,17865,100,7,2000000885,0,0,0,0,0,0,0,''),
(1787401,44,0,0,0,0,0,0,2000000886,0,0,0,0,0,0,0,''),
(1787401,47,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1787401,48,0,0,0,17865,100,7,2000000887,0,0,0,0,0,0,0,''),
(1787401,50,0,0,0,17865,100,7,2000000888,0,0,0,0,0,0,0,''),
(1787401,53,0,0,0,17865,100,7,2000000889,0,0,0,0,0,0,0,''),
(1787401,57,0,0,0,17865,100,7,2000000890,0,0,0,0,0,0,0,''),
(1787401,60,1,1,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,63,1,274,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,65,0,0,0,17865,100,7,2000000891,0,0,0,0,0,0,0,''),
(1787401,68,1,1,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,71,1,1,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,74,1,1,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,77,0,0,0,17843,63515,7 | 0x10,2000000892,0,0,0,0,0,0,0,''),
(1787401,84,0,0,0,17865,100,7,2000000893,0,0,0,0,0,0,0,''),
(1787401,88,1,6,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,92,0,0,0,0,0,0,2000000894,0,0,0,0,0,0,0,''),
(1787401,95,3,0,0,17659,63382,7 | 0x10,0,0,0,0,-1954.68,-11884.4,49.4066,2.9184,'Guard'),
(1787401,98,0,0,0,17659,63382,7 | 0x10,2000000895,0,0,0,0,0,0,0,''),
(1787401,100,3,0,0,17865,100,7,0,0,0,0,-1951.31,-11874.8,50.4813,4.01482,'Matis'),
(1787401,105,3,0,0,17865,100,7,0,0,0,0,0,0,0,4.01482,'Matis'),
(1787401,107,0,0,0,17865,100,7,2000000896,0,0,0,0,0,0,0,''),
(1787401,110,1,1,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,113,1,1,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,116,1,1,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,119,1,11,0,17865,100,7,0,0,0,0,0,0,0,0,''),
(1787401,122,0,0,0,17865,100,7,2000000897,0,0,0,0,0,0,0,''),
(1787401,124,20,2,0,17843,63515,7 | 0x10,0,0,0,0,0,0,0,0,'Kuros - movement chenged to 2:waypoints');


-- MISSING UDB BACKPORT
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('81381','182012','530','1','-1937.6','-11847.1','50.6868','2.68781','0','0','0.97437','0.22495','180','255','1');




-- Vindicator Kuros
UPDATE creature_template SET MovementType = 0 WHERE entry = 17843; -- waypoints will be set by script
DELETE FROM creature_movement_template WHERE entry = 17843;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17843,1,-1959.44,-11890.1,49.2366, 50000, 1784301,1.5708, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1784301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1784301,0,0,0,0,0,0,0,2000000898,0,0,0,0,0,0,0,''),
(1784301,3,3,0,700,0,0,0,0,0,0,0,-1951.67,-11876.3,50.1937,1.39707,''),
(1784301,6,15,31008,0,17865,100,1,0,0,0,0,0,0,0,0,''),
(1784301,11,0,0,0,0,0,0,2000000899,0,0,0,0,0,0,0,''),
(1784301,15,3,0,0,0,0,0,0,0,0,0,-1959.44,-11890.1,49.2366,1.5708,''),
(1784301,23,3,0,0,0,0,0,0,0,0,0,0,0,0,1.5708,''),
(1784301,24,3,0,0,17659,63382,7 | 0x10,0,0,0,0,-1937.6,-11852.5,51.5025,4.10152,'Guard'),
(1784301,25,0,0,0,17874,100,7,2000000900,0,0,0,0,0,0,0,''),
(1784301,41,3,0,0,17659,63382,7 | 0x10,0,0,0,0,0,0,0,4.10152,'Guard'),
(1784301,42,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kuros - movement chenged to 0:idle'),
(1784301,43,21,0,0,17659,63382,7 | 0x10,0,0,0,0,0,0,0,0,'unactive');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000881 AND 2000000900;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000881,'Bring forth the blood elf.',0,0,0,1,NULL),
(2000000882,'You heard the Prophet. Move, filth.',0,0,0,25,NULL),
(2000000883,'Matis, blood elf lieutenant of the Sunhawks, you have been found guilty of genocide against the draenei people.',0,0,0,1,NULL),
(2000000884,'You are to be executed at light\'s dawning. Have you anything to say for yourself?',0,0,0,1,NULL),
(2000000885,'%s spits at the image of Velen.',0,2,0,273,NULL),
(2000000886,'May the Light have mercy on your soul. Take him back to his cell.',0,0,0,1,NULL),
(2000000887,'%s glares at Velen.',0,2,0,0,NULL),
(2000000888,'The Light?',0,0,0,6,NULL),
(2000000889,'%s laughs.',0,2,0,11,NULL),
(2000000890,'I am Blood Knight, mongrel. I do not serve the Light, the Light serves me. If mercy is to be granted, it will be by me.',0,0,0,25,NULL),
(2000000891,'You seek to martyr me before my order - so be it. Strike me down, another will rise in my place and the suffering of the Light - of the conquered - will continue uninterrupted.',0,0,0,1,NULL),
(2000000892,'You blaspheme! The Light would never allow such an aberration!',0,0,0,25,NULL),
(2000000893,'The Light has no choice. It does as it is commanded. Just as the naaru you hold at the core of your vessel will do when we capture and enslave it... Do my words surprise you, blue blood? Yes, we know... We know everything.',0,0,0,1,NULL),
(2000000894,'Take him away.',0,0,0,25,NULL),
(2000000895,'Move!',0,0,0,5,NULL),
(2000000896,'Draenei dog! Did you know that the one you call Saruan wept like a babe as I beat him? A feeling of euphoria coursed through me, knowing that I had a member of high rank in my grasp. Were it not for Sironas\' plans for him, I would have tortured him to death... As I do to all draenei that I capture. Alas, I am certain that you will see him again soon...',0,0,0,5,NULL),
(2000000897,'%s grins wickedly.',0,2,0,0,NULL),
(2000000898,'Breathe your last breath, heathen.',0,0,0,25,NULL),
(2000000899,'%s spits on the corpse of Matis.',0,2,0,15,NULL),
(2000000900,'Find their source of power and tear it down. Tear all of it down.',0,0,0,1,NULL);
