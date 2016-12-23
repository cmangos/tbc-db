-- q.9977 'The Ring of Blood: The Final Challenge'
DELETE FROM dbscripts_on_quest_start WHERE id = 9977;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9977,1,31,18069,15,0,0,0,0,0,0,0,0,0,0,0,'search for 18069'), -- in case if someone is in this q. already.
(9977,2,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9977,2,0,0,0,0,0,0,2000000842,0,0,0,0,0,0,0,''),
(9977,12,0,0,0,0,0,0,2000000843,0,0,0,0,0,0,0,''),
(9977,17,0,0,0,18069,60873,7 | 0x10,2000000844,0,0,0,0,0,0,0,''),
(9977,17,3,0,0,18069,60873,7 | 0x10,0,0,0,0,-717.793,7898.38,48.8137,4.86694,''),
(9977,34,0,0,0,18069,60873,7 | 0x10,2000000845,0,0,0,0,0,0,0,''),
(9977,34,22,16,0x01 | 0x04,18069,60873,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(9977,35,26,0,0,18069,100,0,0,0,0,0,0,0,0,0,''),
(9977,35,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000842 AND 2000000846;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000842,'Mogor has challenged you. You have to accept! Get in the ring if you are ready to fight.',0,0,0,0,NULL),
(2000000843,'For the first time in the Ring of Blood\'s history, Mogor has chosen to exercise his right of battle! On this wartorn ground, $n will face Mogor, hero of the Warmaul!',0,1,0,0,NULL),
(2000000844,'Now you face da true champion! I give you chance to run away little one. Run away now before Mogor decim... destyor... Run away before Mogor KILL!',0,1,0,0,NULL),
(2000000845,'No more chances! Now you pay da ogre!',0,1,0,15,NULL),
(2000000846,'$n has defeated the hero of the Warmaul, Mogor! All hail $n!',0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 0 WHERE Entry = 18069;
DELETE FROM dbscripts_on_creature_death WHERE id = 18069;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18069,1,0,0,0,18471,66480,0 | 0x10,2000000846,0,0,0,0,0,0,0,'buddy : yell'),
(18069,10,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');


