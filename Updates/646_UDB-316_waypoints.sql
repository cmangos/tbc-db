-- Artificer Daelo
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84582;
UPDATE creature_template SET movementType = 2 WHERE entry = 17222;
DELETE FROM creature_movement WHERE id = 84582;
DELETE FROM creature_movement_template WHERE entry = 17222;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17222, 1, -4157.57, -12470.2, 44.9803, 56000, 0, 2.23402, 0, 0),
(17222, 2, -4157.57, -12470.2, 44.9803, 4000, 1722201, 2.23402, 0, 0),
(17222, 3, -4172.33,-12471.8,44.2555, 0, 0, 3.24119, 0, 0),
(17222, 4, -4196.43,-12477.3,45.8009, 0, 0, 3.24119, 0, 0),
(17222, 5, -4196.43,-12477.3,45.8009, 7000, 1722202, 2.09757, 0, 0),
(17222, 6, -4201.16,-12485.6,45.0541, 0, 0, 3.41712, 0, 0),
(17222, 7, -4217,-12491.1,44.5686, 0, 0, 3.34487, 0, 0),
(17222, 8, -4217,-12491.1,44.5686, 15000, 1722203, 1.72215, 0, 0),
(17222, 9, -4210.98,-12496.9,44.3835, 0, 0, 3.34487, 0, 0),
(17222, 10, -4205.43,-12511.3,44.8677, 8000, 1722204, 3.34487, 0, 0),
(17222, 11, -4226.22,-12519.4,45.608, 14000, 1722205, 3.38289, 0, 0),
(17222, 12, -4207.1,-12512.1,44.992, 0, 0, 0.115629, 0, 0),
(17222, 13, -4162.91,-12522.8,44.8225, 0, 0,0.82563, 0, 0),
(17222, 14, -4164.04,-12485.4,45.3203, 0, 0,1.15864, 0, 0),
(17222, 15, -4161.31,-12474.5,45.243, 0, 0,0.91555, 0, 0),
(17222, 16, -4157.57, -12470.2, 44.9803, 300000, 0, 2.23402, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1722201 AND 1722205;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1722201,1,0,0,0,0,0,0,2000000645,0,0,0,0,0,0,0,''),
(1722201,3,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1722202,3,0,0,0,0,0,0,2000000646,0,0,0,0,0,0,0,''),
(1722203,3,0,0,0,0,0,0,2000000647,0,0,0,0,0,0,0,''),
(1722203,8,0,0,0,0,0,0,2000000648,0,0,0,0,0,0,0,''),
(1722204,3,0,0,0,0,0,0,2000000649,0,0,0,0,0,0,0,''),
(1722205,3,0,0,0,0,0,0,2000000650,0,0,0,0,0,0,0,''),
(1722205,4,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1722205,10,1,274,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005143,2000005144,2000005145,2000005224,2000005225,2000005226);
DELETE FROM db_script_string WHERE entry BETWEEN 2000000645 AND 2000000650;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000645,'This won\'t work at all! The buildings will surely collapse if we do not shore up the support beams.',0,0,0,5,NULL),
(2000000646,'This won\'t do at all! We have to secure the foundation or the entire structure will crumble!',0,0,0,1,NULL),
(2000000647,'This structure violates at least 8 different ordinances!',0,0,0,5,NULL),
(2000000648,'I won\'t be held responsible for the catastrophe that will surely result from the haphazard maintenance of this building.',0,0,0,1,NULL),
(2000000649,'Hrm, this looks much better. Let\'s have a look on the inside.',0,0,0,1,NULL),
(2000000650,'By the foul teat of Kil\'Jaeden\'s rotted torso, the entire backside is blown out! How can someone be expected to live in here? I\'ve seen enough!',0,0,0,1,NULL);


