-- Redone
-- q.9539 'Totem of Coo'
-- q.9540 'Totem of Tikti'
-- q.9541 'Totem of Yor'
-- q.9542 'Totem of Vark'
-- q.9539 'Totem of Coo'

-- .go c id 17232

DELETE FROM dbscripts_on_quest_start WHERE id = 9539;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9539,1,34,19001,0,0,0,0,6,0,0,0,0,0,0,0,0,'aura check - terminate if present on Player'),
(9539,10,15,30437,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Stillpine Ancestor Akida TRIGGER');

UPDATE quest_template SET StartScript = 9539 WHERE entry = 9539;

DELETE FROM dbscripts_on_quest_end WHERE id = 9539;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9539,0,14,30426,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from Player');

UPDATE quest_template SET CompleteScript = 9539 WHERE entry = 9539;

DELETE FROM conditions WHERE condition_entry = 19001;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(19001,1,30426,1,0);

-- Part of Stillpine Ancestor Akida 17379 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (19997);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19997,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: Active'),
(19997,500,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: RUN ON'),
(19997,1000,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: face Player'),
(19997,3000,0,0,0,0,0,0,2,2000000666,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: text'), -- 2000000666
(19997,4000,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Akida 17379 EAI: movement chenged to 2:waypoint');

DELETE FROM creature_movement_template WHERE entry = 17379;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(17379,0,1,-4156.91,-12516.1,45.0017,100,0,0),
(17379,0,2,-4134.95,-12516.6,44.8959,100,0,0),
(17379,0,3,-4123.49,-12517.2,44.8246,100,0,0),
(17379,0,4,-4097.6,-12522.4,42.0019,100,0,0),
(17379,0,5,-4077.12,-12530.6,43.7753,100,0,0),
(17379,0,6,-4060.63,-12538.1,44.1549,100,0,0),
(17379,0,7,-4050.65,-12546.2,42.2335,100,0,0),
(17379,0,8,-4034.49,-12560.5,44.9926,100,0,0),
(17379,0,9,-4016.73,-12579.5,49.464,100,0,0),
(17379,0,10,-4003.06,-12595.4,53.3469,100,0,0),
(17379,0,11,-3989.72,-12611.6,59.1497,100,0,0),
(17379,0,12,-3970.6,-12636.3,64.4018,100,0,0),
(17379,0,13,-3959.1,-12651.6,71.234,100,0,0),
(17379,0,14,-3945.98,-12669.7,75.8562,100,0,0),
(17379,0,15,-3937.34,-12685.6,81.0235,100,0,0),
(17379,0,16,-3925.95,-12719,89.6782,100,0,0),
(17379,0,17,-3915.91,-12743.4,98.6952,100,15000,1737901);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1737901,1737902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1737901,2000,36,0,0,0,17361,50,1,0,0,0,0,0,0,0,0,'face Player'),
(1737901,3000,0,0,0,0,0,0,0,2000000667,0,0,0,0,0,0,0,''), -- 2000000667
(1737901,8000,15,30428,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(1737901,8100,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unactive'),
(1737901,9000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'');

-- q.9540 'Totem of Tikti'
DELETE FROM dbscripts_on_quest_start WHERE id = 9540;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9540,1,34,19002,0,0,0,0,6,0,0,0,0,0,0,0,0,'aura check - terminate if present on Player'),
(9540,10,15,30442,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Stillpine Ancestor Coo TRIGGER');

UPDATE quest_template SET StartScript = 9540 WHERE entry = 9540;

DELETE FROM dbscripts_on_quest_end WHERE id = 9540;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9540,0,14,30429,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from Player');

UPDATE quest_template SET CompleteScript = 9540 WHERE entry = 9540;

DELETE FROM conditions WHERE condition_entry = 19002;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(19002,1,30429,1,0);

-- Part of Stillpine Ancestor Coo 17391 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (19996);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19996,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: Active'),
(19996,1000,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: face Player'),
(19996,3000,0,0,0,0,0,0,2,2000000668,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: text'), -- 2000000668
(19996,6000,3,0,0,0,0,0,2,0,0,0,0,-3925.63,-12752,97.7171,4.78528,'Part of Stillpine Ancestor Coo 17391 EAI: move'),
(19996,8000,3,0,0,0,0,0,2,0,0,0,0,-3925.8,-12755.8,99.4512,4.87481,'Part of Stillpine Ancestor Coo 17391 EAI: move'),
(19996,10000,3,0,0,0,0,0,2,0,0,0,0,-3924.27,-12761.5,101.829,4.9861,'Part of Stillpine Ancestor Coo 17391 EAI: move'),
(19996,13000,0,0,0,0,0,0,2,2000000669,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: text'), -- 2000000669
(19996,17000,15,30424,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: Player Cast 30424'),
(19996,17100,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Coo 17391 EAI: movement chenged to 2:waypoint');

DELETE FROM creature_movement_template WHERE entry = 17391;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(17391,0,1,-3924.27,-12761.5,101.829,4.9861,7000,1739101),
(17391,0,2,-3923.5,-12795,107.213,4.87004,0,0),
(17391,0,3,-3923.5,-12795,107.213,4.87004,2000,1739102);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1739101,1739102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1739101,2000,0,0,0,0,0,0,0x04,2000000670,0,0,0,0,0,0,0,''), -- 2000000670
(1739101,3000,0,0,0,0,0,0,0x04,2000000671,0,0,0,0,0,0,0,''), -- 2000000671
(1739101,4000,23,17019,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'morph'),
(1739101,5000,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1739102,100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(1739102,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn Self');

-- q.9541 'Totem of Yor'
DELETE FROM dbscripts_on_quest_start WHERE id = 9541;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9541,1,34,19003,0,0,0,0,6,0,0,0,0,0,0,0,0,'aura check - terminate if present on Player'),
(9541,10,15,30443,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Stillpine Ancestor Tikti TRIGGER');

UPDATE quest_template SET StartScript = 9541 WHERE entry = 9541;

DELETE FROM dbscripts_on_quest_end WHERE id = 9541;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9541,0,14,30432,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from Player');

UPDATE quest_template SET CompleteScript = 9541 WHERE entry = 9541;

DELETE FROM conditions WHERE condition_entry = 19003;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(19003,1,30432,1,0);

-- Part of Stillpine Ancestor Tikti 17392 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (19995);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19995,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: Active'),
(19995,1000,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: face Player'),
(19995,2000,0,0,0,0,0,0,2,2000000672,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: text'), -- 2000000672
(19995,3000,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: movement chenged to 2:waypoint');

DELETE FROM creature_movement_template WHERE entry = 17392;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(17392,0,1,-3885.67,-13096.5,3.56423,1.65068,13000,1739201),
(17392,0,2,-3913.36,-13055.2,-4.82595,100,0,0),
(17392,0,3,-3951.4,-13033.9,-8.45508,100,2000,1739102);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1739201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1739201,2000,0,0,0,0,0,0,0x04,2000000673,0,0,0,0,0,0,0,''), -- 2000000673
(1739201,7000,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI 5'),
(1739201,9000,0,0,0,0,0,0,0x04,2000000674,0,0,0,0,0,0,0,''), -- 2000000674
(1739201,11000,15,30431,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- q.9542 'Totem of Vark'
DELETE FROM dbscripts_on_quest_start WHERE id = 9542;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9542,1,34,19004,0,0,0,0,6,0,0,0,0,0,0,0,0,'aura check - terminate if present on Player'),
(9542,10,15,30444,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Stillpine Ancestor Yor TRIGGER');

UPDATE quest_template SET StartScript = 9542 WHERE entry = 9542;

DELETE FROM dbscripts_on_quest_end WHERE id = 9542;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9542,0,14,30445,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from Player');

UPDATE quest_template SET CompleteScript = 9542 WHERE entry = 9542;

DELETE FROM conditions WHERE condition_entry = 19004;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(19004,1,30445,1,0);

-- Part of Stillpine Ancestor Yor 17393 EAI
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=6/7 WHERE entry = 17393;
DELETE FROM dbscripts_on_relay WHERE id IN (19994,19993);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19994,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Yor 17393 EAI: Active'),
(19994,1000,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Yor 17393 EAI: face Player'),
(19994,2000,0,0,0,0,0,0,2,2000000675,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Yor 17393 EAI: text'), -- 2000000675
(19994,3000,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Tikti 17392 EAI: movement chenged to 2:waypoint'),
(19993,0,0,0,0,0,0,0,2,2000000678,0,0,0,0,0,0,0,'Part of Stillpine Ancestor Yor 17393 EAI: text'); -- 2000000678

DELETE FROM creature_movement_template WHERE entry = 17393;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(17393,0,1,-4646.63,-13015.4,-1.38673,1.6751,4000,1739301),
(17393,0,2,-4679.14,-12985,0.5803,1.93085,12000,1739302),
(17393,0,3,-4679.14,-12985,0.5803,100,100,5),
(17393,0,4,-4680.61,-12963.3,2.66436,100,0,0),
(17393,0,5,-4681.2,-12949.7,5.54,100,0,0),
(17393,0,6,-4682.73,-12929.5,3.47035,100,0,0),
(17393,0,7,-4667.73,-12909.8,1.50962,100,0,0),
(17393,0,8,-4647.96,-12887.9,2.97161,100,0,0),
(17393,0,9,-4639.09,-12877.2,4.9471,100,0,0),
(17393,0,10,-4630.71,-12855.1,4.28118,100,0,0),
(17393,0,11,-4620.17,-12829.9,6.06746,100,0,0),
(17393,0,12,-4612,-12814,7.12509,100,0,0),
(17393,0,13,-4601.96,-12795.7,3.27105,100,0,0),
(17393,0,14,-4588.53,-12774.2,7.44323,100,0,0),
(17393,0,15,-4575.77,-12760.8,6.10979,100,0,0),
(17393,0,16,-4563.73,-12744.2,9.99685,100,0,0),
(17393,0,17,-4554.96,-12729,12.2105,100,0,0),
(17393,0,18,-4547.41,-12712.1,9.81412,100,0,0),
(17393,0,19,-4538.2,-12689.2,12.5838,100,0,0),
(17393,0,20,-4533.22,-12668.1,16.8651,100,0,0),
(17393,0,21,-4532.96,-12656.8,15.2664,100,0,0),
(17393,0,22,-4532.78,-12637.9,16.5789,100,0,0),
(17393,0,23,-4533.02,-12619.1,12.0263,100,0,0),
(17393,0,24,-4532.77,-12592.5,14.642,100,0,0),
(17393,0,25,-4535.16,-12572.5,11.9603,100,0,0),
(17393,0,26,-4521.38,-12547.2,8.20642,100,0,0),
(17393,0,27,-4506.74,-12520.5,2.71515,100,0,0),
(17393,0,28,-4492.57,-12495.4,4.36968,100,0,0),
(17393,0,29,-4476.92,-12469.2,2.26036,100,0,0),
(17393,0,30,-4462.38,-12438.4,2.68436,100,0,0),
(17393,0,31,-4430.42,-12442,2.38524,100,0,0),
(17393,0,32,-4419.91,-12429.3,3.2091,100,0,0),
(17393,0,33,-4408.61,-12400.1,5.02559,100,0,0),
(17393,0,34,-4414.42,-12370.4,5.99229,100,0,0),
(17393,0,35,-4423.44,-12345,8.29463,100,0,0),
(17393,0,36,-4435.58,-12315.7,10.3162,100,0,0),
(17393,0,37,-4457.19,-12304.2,12.3064,100,0,0),
(17393,0,38,-4475.24,-12294,13.9122,100,0,0),
(17393,0,39,-4490.89,-12279.7,15.2792,1.9232,0,0),
(17393,0,40,-4503.42,-12249.6,16.3871,1.97033,0,0),
(17393,0,41,-4510.15,-12229.8,17.1362,1.87215,0,0),
(17393,0,42,-4513.27,-12209.5,16.9777,1.70329,0,0),
(17393,0,43,-4513.64,-12189.1,16.9593,100,0,0),
(17393,0,44,-4502.99,-12158,16.1291,100,0,0),
(17393,0,45,-4508.94,-12122.7,16.9898,100,0,0),
(17393,0,46,-4505.31,-12095.6,18.8873,100,0,0),
(17393,0,47,-4500.36,-12071.2,21.4168,100,0,0),
(17393,0,48,-4516.81,-12050.5,24.2492,100,0,0),
(17393,0,49,-4528.22,-12037.5,26.0347,100,0,0),
(17393,0,50,-4531.9,-12008.6,28.4037,100,0,0),
(17393,0,51,-4538.61,-11984.4,29.7635,100,0,0),
(17393,0,52,-4543.79,-11963.5,29.1954,100,0,0),
(17393,0,53,-4537.48,-11934.2,27.0094,100,0,0),
(17393,0,54,-4533.18,-11906.3,22.686,100,0,0),
(17393,0,55,-4504.71,-11879,17.5661,100,0,0),
(17393,0,56,-4500.36,-11845.7,15.0063,100,0,0),
(17393,0,57,-4510.63,-11816.8,13.8306,100,0,0),
(17393,0,58,-4531.7,-11786.6,15.5384,100,0,0),
(17393,0,59,-4555.94,-11756.9,17.6289,100,0,0),
(17393,0,60,-4546.7,-11735.9,19.533,100,0,0),
(17393,0,61,-4535.96,-11712.4,18.2368,100,0,0),
(17393,0,62,-4519.88,-11702.4,17.8815,100,0,0),
(17393,0,63,-4507,-11694.5,13.2184,100,0,0),
(17393,0,64,-4490.14,-11673,10.8723,100,0,0),
(17393,0,65,-4486.34,-11658,10.6353,1.51827,10000,1739303);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1739301,1739302,1739303);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1739301,2000,15,30446,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1739302,2000,0,0,0,0,0,0,0x04,2000000676,0,0,0,0,0,0,0,''), -- 2000000676
(1739302,5000,15,30447,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1739302,5100,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI 5'),
(1739302,6000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(1739302,7000,0,0,0,0,0,0,0x04,2000000677,0,0,0,0,0,0,0,''), -- 2000000677
(1739303,100,35,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI 6'),
(1739303,5000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(1739303,5500,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn Self');
