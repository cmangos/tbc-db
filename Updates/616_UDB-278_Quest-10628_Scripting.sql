-- UDB_278
-- q.10628 'Akama'
DELETE FROM dbscripts_on_quest_end WHERE id = 10628;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10628,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Akama active'),
(10628,0,29,3,0,0,0,0,0,0,0,0,0,0,0,0,'21700 - npc_flag removed'),
(10628,1,10,21768,300000,0,0,0,0,0,0,0,-3726.069,1040.505,56.03978,4.852015,'summon: Vagath'),
(10628,1,10,21776,300000,0,0,0,0,0,0,0,-3728.7,1041.32,55.9568,4.939282,'summon: Illidari Temptress'),
(10628,1,10,21776,300000,0,0,0,0,0,0,0,-3722.402,1041.253,56.0398,4.939282,'summon: Illidari Temptress'),
(10628,2,15,7791,0,21768,50,7,0,0,0,0,0,0,0,0,''),
(10628,3,0,0,0,21768,50,7,2000000603,0,0,0,0,0,0,0,'21768 text'),
(10628,7,0,0,0,0,0,0,2000000604,0,0,0,0,0,0,0,''),
(10628,9,15,37448,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10628,11,15,37493,0,0,0,6,0,0,0,0,0,0,0,0,''),
(10628,14,0,0,0,0,0,0,2000000605,0,0,0,0,0,0,0,''),
(10628,15,3,0,0,21768,50,7,0,0,0,0,-3727.29,1033.89,55.9558,5.02678,''),
(10628,17,3,0,0,21768,50,7,0,0,0,0,-3725.44,1030.88,55.9558,5.90485,''),
(10628,19,3,0,0,21768,50,7,0,0,0,0,-3719.92,1029.99,55.9558,6.06823,''),
(10628,23,0,0,0,21768,50,7,2000000606,0,0,0,0,0,0,0,'21768 text'),
(10628,31,3,0,0,21768,50,7,0,0,0,0,-3725.44,1030.88,55.9558,2.26456,''),
(10628,32,3,0,0,21768,50,7,0,0,0,0,-3727.29,1033.89,55.9558,1.55377,''),
(10628,34,3,0,0,21768,50,7,0,0,0,0,-3726.069,1040.505,56.03978,1.55377,''),
(10628,36,18,0,0,21768,50,7,0,0,0,0,0,0,0,0,'despawn'),
(10628,37,32,1,0,21699,84636,7 | 0x10,0,0,0,0,0,0,0,0,'pause Maiev'),
(10628,39,0,0,0,0,0,0,2000000607,0,0,0,0,0,0,0,''),
(10628,42,15,37449,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10628,43,0,0,0,21699,84636,7 | 0x10,2000000608,0,0,0,0,0,0,0,'21699 text'),
(10628,46,14,37493,0,0,0,6,0,0,0,0,0,0,0,0,''),
(10628,49,0,0,0,0,0,0,2000000609,0,0,0,0,0,0,0,''),
(10628,52,32,0,0,21699,84636,7 | 0x10,0,0,0,0,0,0,0,0,'unpause Maiev'),
(10628,55,0,0,0,21699,84636,7 | 0x10,2000000610,0,0,0,0,0,0,0,'21699 text'),
(10628,57,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Akama unactive');
UPDATE quest_template SET CompleteScript = 10628 WHERE entry = 10628;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000603 AND 2000000610;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000603,'Mortals, here?  What is the meaning of this, pathetic Broken!',0,1,0,0,NULL),
(2000000604,'Have no fear, $r.  Just play along.',0,4,0,0,NULL),
(2000000605,'A mere nuisance, I assure you!  Tell the Master his prisoner will not escape while Akama and his Deathsworn watch over her.',0,1,0,0,NULL),
(2000000606,'You\'d do well not to toy with me, Akama.  Illidan has given me specific orders to keep a close watch on the Warden.  If I find out you\'re hiding anything from me, I will crush you with my own hands!',0,0,0,0,NULL),
(2000000607,'Forgive my harsh methods, but the Betrayer cannot learn of the truth.  My secret must be kept at all costs!',0,0,0,0,NULL),
(2000000608,'If we truly desire the same thing, Akama, then release me!  If Illidan is to die, it shall be by my hand!',0,0,0,0,NULL),
(2000000609,'In due time, Maiev.  I\'ve spent years preparing to make my move - I can\'t afford to put my plans in peril by tipping my hand too soon.',0,0,0,0,NULL),
(2000000610,'Curse you, Akama!  I am not a pawn in your game... my will is my own.  When I unleash my wrath upon Illidan it will have nothing to do with your foolish scheme!',0,0,0,0,NULL);
-- Vagath
UPDATE creature_template SET  FactionAlliance = 1843, FactionHorde = 1843, UnitFlags=UnitFlags|768, MovementType = 0 WHERE entry = 21768;
-- Illidari Temptress 
UPDATE creature_template SET  FactionAlliance = 1813, FactionHorde = 1813, UnitFlags=UnitFlags|768, MovementType = 0 WHERE entry = 21776;
DELETE FROM creature_linking_template WHERE entry = 21776;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(21776,530,21768,8704,100);


