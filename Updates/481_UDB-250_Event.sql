-- Silvermoon City

-- Event in "The Bazzar"
-- Silvermoon Ritual of Summoning Dummy
UPDATE creature_template SET MovementType = 2 WHERE entry = 18782;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid = 86721;
DELETE FROM creature_movement WHERE id = 86721;
DELETE FROM creature_movement_template WHERE entry = 18782;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18782,1,9518.07,-7103.64,14.3373,1000,0,2.9147,0,0),
(18782,2,9518.07,-7103.64,14.3373,240000,1878201,2.9147,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1878201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1878201,1,21,1,0,18303,65639,0x10,0,0,0,0,0,0,0,0,'Lyria - active'),
(1878201,1,21,1,0,18668,66938,0x10,0,0,0,0,0,0,0,0,'Vaernon - active'),
(1878201,1,21,1,0,18669,66939,0x10,0,0,0,0,0,0,0,0,'Terric - active'),
(1878201,1,21,1,0,18724,66969,0x10,0,0,0,0,0,0,0,0,'Melaya - active'),
(1878201,1,21,1,0,18671,66942,0x10,0,0,0,0,0,0,0,0,'Ennas - active'),
(1878201,1,21,1,0,18336,65672,0x10,0,0,0,0,0,0,0,0,'Terric - active'),
(1878201,1,21,1,0,18336,65673,0x10,0,0,0,0,0,0,0,0,'Melaya - active'),
(1878201,1,21,1,0,18336,65674,0x10,0,0,0,0,0,0,0,0,'Ennas - active'),
(1878201,2,0,0,0,18303,65639,3 | 0x10,2000000571,0,0,0,0,0,0,0,'Lyria'),
(1878201,10,0,0,0,18303,65639,3 | 0x10,2000000572,0,0,0,0,0,0,0,'Lyria'),
(1878201,15,0,0,0,18668,66938,3 | 0x10,2000000573,0,0,0,0,0,0,0,'Vaernon'),
(1878201,20,0,0,0,18669,66939,3 | 0x10,2000000574,0,0,0,0,0,0,0,'Terric'),
(1878201,25,0,0,0,18724,66969,3 | 0x10,2000000575,0,0,0,0,0,0,0,'Melaya'),
(1878201,31,0,0,0,18671,66942,3 | 0x10,2000000576,0,0,0,0,0,0,0,'Ennas'),
(1878201,36,0,0,0,18668,66938,3 | 0x10,2000000577,0,0,0,0,0,0,0,'Vaernon'),
(1878201,42,0,0,0,18303,65639,3 | 0x10,2000000578,0,0,0,0,0,0,0,'Lyria'),
(1878201,47,0,0,0,18668,66938,3 | 0x10,2000000579,0,0,0,0,0,0,0,'Vaernon'),
(1878201,53,0,0,0,18303,65639,3 | 0x10,2000000580,0,0,0,0,0,0,0,'Lyria'),
(1878201,60,0,0,0,18671,66942,3 | 0x10,2000000581,0,0,0,0,0,0,0,'Ennas'),
(1878201,65,0,0,0,18669,66939,3 | 0x10,2000000582,0,0,0,0,0,0,0,'Terric'),
(1878201,70,0,0,0,18724,66969,3 | 0x10,2000000583,0,0,0,0,0,0,0,'Melaya'),
(1878201,76,0,0,0,18671,66942,3 | 0x10,2000000584,0,0,0,0,0,0,0,'Ennas'),
(1878201,81,0,0,0,18668,66938,3 | 0x10,2000000585,0,0,0,0,0,0,0,'Vaernon'),
(1878201,87,0,0,0,18303,65639,3 | 0x10,2000000586,0,0,0,0,0,0,0,'Lyria'),
(1878201,92,0,0,0,18669,66939,3 | 0x10,2000000587,0,0,0,0,0,0,0,'Terric'),
(1878201,95,0,0,0,18724,66969,3 | 0x10,2000000588,0,0,0,0,0,0,0,'Melaya'),
(1878201,101,0,0,0,18671,66942,3 | 0x10,2000000589,0,0,0,0,0,0,0,'Ennas'),
(1878201,107,0,0,0,18303,65639,3 | 0x10,2000000590,0,0,0,0,0,0,0,'Lyria'),
(1878201,114,0,0,0,18671,66942,3 | 0x10,2000000591,0,0,0,0,0,0,0,'Ennas'),
(1878201,119,15,32899,0,18336,65672,7 | 0x10,0,0,0,0,0,0,0,0,'cast Ritual of Summoning'),
(1878201,124,15,32948,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Ritual of Summoning'),
(1878201,127,15,32928,0,18336,65672,7 | 0x10,0,0,0,0,0,0,0,0,'cast Ritual of Summoning'),
(1878201,128,0,0,0,18303,65639,3 | 0x10,2000000592,0,0,0,0,0,0,0,'Lyria'),
(1878201,130,15,32928,0,18336,65673,7 | 0x10,0,0,0,0,0,0,0,0,'cast Ritual of Summoning'),
(1878201,133,15,32928,0,18336,65674,7 | 0x10,0,0,0,0,0,0,0,0,'cast Ritual of Summoning'),
(1878201,138,0,0,0,18671,66942,3 | 0x10,2000000593,0,0,0,0,0,0,0,'Ennas'),
(1878201,144,0,0,0,18671,66942,3 | 0x10,2000000594,0,0,0,0,0,0,0,'Ennas'),
(1878201,154,10,18337,22000,0,0,0,0,0,0,0,9518.375,-7103.683,14.33718,2.251475,'summon - Priest Kath\'marr'),
(1878201,179,0,0,0,18303,65639,3 | 0x10,2000000596,0,0,0,0,0,0,0,'Lyria'),
(1878201,193,0,0,0,18671,66942,3 | 0x10,2000000597,2000000598,2000000599,0,0,0,0,0,'Ennas'),
(1878201,201,14,32974,0,18303,65639,7 | 0x10,0,0,0,0,0,0,0,0,'Lyria'),
(1878201,201,14,32974,0,18671,66942,7 | 0x10,0,0,0,0,0,0,0,0,'Ennas'),
(1878201,202,21,0,0,18303,65639,0x10,0,0,0,0,0,0,0,0,'Lyria - active'),
(1878201,202,21,0,0,18668,66938,0x10,0,0,0,0,0,0,0,0,'Vaernon - active'),
(1878201,202,21,0,0,18669,66939,0x10,0,0,0,0,0,0,0,0,'Terric - active'),
(1878201,202,21,0,0,18724,66969,0x10,0,0,0,0,0,0,0,0,'Melaya - active'),
(1878201,202,21,0,0,18671,66942,0x10,0,0,0,0,0,0,0,0,'Ennas - active'),
(1878201,202,21,0,0,18336,65672,0x10,0,0,0,0,0,0,0,0,'Terric - active'),
(1878201,202,21,0,0,18336,65673,0x10,0,0,0,0,0,0,0,0,'Melaya - active'),
(1878201,202,21,0,0,18336,65674,0x10,0,0,0,0,0,0,0,0,'Ennas - active');
-- Priest Kath'marr
UPDATE creature_template SET MovementType = 2 WHERE entry = 18337;
DELETE FROM creature_movement_template WHERE entry = 18337;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18337,1,9518.375,-7103.683,14.33718,40000,1833701,2.251475,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1833701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1833701,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1833701,2,15,32974,0,18303,65639,1 | 0x10,0,0,0,0,0,0,0,0,'cast Cinematic - Mind Control (Rank 1)'),
(1833701,7,15,32974,0,18671,66942,1 | 0x10,0,0,0,0,0,0,0,0,'cast Cinematic - Mind Control (Rank 1)'),
(1833701,11,0,0,0,0,0,0,2000000595,0,0,0,0,0,0,0,''),
(1833701,13,1,66,0,18336,65672,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1833701,13,1,66,0,18336,65673,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1833701,13,1,66,0,18336,65674,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1833701,14,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Priest Ennas
UPDATE creature_template_addon SET emote = 0 WHERE entry = 18671;
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000571 AND 2000000599;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000571,'My brothers and sisters. Listen to me. We must speak of the survival of our people. We have narrowly survived one calamity, but I fear the next shall destroy us.',0,0,0,1,NULL),
(2000000572,'Can you not see what is happening? Open your eyes. It is laid bare for all to see. What is this new alliance? Why have we betrayed our allies of old, only to take up with the enemies of all that live?',0,0,0,1,NULL),
(2000000573,'No, you\'re wrong! We were the ones betrayed!',0,0,0,22,NULL),
(2000000574,'When have the dwarves ever been our friends?',0,0,0,11,NULL),
(2000000575,'The humans abandoned us in our darkest hour! Their prince himself led the assault on our lands.',0,0,0,25,NULL),
(2000000576,'You fool! The prince\'s minions were the very Forsaken we have now allied ourselves with, and now he has betrayed us!',0,0,0,5,NULL),
(2000000577,'The Ranger-General of Silvermoon will be a loyal ally!',0,0,0,1,NULL),
(2000000578,'You speak of her as friend? You are a fool. This "Dark Lady" is not Sylvanas.',0,0,0,1,NULL),
(2000000579,'Blood will be true. We can trust in none but our own!',0,0,0,25,NULL),
(2000000580,'Blood? And these orcs, these fair weather friends? They will aid us?',0,0,0,11,NULL),
(2000000581,'A great blight lies across our land! It grows every day. Our need for magic weakens us, and will bring us to destruction, just as it has before!',0,0,0,25,NULL),
(2000000582,'How are we to live without magic?',0,0,0,5,NULL),
(2000000583,'Look at the wonders of this city! This is magic.',0,0,0,5,NULL),
(2000000584,'But at what cost? You\'ve all been blinded. We have all been blinded.',0,0,0,1,NULL),
(2000000585,'You call us traitors?',0,0,0,25,NULL),
(2000000586,'The magisters are the traitors! They have sealed our doom.',0,0,0,25,NULL),
(2000000587,'Idealistic blather. Go back to your forests!',0,0,0,3,NULL),
(2000000588,'You would have us live like the savages!',0,0,0,5,NULL),
(2000000589,'No, not savagery! Conscience. The excesses of our people will destroy us, and all that we have struggled to build.',0,0,0,1,NULL),
(2000000590,'We have not struggled so hard to survive, only to bring about the true destruction.',0,0,0,1,NULL),
(2000000591,'We stand on the brink of destruction. We must reconsider this rash course of action.',0,0,0,5,NULL),
(2000000592,'If we speak as one, we cannot be ignored!',0,0,0,1,NULL),
(2000000593,'Lend us your voices! Now is the time we must act to save our people.',0,0,0,1,NULL),
(2000000594,'Lor\'themar must hear us! We will not be silenced!',0,0,0,5,NULL),
(2000000595,'That should take care of that. Summon me if you have further need of my services.',0,0,0,11,NULL),
(2000000596,'We will repay the betrayal of the Alliance! We shall never forget, and never forgive!',0,0,0,21,NULL),
(2000000597,'How can you say our lives are not better now? How can you deny the betterment of our lives?',0,0,0,21,NULL),
(2000000598,'Lor\'themar has remade Silvermoon into something we may truly be proud of.',0,0,0,21,NULL),
(2000000599,'Our new allies will bring us back to our former glory. These bonds will be true, and we will not be betrayed again!',0,0,0,21,NULL);
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 32928;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(32928,1,18336);
DELETE FROM spell_script_target WHERE entry = 32974;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(32974,1,18303),
(32974,1,18671);

