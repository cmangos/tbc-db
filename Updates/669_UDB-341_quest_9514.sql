-- q.9514 'Rune Covered Tablet'
DELETE FROM dbscripts_on_quest_end WHERE id = 9514;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9514,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(9514,1,21,1,0,17242,84433,7 | 0x10,0,0,0,0,0,0,0,0,'buddy active'),
(9514,2,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(9514,4,36,0,0,17242,84433,0x01 | 0x10,0,0,0,0,0,0,0,0,'face buddy'),
(9514,6,0,0,0,0,0,0,2000000691,0,0,0,0,0,0,0,''),
(9514,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9514,9,36,0,0,17242,84433,3 | 0x10,0,0,0,0,0,0,0,0,''),
(9514,11,0,0,0,17242,84433,7 | 0x10,2000000692,0,0,0,0,0,0,0,''),
(9514,13,1,1,0,17242,84433,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9514,16,3,0,0,17242,84433,7 | 0x10,0,0,0,0,-4699.7,-12419.6,11.6882,2.37188,''),
(9514,19,0,0,0,17242,84433,7 | 0x10,2000000693,0,0,0,0,0,0,0,''),
(9514,22,0,0,0,17242,84433,7 | 0x10,2000000694,0,0,0,0,0,0,0,''),
(9514,26,0,0,0,17242,84433,7 | 0x10,2000000695,0,0,0,0,0,0,0,''),
(9514,31,0,0,0,17242,84433,7 | 0x10,2000000696,0,0,0,0,0,0,0,''),
(9514,34,1,1,0,17242,84433,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9514,37,1,1,0,17242,84433,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9514,40,0,0,0,17242,84433,7 | 0x10,2000000697,0,0,0,0,0,0,0,''),
(9514,44,0,0,0,17242,84433,7 | 0x10,2000000698,0,0,0,0,0,0,0,''),
(9514,48,0,0,0,0,0,0,2000000699,0,0,0,0,0,0,0,''),
(9514,52,36,0.994838,0,0,0,0,0,0,0,0,0,0,0,0,'face reset'),
(9514,52,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added'),
(9514,53,3,0,0,17242,84433,7 | 0x10,0,0,0,0,-4693.81,-12423.1,11.8935,6.26573,''),
(9514,57,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(9514,57,21,0,0,17242,84433,7 | 0x10,0,0,0,0,0,0,0,0,'buddy unactive');
UPDATE quest_template SET CompleteScript = 9514 WHERE entry = 9514;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000691 AND 2000000699;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000691,'Adamant, could you please take a look at this tablet and try to decipher the runes?', 0, 0, 0, 1, NULL),
(2000000692,'Of course! Anything for you, darling!', 0, 0, 0, 5, NULL),
(2000000693,'Alright, let me take a look at that tablet.', 0, 0, 0, 1, NULL),
(2000000694,'%s slowly reads the tablet, mouthing the words in their native tongue.', 0, 2, 0, 0, NULL),
(2000000695,'Naga warlord! Oh dear...', 0, 0, 0, 5, NULL),
(2000000696,'Well, you aren\'t going to like what I have to tell you, young missy. This tablet is a naga communication. Their leader, Warlord Sriss\'tiz, has ordered his naga to take the rest of the island by force.', 0, 0, 0, 1, NULL),
(2000000697,'And it looks like he\'s got reinforcements comin\' from Nazjatar!', 0, 0, 0, 5, NULL),
(2000000698,'We\'ve got to do something about this!', 0, 0, 0, 5, NULL),
(2000000699,'Thank you, Adamant. I think I know just the person for the job.', 0, 0, 0, 2, NULL);

-- Rune Covered Tablet
-- Item must be droped from almost 1st creature .. it gaves continuation of chain.
-- Wowhead has wrong data: low % is an effect of killing creatures without req. for item. (pls check comments) 
UPDATE creature_loot_template SET ChanceOrQuestChance = 75, condition_id = 1047 WHERE item = 23759;
-- conditions 
-- item should be available for alliance only & after q.9506.
DELETE FROM conditions WHERE condition_entry BETWEEN 1043 AND 1047;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1043, 16, 23759, 1), -- not enough items yet.
(1044, 22, 9514, 0), -- not taken a quest yet.
(1045, -1, 22, 1038), -- alliance only + q. 9506 must be completed
(1046, -1, 1043, 1044), -- maxitem =1 + q.9514 not taken
(1047, -1, 1045, 1046);


