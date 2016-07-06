-- quest 10351 'Natural Remedies'
DELETE FROM dbscripts_on_event WHERE id = 13256;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(13256,0,21,1,0,20781,73426,0x10,0,0,0,0,0,0,0,0,'20781 - active'),
(13256,2,20,2,0,20617,72890,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72894,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72885,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72888,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72892,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72889,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72887,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72895,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72896,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,2,20,2,0,20617,72886,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(13256,8,10,21504,44000,0,0,0,0,0,0,0,129.1348,4834.785,76.19424,0.06981317,'spawn - Pathaleon the Calculator\'s Image'),
(13256,100,18,0,0,20617,72891,7 | 0x10,0,0,0,0,0,0,0,0,''),
(13256,101,18,0,0,20617,72893,7 | 0x10,0,0,0,0,0,0,0,0,''),
(13256,102,20,0,0,20617,72890,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72894,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72885,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72888,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72892,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72889,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72887,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72895,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72896,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,102,20,0,0,20617,72886,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(13256,105,21,0,0,20781,73426,0x10,0,0,0,0,0,0,0,0,'20781 - unactive');
-- Red Crystal Trigger
UPDATE creature_template SET InhabitType = 4 WHERE entry = 20617;
UPDATE creature SET spawntimesecs = 5 WHERE id = 20617; -- q. req.
-- waypoints -- they will be activated during event
DELETE FROM creature_movement WHERE id IN (72885,72886,72887,72888,72889,72890,72892,72894,72895,72896);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(72885,1,68.9566,4780.13,80.87505,3000,2061701,0,0,0,0,0,0,0,2.46091,0,0),
(72886,1,74.08681,4829.924,81.73363,3000,2061701,0,0,0,0,0,0,0,5.65487,0,0),
(72887,1,55.99306,4800.013,81.18014,3000,2061701,0,0,0,0,0,0,0,6.21337,0,0),
(72888,1,91.92361,4828.726,82.48882,3000,2061701,0,0,0,0,0,0,0,5.044,0,0),
(72889,1,105.2986,4823.434,83.29948,3000,2061701,0,0,0,0,0,0,0,1.98968,0,0),
(72890,1,113.6053,4812.225,83.72208,3000,2061701,0,0,0,0,0,0,0,5.88176,0,0),
(72892,1,113.9206,4793.067,83.29414,3000,2061701,0,0,0,0,0,0,0,3.63029,0,0),
(72894,1,100.5938,4776.241,81.56815,3000,2061701,0,0,0,0,0,0,0,1.55334,0,0),
(72895,1,68.9566,4780.13,80.87505,3000,2061701,0,0,0,0,0,0,0,4.4855,0,0),
(72896,1,84.66146,4771.719,81.1701,3000,2061701,0,0,0,0,0,0,0,6.0912,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2061701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2061701,1,15,35487,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Pathaleon the Calculator's Image
UPDATE creature_template SET MovementType = 2 WHERE entry = 21504;
DELETE FROM creature_movement_template WHERE entry = 21504;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21504,1,129.1348,4834.785,76.19424,50000,2150401,0,0,0,0,0,0,0,0.06981317,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2150401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2150401,0,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2150401,1,15,35468,0,20617,72893,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2150401,3,15,33900,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2150401,4,0,0,0,0,0,0,2000000369,0,0,0,0,0,0,0,''),
(2150401,10,15,35471,0,20617,72891,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2150401,13,0,0,0,0,0,0,2000000370,0,0,0,0,0,0,0,''),
(2150401,22,0,0,0,0,0,0,2000000371,0,0,0,0,0,0,0,''),
(2150401,23,15,23017,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2150401,27,14,23017,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2150401,39,0,0,0,0,0,0,2000000372,0,0,0,0,0,0,0,''),
(2150401,41,10,19305,600000,0,0,0,0,0,0,0,108.7072,4839.411,78.57397,6.064728,'spawn - Goliathon <King of the Colossi>'),
(2150401,42,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000369 AND 2000000372;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000000369,'And just what do you think you are doing?  You dare to interfere with my master\'s experiment?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,NULL),
(2000000370,'Do you like what we\'ve done here?  Perhaps we will drop these crystals from the sky all over Outland.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000000371,'I grow bored with your attempt to heal the land and quell the energies summoning and driving the colossi mad.  Goliathon, King of the Colossi, Prince Kael\'thas and I demand that you defend the crystal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000372,'We will meet again soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
-- Goliathon <King of the Colossi>
UPDATE creature_template SET MovementType = 2 WHERE entry = 19305;
DELETE FROM creature_movement_template WHERE entry = 19305;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19305,1,108.7072,4839.411,78.57397,2000,1930501,0,0,0,0,0,0,0,6.064728,0,0),
(19305,2,134.45,4835.4,76.7612,600000,0,0,0,0,0,0,0,0,3.52038,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1930501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1930501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');

