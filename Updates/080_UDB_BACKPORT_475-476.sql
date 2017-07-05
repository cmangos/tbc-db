-- q.9759 'Ending their world'
DELETE FROM dbscripts_on_quest_end WHERE id = 9759;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9759,0,0,0,0,0,0,0,2000000901,0,0,0,0,0,0,0,''),
-- prevent for spawning same creatures few times by diff players
(9759,1,31,17110,100,0,0,0x08,0,0,0,0,0,0,0,0,'search for Acteon'),
-- summons
(9759,2,10,17241,360000,0,0,0,0,0,0,0,-1953.38,-11835.4,56.0449,1.204277,'Priestess Kyleen Il\'dinare'),
(9759,2,10,17682,360000,0,0,0,0,0,0,0,-1967.08,-11823.7,57.6898,0.124401,'Princess Stillpine'),
(9759,2,10,17440,360000,0,0,0,0,0,0,0,-1966.17,-11827,56.3035,0,'High Chief Stillpine'),
(9759,2,10,17312,360000,0,0,0,0,0,0,0,-1955.08,-11840,54.9181,1.291544,'Magwin'),
(9759,2,10,17311,360000,0,0,0,0,0,0,0,-1956.7,-11839.5,54.7308,1.256637,'Cowlen'),
(9759,2,10,17445,360000,0,0,0,0,0,0,0,-1968.96,-11830.7,54.7346,0.3665192,'Stillpine the Younger'),
(9759,2,10,17468,360000,0,0,0,0,0,0,0,-1965.03,-11837.8,53.5012,0.6457718,'Prophet Velen'),
(9759,2,10,17649,360000,0,0,0,0,0,0,0,-1959.66,-11846.3,52.3681,1.169371,'Kessel'),
(9759,2,10,17214,360000,0,0,0,0,0,0,0,-1960.05,-11819.7,59.654,6.091199,'Anchorite Fateema'),
(9759,2,10,17116,360000,0,0,0,0,0,0,0,-1958.48,-11822.3,58.5524,0.122173,'Exarch Menelaous'),
(9759,2,10,17110,360000,0,0,0,0,0,0,0,-1959.62,-11820.9,59.1905,6.230825,'Acteon'),
(9759,2,10,17242,360000,0,0,0,0,0,0,0,-1949.14,-11835,56.6616,1.361357,'Archaelogist Adamant Ironheart'),
(9759,2,10,17215,360000,0,0,0,0,0,0,0,-1960.45,-11822.9,58.0856,0,'Daedal'),
(9759,2,10,17101,360000,0,0,0,0,0,0,0,-1960.18,-11824.4,57.2607,0.296706,'Diktynna'),
(9759,2,10,17240,360000,0,0,0,0,0,0,0,-1951.64,-11834.5,56.4436,1.151917,'Admiral Odesyus'),
(9759,2,10,17246,360000,0,0,0,0,0,0,0,-1950.89,-11836.1,56.3801,1.308997,'Cookie'),
(9759,2,10,17117,360000,0,0,0,0,0,0,0,-1954.35,-11834.3,56.023,1.22173,'Injured Night Elf Priestess'),
(9759,2,10,17443,360000,0,0,0,0,0,0,0,-1965.13,-11820.8,59.1695,5.811946,'Kurz the Revelator'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1939.49,-11805.5,64.0813,5.54425,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1933.51,-11817.6,61.7992,2.042035,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1942.12,-11807.9,62.8749,5.462881,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1936.64,-11820.4,60.9026,2.024582,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1945.36,-11810.9,62.1372,5.340707,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1939.7,-11823.1,60.1204,2.094395,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1948.3,-11813.9,61.6598,5.340707,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1942.55,-11825.7,59.2232,2.111848,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1951.23,-11816.6,60.5052,5.288348,'Blade of Argus'),
(9759,2,10,17659,360000,0,0,0,0,0,0,0,-1930.63,-11814.8,62.5681,1.954769,'Blade of Argus'),
(9759,2,10,620,360000,0,0,0,0,0,0,0,-1952.364,-11836.45,56.16454,1.518436,''),
(9759,2,10,620,360000,0,0,0,0,0,0,0,-1951.406,-11838.43,56.16236,3.054326,''),
(9759,2,10,620,360000,0,0,0,0,0,0,0,-1954.468,-11836.25,55.8169,0.9599311,''),
(9759,2,10,620,360000,0,0,0,0,0,0,0,-1953.598,11837.78,55.78324,5.131268,''),
(9759,2,10,620,360000,0,0,0,0,0,0,0,-1955.721,-11837.65,55.385,0.2443461,''),
(9759,2,10,620,360000,0,0,0,0,0,0,0,-1947.832,-11834.35,57.14791,1.466077,''),
(9759,2,10,17989,360000,0,0,0,0,0,0,0,-1955.29,-11849.1,51.8687,1.692969,'Archimindy'),
-- other actions
(9759,3,29,1,1,17117,100,7,0,0,0,0,0,0,0,0,'Injured Night Elf Priestess - npcFlags added'),
(9759,3,29,1,2,17443,100,7,0,0,0,0,0,0,0,0,'Kurz the Revelator - npcFlags removed'),
(9759,3,29,1,2,17110,100,7,0,0,0,0,0,0,0,0,'Acteon - npcFlags removed'),
(9759,3,29,3,2,17241,100,7,0,0,0,0,0,0,0,0,'Priestess Kyleen Il\'dinare - npcFlags removed'),
(9759,3,29,3,2,17242,100,7,0,0,0,0,0,0,0,0,'Archaelogist Adamant Ironheart - npcFlags removed'),
(9759,3,29,3,2,17445,100,7,0,0,0,0,0,0,0,0,'Stillpine the Younger - npcFlags removed'),
(9759,3,28,0,0,17312,100,7,0,0,0,0,0,0,0,0,'STATE_STAND');
UPDATE quest_template SET CompleteScript = 9759 WHERE entry = 9759;
DELETE FROM db_script_string WHERE entry = 2000000901;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000901,'All hail $n, savior of Azuremyst and Bloodmyst. Hero of the Hand of Argus, champion of the draenei people!',0,6,0,22,NULL);

