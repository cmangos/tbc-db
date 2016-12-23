
-- FIX from UDB fixed for TBC-DB by Killerwife

-- To Catch A Thistlehead (q.10570) -H -A
-- Borak, Son of Oronok -- gossips update 
UPDATE gossip_menu_option SET action_script_id = 830101 WHERE menu_id = 8301 AND id = 1; -- he has more gossip scripts.
DELETE FROM npc_text WHERE ID IN (10375);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5) VALUES
(10375, 'You have it. Do not lose it again!', '', 0, 1.0,1,0,0,0,0,0);
DELETE FROM gossip_menu WHERE entry = 8311; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8311, 10375, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 8301 AND id = 2; 
INSERT INTO gossip_menu_option (menu_id, id, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(8301, 2, 'Borak, I need another bundle of bloodthistle.', 1, 1, 8311, 830102, 742);
DELETE FROM conditions WHERE condition_entry IN (740, 741, 742); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(740, 9, 10570, 0),
(741, 24, 30616, 1),
(742, -1, 740, 741);
DELETE FROM dbscripts_on_gossip WHERE id IN (8301, 830101, 830102); -- 8301 must be replaced by 830101 becouse he has more than 1 gossip script
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(830101,0,17,30639,1,0,0,0,0,0,0,0,0,0,0,0,'create item'),
(830102,0,17,30616,1,0,0,0,0,0,0,0,0,0,0,0,'create item');
-- quest
UPDATE creature_template SET FactionAlliance = 1701, FactionHorde = 1701, MovementType = 2, UnitFlags=UnitFlags | 33024 WHERE entry = 21409;
UPDATE creature_template SET FactionAlliance = 1701, FactionHorde = 1701, MovementType = 0, UnitFlags=UnitFlags | 32768, SpeedWalk = 1.125 WHERE entry = 21410;
DELETE FROM creature_template_addon WHERE entry = 21410;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(21410,19085,0,1,0,0,0,NULL);
DELETE FROM dbscripts_on_event WHERE id = 13888;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(13888,0,0,0,0,21293,100,3,2000005789,0,0,0,0,'Borak whisper'),
(13888,5,10,21409,200000,0,0,0,0,-4053.83,1463.1,86.3914,1.57,'summon Envoy Icarius'),
(13888,5,10,21410,200000,0,0,0,0,-4056.95,1463.31,86.4277,1.73,'summon Blood Lord Zarath'),
(13888,73,0,0,0,21293,100,3,2000005798,0,0,0,0,'Borak whisper attack');
-- update for Envoy Icarius <The Voice of Illidan> 
DELETE FROM creature_movement_template WHERE entry = 21409;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(21409,1,-4059.01,1511.73,90.81,4000,2140901,0,0,0,0,0,0,0,1.75,0,0),
(21409,2,-4059.01,1511.73,90.81,33000,2140902,0,0,0,0,0,0,0,4.92,0,0),
(21409,3,-4059.01,1511.73,90.81,7000,2140903,0,0,0,0,0,0,0,1.75,0,0),
(21409,4,-4056.57,1528.54,93.32,10000,2140904,0,0,0,0,0,0,0,1.75,0,0),
(21409,5,-4058.18,1518.63,91.80,0,0,0,0,0,0,0,0,0,4.25,0,0),
(21409,6,-4067.76,1513.78,91.64,0,0,0,0,0,0,0,0,0,3.33,0,0),
(21409,7,-4091.44,1513.13,94.36,0,0,0,0,0,0,0,0,0,2.89,0,0),
(21409,8,-4110.70,1517.99,97.58,0,0,0,0,0,0,0,0,0,3.25,0,0),
(21409,9,-4116.96,1517.37,98.74,0,0,0,0,0,0,0,0,0,3.485,0,0),
(21409,10,-4131.20,1514.15,101.14,0,0,0,0,0,0,0,0,0,3.08,0,0),
(21409,11,-4140.99,1514.58,103.36,1000,1,0,0,0,0,0,0,0,2.79,0,0); -- despawn self
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2140901, 2140902, 2140903, 2140904); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2140901,0,31,21410,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2140901,1,0,0,0,0,0,0,2000005790,0,0,0,0,0,0,0,''),
(2140902,0,31,21410,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2140902,1,0,0,0,21410,20,0x04,2000005791,0,0,0,0,0,0,0,'force 21410 to: say'),
(2140902,1,36,0,0,21410,20,0x01,0,0,0,0,0,0,0,0,'21409 facing'),
(2140902,1,36,0,0,21410,20,0x03,0,0,0,0,0,0,0,0,'force 21410 facing'),
(2140902,5,0,0,0,0,0,0,2000005792,0,0,0,0,0,0,0,''),
(2140902,5,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2140902,7,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2140902,13,0,0,0,21410,20,0x04,2000005793,0,0,0,0,0,0,0,'force 21410 to: say'),
(2140902,19,0,0,0,0,0,0,2000005794,0,0,0,0,0,0,0,''),
(2140902,19,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2140902,22,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2140902,27,0,0,0,21410,20,0x04,2000005795,0,0,0,0,0,0,0,'force 21410 to: say'),
(2140902,31,18,0,0,21410,20,0x04,0,0,0,0,0,0,0,0,'despawn 21410'),
(2140903,1,0,0,0,0,0,0,2000005796,0,0,0,0,0,0,0,''),
(2140903,3,1,275,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2140903,6,0,0,0,0,0,0,2000005797,0,0,0,0,0,0,0,''),
(2140903,6,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2140903,6,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2140904,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2140904,2,0,0,0,0,0,0,2000005799,0,0,0,0,0,0,0,''),
(2140904,2,5,46,256,0,0,0,0,0,0,0,0,0,0,0,'Change flag ooc attackable'),
(2140904,2,40,0,0,184798,50,7,0,0,0,0,0,0,0,0,'despawn object'),
(2140904,7,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(2140904,8,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
DELETE FROM creature_linking_template WHERE entry = 21410;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(21410, 530, 21409, 518, 20);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005789 AND 2000005799;
INSERT INTO db_script_string (entry,type,emote, content_default) VALUES
(2000005789,4,0, 'Hide! Hide before they see you! Back up!'),
(2000005790,0,0, 'Halt!'),
(2000005791,0,1, 'What is it, my lord?'),
(2000005792,0,1, 'Zarath you must return to the Black Temple at once! I... I seem to have misplaced Lord Illidan\'s orders. Quickly!'),
(2000005793,0,1, 'My lord, surely you do not expect me to leave you unattended. Lord Illidan would have my head if anything were to happen to you.'),
(2000005794,0,1, 'Zarath, I am perfectly capable of making it up this road to Eclipse Point. If we do not deliver the missive, Lord Illidan will have both of our heads! You are dismissed!'),
(2000005795,0,1, 'As you wish, my lord.'),
(2000005796,0,1, 'Ah, sweet, sweet bloodthistle... Probably left behind by one of those filthy addicts at Eclipse Point.'),
(2000005797,0,11, 'Their loss is most definitely my gain...'),
(2000005798,4,0, 'The time to strike is at hand. Terminate Icarius.'),
(2000005799,2,0, '%s puts the bundle of bloodthistle in his robe.');