-- Update for all creatures involved
-- Conditions
DELETE FROM conditions WHERE condition_entry IN (1072,1073,1074);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1072, 4, 3584, 0), -- for other players
(1073, 8, 9759, 0),
(1074, -1, 1072, 1073); -- for player who finished escort quest

-- Archimindy
UPDATE creature_template SET MovementType = 0 WHERE entry = 17989;

-- Blade of Arguss
UPDATE creature_template SET MovementType = 0 WHERE entry = 17659;
DELETE FROM creature_template_addon WHERE entry = 17659;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17659,0,8,1,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (63380,63381,63382,63383,63384);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(63380,0,0,1,0,0,0,NULL),
(63381,0,0,1,0,0,0,NULL),
(63382,0,0,1,0,0,0,NULL),
(63383,0,0,1,0,0,0,NULL),
(63384,0,0,1,0,0,0,NULL);

-- Archaelogist Adamant Ironheart
UPDATE creature_template SET MovementType = 2 WHERE entry = 17242;
DELETE FROM creature_movement_template WHERE entry = 17242;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17242,1,-1949.14,-11835,56.6616, 6000, 1724201,1.361357, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1724201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1724201,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 84433;

-- "Cookie" McWeaksouce
UPDATE creature_template SET MovementType = 0 WHERE entry = 17246;
DELETE FROM creature_template_addon WHERE entry = 17246;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17246,0,0,0,16,10,0,NULL);
DELETE FROM creature_addon WHERE guid = 61976;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(61976,0,0,0,16,0,0,NULL);

-- Priestess Kyleen Il'dinare
UPDATE creature_template SET MovementType = 2 WHERE entry = 17241;
DELETE FROM creature_movement_template WHERE entry = 17241;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17241,1,-1953.38,-11835.4,56.0449, 5000, 1724101,1.204277, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1724101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1724101,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 84414;

-- Magwin
UPDATE creature_template SET MovementType = 0 WHERE entry = 17312;
DELETE FROM creature_template_addon WHERE entry = 17312;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17312,0,0,1,16,10,0,NULL);
DELETE FROM creature_addon WHERE guid = 62090;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(62090,0,3,1,16,0,0,NULL);

-- Diktynna
UPDATE creature_template SET MovementType = 2 WHERE entry = 17101;
DELETE FROM creature_movement_template WHERE entry = 17101;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17101,1,-1960.18,-11824.4,57.2607, 5000, 1710101,0.296706, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1710101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1710101,0,1,21,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 82949;

-- Acteon
UPDATE creature_template SET MovementType = 2 WHERE entry = 17110;
DELETE FROM creature_movement_template WHERE entry = 17110;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17110,1,-1959.62,-11820.9,59.1905, 5000, 1711001,6.230825, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1711001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1711001,0,1,21,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 59517;

-- Daedal
UPDATE creature_template SET MovementType = 2 WHERE entry = 17215;
DELETE FROM creature_movement_template WHERE entry = 17215;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17215,1,-1960.45,-11822.9,58.0856, 5000, 1721501,0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1721501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1721501,0,1,21,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 61739;

-- Anchorite Fateema
UPDATE creature_template SET MovementType = 2 WHERE entry = 17214;
DELETE FROM creature_movement_template WHERE entry = 17214;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17214,1,-1960.05,-11819.7,59.654, 5000, 1721401,6.091199, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1721401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1721401,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 61738;

-- High Chief Stillpine
UPDATE creature_template SET MovementType = 0 WHERE entry = 17440;
DELETE FROM gossip_menu WHERE entry = 7434 AND text_id = 9145;
DELETE FROM gossip_menu WHERE entry = 7434 AND text_id = 9146;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7434, 9145, 0, 1072),
(7434, 9146, 0, 1074); 
-- missing npc_text added
DELETE FROM npc_text WHERE ID IN (9145,9146);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(9145, '[In broken Common] It is time celebrate we do.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(9146, 'Promised One, do you remember us? Do you recall the prophecy of Kurz? This moment was pre-ordained. You have done what you were put on this world to do.$B$B<High Chief Stillpine bows before you.>$B$BDraenei will always be welcome among my people.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Princess Stillpine
-- Nothin to add

-- Stillpine the Younger
UPDATE creature_template SET MovementType = 0 WHERE entry = 17445;

-- Kurz the Revelator
-- waypoints need to be moved into creature_movement - not a unique npc
UPDATE creature_template SET MovementType = 0 WHERE entry = 17443;
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE id = 17443;
DELETE FROM creature_movement_template WHERE entry = 17443;
DELETE FROM creature_movement WHERE id = 84411;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(84411,1,-3398.19,-12412.1,19.1152, 45000, 0,1.62316, 0, 0),
(84411,2,-3398.19,-12412.1,19.1152, 15000, 1744301,1.62316, 0, 0),
(84411,3,-3398.19,-12412.1,19.1152, 360000, 0,1.62316, 0, 0),
(84411,4,-3398.19,-12412.1,19.1152, 360000, 0,1.62316, 0, 0);

-- Exarch Menelaous
UPDATE creature_template SET MovementType = 2 WHERE entry = 17116;
DELETE FROM creature_movement_template WHERE entry = 17116;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17116,1,-1958.48,-11822.3,58.5524, 6000, 1711601,0.122173, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1711601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1711601,0,1,21,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 59519;
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 7370 AND text_id = 9153;
DELETE FROM gossip_menu WHERE entry = 7370 AND text_id = 9154;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7370, 9153, 0, 1072),
(7370, 9154, 0, 1074); 
-- missing npc_text added
DELETE FROM npc_text WHERE ID IN (9153,9154);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(9153, 'We are here to support our hero!', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(9154, 'I wouldn\'t have missed this for the world, $n.$B$B<Exarch Menelaous hugs you.>$B$BWe are proud of you.', '', 0, 1, 1, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Prophet Velen
UPDATE creature_template SET MovementType = 0 WHERE entry = 17468;
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 7414 AND text_id = 9162;
DELETE FROM gossip_menu WHERE entry = 7414 AND text_id = 9163;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7414, 9162, 0, 1072),
(7414, 9163, 0, 1074); 
-- missing npc_text added
DELETE FROM npc_text WHERE ID IN (9162,9163);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(9162, 'The draenei champion walks among us. This is a celebration for the savior of Azuremyst and Bloodmyst!', '', 0, 1, 1, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(9163, 'This is all for you, $n. You did this. You saved all of these people and thousands more.$B$BYou have risen above the strife and tragedy of this world and in doing so, elevated all of us with you.$B$BYou have done so much - more than many could do in ten lifetimes - yet your life has just begun. If only we had a thousand heroes like you.$B$BBut listen well, $n. Your destiny lies in the Outland. I have seen it in visions, a prophecy yet untold.$B$BFind our people, $n. Find them and bring them home...', '', 0, 1, 1, 1, 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Admiral Odesyus
UPDATE creature_template SET MovementType = 2 WHERE entry = 17240;
DELETE FROM creature_movement_template WHERE entry = 17240;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17240,1,-1951.64,-11834.5,56.4436, 5000, 1724001,1.151917, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1724001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1724001,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 61965;
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 7399 AND text_id = 9148;
DELETE FROM gossip_menu WHERE entry = 7399 AND text_id = 9149;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7399, 9148, 0, 1072), 
(7399, 9149, 0, 1074); 
-- missing npc_text added
DELETE FROM npc_text WHERE ID IN (9148,9149);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(9148, 'A glorious victory!', '', 0, 1, 5, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(9149, 'You\'ve come a long way, $n. A long way indeed... But I knew you were destined for great things.  We all knew. All hail $n!$B$BAnd thanks again for taking care of our gnome problem...', '', 0, 1, 1, 1, 71, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Injured Night Elf Priestess
UPDATE creature_template SET GossipMenuId = 7543, MovementType = 0 WHERE entry = 17117;
DELETE FROM creature_template_addon WHERE entry = 17117;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17117,0,0,1,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid = 84578;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(84578,0,3,1,0,0,0,NULL);
DELETE FROM gossip_menu WHERE entry = 7543;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7543, 9151, 0, 1072),
(7543, 9152, 754301, 1074); 
DELETE FROM dbscripts_on_gossip WHERE id = 754301; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(754301,0,0,0,0,0,0,0x02,2000000902,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000902;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000902,'%s hugs you.',0,2,0,0,NULL);
-- missing npc_text added
DELETE FROM npc_text WHERE ID IN (9151,9152);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(9151, 'I am here to give thanks to the one that saved my life.', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(9152, 'You probably don\'t remember me, but you saved my life. I have only recently become healthy enough to walk on my own.$B$BI wanted to thank you for what you did for me and apologize for what I may have said... Thank you, $n. May Elune always watch over you.', '', 0, 1, 1, 1, 2, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Cowlen
UPDATE creature_template SET MovementType = 2 WHERE entry = 17311;
DELETE FROM creature_movement_template WHERE entry = 17311;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17311,1,-1956.7,-11839.5,54.7308, 5000, 1731101,1.256637, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1731101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1731101,0,1,71,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- static spawn must have MovementType = 0
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 84415;
DELETE FROM creature_template_addon WHERE entry = 17311;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17311,0,0,1,16,0,0,NULL);
DELETE FROM creature_addon WHERE guid = 84415;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(84415,0,1,1,16,0,0,NULL);
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 7403 AND text_id = 9158;
DELETE FROM gossip_menu WHERE entry = 7403 AND text_id = 9159;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7403, 9158, 0, 1072),
(7403, 9159, 0, 1074); 
-- missing npc_text added
DELETE FROM npc_text WHERE ID IN (9158,9159);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(9158, 'We have traveled far to celebrate the hero of the draenei people.', '', 0, 1, 1, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(9159, 'I would have traveled across the Great Sea to see you, friend. We will never forget what you did for us.', '', 0, 1, 1, 2, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Kessel
UPDATE creature_template SET MovementType = 0 WHERE entry = 17649;
DELETE FROM creature_template_addon WHERE entry = 17649;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17649,0,0,1,1,10,0,NULL);
DELETE FROM creature_addon WHERE guid = 63372;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(63372,0,0,1,1,0,0,NULL);
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 7462 AND text_id = 9155;
DELETE FROM gossip_menu WHERE entry = 7462 AND text_id = 9156;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7462, 9155, 0, 1072), 
(7462, 9156, 0, 1074); 
-- missing npc_text added
DELETE FROM npc_text WHERE ID IN (9155,9156);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(9155, 'I have come to support the draenei champion!', '', 0, 1, 5, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(9156, 'Good to see you again, $n. I brought a friend with me. She really wanted to see you.$B$B<Kessel laughs.>', '', 0, 1, 1, 11, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Objects req. for q.9759 'Ending their world' 
DELETE FROM gameobject WHERE guid BETWEEN 150000 AND 150050;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- first group of barrows
-- 182088 'Draenei Explosives'
( 150001, 182088, 530, 1,-1954.112,-10653.75,110.21   , 1.658062,0,0,0.737277,0.6755905, -300, 255, 1),
( 150002, 182088, 530, 1,-1955.339,-10654.12,110.5499 , 5.061456,0,0,-0.573576,0.8191524, -300, 255, 1),
( 150003, 182088, 530, 1,-1956.608,-10654.4 ,110.9519 , 2.879789,0,0,0.9914446,0.1305283, -300, 255, 1),
( 150004, 182088, 530, 1,-1956.081,-10655.89,110.826  , 1.640607,0,0,0.7313528,0.6819993, -300, 255, 1),
( 150005, 182088, 530, 1,-1954.59 ,-10655.84,110.4045 , 2.740162,0,0,0.9799242,0.1993704, -300, 255, 1),
-- first group of fires
-- 182090
( 150006, 182090, 530, 1,-1916.393,-10679.92,144.6123 ,1.727875,0,0,0.7604055,0.6494485, -600, 255, 1),
( 150007, 182090, 530, 1,-1908.393,-10677.59,144.2352 ,5.707228,0,0,-0.2840147,0.9588199, -600, 255, 1),
( 150008, 182090, 530, 1,-1934.61,-10670.4,143.083    ,4.555311,0,0,-0.7604055,0.6494485, -600, 255, 1),
( 150009, 182090, 530, 1,-1927.865,-10671.92,134.7358 ,2.548179,0,0,0.9563046,0.2923723, -600, 255, 1),
( 150010, 182090, 530, 1,-1934.524,-10668.89,130.337  ,1.692969,0,0,0.7489557,0.6626201, -600, 255, 1),
( 150011, 182090, 530, 1,-1958.8  ,-10653.84,111.7486 ,5.864307,0,0,-0.2079115,0.9781476, -600, 255, 1),
( 150012, 182090, 530, 1,-1960.864,-10657.38,122.376  ,2.146753,0,0,0.8788166,0.4771597, -600, 255, 1),
( 150013, 182090, 530, 1,-1939.568,-10663.65,153.4156 ,1.710422,0,0,0.7547092,0.6560594, -600, 255, 1),
( 150014, 182090, 530, 1,-1958.072,-10659.34,146.4452 ,1.815142,0,0,0.7880106,0.6156617, -600, 255, 1),
( 150015, 182090, 530, 1,-1948.237,-10655.24,110.4299 ,4.555311,0,0,-0.7604055,0.6494485 , -600, 255, 1),
-- 182089
( 150016, 182089, 530, 1,-1950.958,-10653.9 ,131.4468 ,3.961899,0,0,-0.9170599,0.3987495 , -600, 255, 1), 
( 150017, 182089, 530, 1,-1951.899,-10652.74,111.1061 ,2.18166 ,0,0,0.8870106,0.4617491, -600, 255, 1),
( 150018, 182089, 530, 1,-1951.811,-10655.09,118.384  ,0.2443456,0,0,0.1218691,0.9925462, -600, 255, 1),
( 150019, 182089, 530, 1,-1952.615,-10657.6 ,124.4878 ,1.780234,0,0,0.7771454,0.6293211, -600, 255, 1),
( 150020, 182089, 530, 1,-1943.769,-10651.64,126.5673 ,1.483528,0,0,0.6755896,0.7372779, -600, 255, 1),
( 150021, 182089, 530, 1,-1943.539,-10656.17,116.0825 ,0.1919852,0,0,0.09584522,0.9953963, -600, 255, 1),
( 150022, 182089, 530, 1,-1949.927,-10650.49,138.9217 ,1.274088,0,0,0.5948219,0.8038574, -600, 255, 1),
( 150023, 182089, 530, 1,-1943.67 ,-10652.68,144.157  ,4.886924,0,0,-0.642787,0.766045, -600, 255, 1),
( 150024, 182089, 530, 1,-1940.965,-10661.87,140.1596 ,4.136433,0,0,-0.8788166,0.4771597, -600, 255, 1),
( 150025, 182089, 530, 1,-1934.876,-10666.56,137.6288 ,4.97419 ,0,0,-0.6087608,0.7933538, -600, 255, 1),

-- second group of barrows
-- 182091 'Draenei Explosives'
( 150026, 182091, 530, 1,-1913.208 , -10583.15 , 178.6601 ,3.961899,0 , 0 , -0.9170599 , 0.3987495, -300, 255, 1),
( 150027, 182091, 530, 1,-1914.451 , -10584.71 , 178.7834 ,6.19592 ,0 , 0 , -0.04361916 , 0.9990482, -300, 255, 1),
( 150028, 182091, 530, 1,-1914.493 , -10583.18 , 178.3964 ,5.044002,0 , 0 , -0.5807028 , 0.8141156, -300, 255, 1),
( 150029, 182091, 530, 1,-1913.126 , -10584.52 , 179.1008 ,2.548179,0 , 0 , 0.9563046 , 0.2923723, -300, 255, 1),
( 150030, 182091, 530, 1,-1912.281 , -10582    , 178.7522 ,5.305802,0 , 0 , -0.469471 , 0.8829479 , -300, 255, 1), 
-- second group of fires
-- 182090
( 150031, 182090, 530, 1,-1911.359 , -10580.58 , 178.9996 ,4.206246,0 , 0 , -0.8616285 , 0.5075394, -600, 255, 1),
( 150032, 182090, 530, 1,-1904.622 , -10587.45 , 192.4867 ,3.124123,0 , 0 , 0.9999619 , 0.008734641, -600, 255, 1),
( 150033, 182090, 530, 1,-1923.83  , -10598.51 , 188.1161 ,3.612838,0 , 0 , -0.9723692 , 0.2334484, -600, 255, 1),
( 150034, 182090, 530, 1,-1905.41  , -10604.16 , 223.4696 ,3.996807,0 , 0 , -0.9099607 , 0.4146944, -600, 255, 1),
( 150035, 182090, 530, 1,-1903.758 , -10593.91 , 200.8576 ,1.640607,0 , 0 , 0.7313528 , 0.6819993, -600, 255, 1),
( 150036, 182090, 530, 1,-1874.945 , -10597.42 , 220.3495 ,5.235988,0 , 0 , -0.5 , 0.8660254, -600, 255, 1),
( 150037, 182090, 530, 1,-1869.706 , -10580.35 , 185.9308 ,1.186823,0 , 0 , 0.5591927 , 0.8290377, -600, 255, 1),
( 150038, 182090, 530, 1,-1884.538 , -10534.48 , 192.8828 ,3.38594 ,0 , 0 , -0.9925461 , 0.12187, -600, 255, 1),
( 150039, 182090, 530, 1,-1919.978 , -10615.05 , 225.3603 ,4.782203,0 , 0 , -0.6819983 , 0.7313538, -600, 255, 1),
( 150040, 182090, 530, 1,-1932.259 , -10613.42 , 192.5991 ,3.560473,0 , 0 , -0.9781475 , 0.2079121, -600, 255, 1),
-- 182089
( 150041, 182089, 530, 1,-1911.578 , -10584.62 , 180.2037 ,4.555311,0 , 0 , -0.7604055 , 0.6494485, -600, 255, 1),
( 150042, 182089, 530, 1,-1908.222 , -10581.13 , 181.2174 ,0.90757 ,0 , 0 , 0.4383707 , 0.8987942, -600, 255, 1),
( 150043, 182089, 530, 1,-1913.968 , -10593.82 , 184.8842 ,3.909541,0 , 0 , -0.9271832 , 0.3746083, -600, 255, 1),
( 150044, 182089, 530, 1,-1899.361 , -10583.72 , 190.8016 ,0.261798,0 , 0 , 0.1305256 , 0.9914449, -600, 255, 1),
( 150045, 182089, 530, 1,-1914.107 , -10593.02 , 179.2118 ,0.59341 ,0 , 0 , 0.2923708 , 0.956305, -600, 255, 1),
( 150046, 182089, 530, 1,-1912.097 , -10599.92 , 211.5631 ,3.281239,0 , 0 , -0.9975634 , 0.06976615, -600, 255, 1),
( 150047, 182089, 530, 1,-1914.138 , -10591.11 , 192.886  ,4.363324,0 , 0 , -0.8191519 , 0.5735767, -600, 255, 1),
( 150048, 182089, 530, 1,-1889.362 , -10571.98 , 179.5392 ,5.393069,0 , 0 , -0.4305105 , 0.9025856, -600, 255, 1),
( 150049, 182089, 530, 1,-1887.081 , -10536.76 , 178.8841 ,3.42085 ,0 , 0 , -0.9902678 , 0.1391754, -600, 255, 1),
( 150050, 182089, 530, 1,-1901.158 , -10596.18 , 206.6687 ,5.340709,0 , 0 , -0.45399 , 0.8910068, -600, 255, 1);


