UPDATE dbscript_string SET broadcast_text_id=19171 WHERE entry=2000005790;
UPDATE dbscript_string SET broadcast_text_id=19152 WHERE entry=2000005437;
UPDATE dbscript_string SET broadcast_text_id=1217 WHERE entry=2000009031;
UPDATE dbscript_string SET content_default='Hmm...', broadcast_text_id=1218 WHERE entry=2000009032;
UPDATE dbscript_string SET broadcast_text_id=147 WHERE entry=2000001908;
UPDATE dbscript_string SET broadcast_text_id=17140 WHERE entry=2000003111;
UPDATE dbscript_string SET broadcast_text_id=17163 WHERE entry=2000003120;
UPDATE dbscript_string SET broadcast_text_id=4695 WHERE entry=2000009074;
UPDATE dbscript_string SET broadcast_text_id=4690 WHERE entry=2000009064;
UPDATE dbscript_string SET broadcast_text_id=4669 WHERE entry=2000009060;
UPDATE dbscript_string SET broadcast_text_id=4667 WHERE entry=2000009058;
UPDATE dbscript_string SET broadcast_text_id=13601 WHERE entry=2000000657;
UPDATE dbscript_string SET broadcast_text_id=3127 WHERE entry=2000000792;
UPDATE dbscript_string SET content_default='NOOOOOOOOOO!!', broadcast_text_id=16737 WHERE entry=2000005415;
UPDATE dbscript_string SET broadcast_text_id=24425 WHERE entry=2000005200;
UPDATE dbscript_string SET broadcast_text_id=20274 WHERE entry=2000001518;
UPDATE dbscript_string SET broadcast_text_id=20281 WHERE entry=2000001512;
UPDATE dbscript_string SET broadcast_text_id=20325 WHERE entry=2000005902;

DELETE FROM dbscript_string WHERE entry IN (2000005542,2000005546,2000005554);
INSERT INTO dbscript_string (entry, content_default, `type`, broadcast_text_id, `comment`) VALUES
(2000005542, 'By the Light! What is that thing?', 1, 20815, ''),
(2000005546, 'Hurry past this foul contraption!', 1, 20817, ''),
(2000005554, 'That machine is too powerful for us alone, quickly, before we are spotted!', 1, 20818, '');
DELETE FROM dbscript_random_templates WHERE id=10156 AND target_id IN (2000005542,2000005546,2000005554);
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(10156, 0, 2000005542, 8, 'Doomwalker acknowledgment 6'),
(10156, 0, 2000005546, 8, 'Doomwalker acknowledgment 7'),
(10156, 0, 2000005554, 8, 'Doomwalker acknowledgment 8');

UPDATE dbscript_string SET broadcast_text_id=20819 WHERE entry=2000005540;
UPDATE dbscript_string SET broadcast_text_id=19176 WHERE entry=2000005795;

-- there was some mistake made here... 2000001228 was used by both movement script 1922303 and gossip script 476301
UPDATE dbscripts_on_creature_movement SET dataint4=2000001348 WHERE id=1922303 AND dataint4=2000001228;
DELETE FROM dbscript_string WHERE entry=2000001348;
INSERT INTO dbscript_string (entry, content_default, emote, broadcast_text_id, `comment`) VALUES
(2000001348, 'Grok not eat all of the apples.  See, der one basket left!', 6, 20789, 'Grok (Entry: 22940)');
UPDATE dbscript_string SET broadcast_text_id=20788 WHERE entry=2000001225;
UPDATE dbscript_string SET broadcast_text_id=20787 WHERE entry=2000001227;

UPDATE dbscript_string SET broadcast_text_id=19389 WHERE entry=2000005423;
UPDATE dbscript_string SET broadcast_text_id=16684 WHERE entry=2000005482;
UPDATE dbscript_string SET broadcast_text_id=22449 WHERE entry=2000005801;
UPDATE dbscript_string SET broadcast_text_id=15703 WHERE entry=2000009011;
UPDATE dbscript_string SET content_default='I win!!', broadcast_text_id=6808 WHERE entry=2000000869;
UPDATE dbscript_string SET broadcast_text_id=20115 WHERE entry=2000001361;
UPDATE dbscript_string SET broadcast_text_id=18676 WHERE entry=2000001343;
UPDATE dbscript_string SET broadcast_text_id=18677 WHERE entry=2000001344;
UPDATE dbscript_string SET broadcast_text_id=15487 WHERE entry=2000007704;
UPDATE dbscript_string SET broadcast_text_id=21807 WHERE entry=2000001550;
UPDATE dbscript_string SET broadcast_text_id=17144 WHERE entry=2000003115;
UPDATE dbscript_string SET content_default='%s laughs.', broadcast_text_id=17137 WHERE entry=2000003108;
UPDATE dbscript_string SET content_default='%s laughs.', broadcast_text_id=17306 WHERE entry=2000003113;
UPDATE dbscript_string SET content_default='%s smiles.', broadcast_text_id=1418 WHERE entry=2000000215;

UPDATE quest_template SET CompleteScript=0 WHERE entry=4321;
DELETE FROM dbscript_string WHERE entry=2000000030;
DELETE FROM dbscripts_on_quest_start WHERE id=4321;
-- moved from end script
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(4321, 1000, 0, 21, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - active'),
(4321, 2000, 0, 9, 63180, 30, 0, 0, 0, 0, 0, 0, 0, 0, -6034.46, -1014.57, -216.735, 6.07572, 0, ''),
(4321, 3000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.36912, 0, ''),
(4321, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 2000000540, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4321, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 2000000541, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4321, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 2000000542, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4321, 12000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.872665, 0, ''),
(4321, 13000, 0, 21, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - unactive');
-- from old start script
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(4321, 0, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(4321, 12000, 0, 7, 4321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4321, 12000, 0, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added');
DELETE FROM dbscripts_on_quest_end WHERE id=4321;

-- no text is actually used here
DELETE FROM dbscripts_on_quest_start WHERE id=3982 AND dataint=2000000243;
DELETE FROM dbscript_string WHERE entry=2000000243;

UPDATE gossip_menu_option SET option_broadcast_text=5384, action_menu_id=2361 WHERE menu_id=2208 AND id=1;
UPDATE gossip_menu_option SET option_broadcast_text=5243 WHERE menu_id=2208 AND id=0;
-- script used for both gossip menus 2207 (Horde) and 2208 (Alliance)
DELETE FROM dbscripts_on_gossip WHERE id=2208 AND dataint=2000000323;
INSERT INTO dbscripts_on_gossip (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000000323, 0, 0, 0, 0, 0, 0, 0, 4, '');
DELETE FROM dbscript_string WHERE entry=2000000323;
INSERT INTO dbscript_string (entry, content_default, broadcast_text_id) VALUES (2000000323, 'Here is a beacon for you, $N.  You must keep it in your possession if you are to find the corrupted items we will need.', 5244);
UPDATE dbscripts_on_gossip SET condition_id=3 WHERE dataint=2000000318 AND id=2208;
UPDATE dbscript_string SET content_default='Here is a beacon for you, $N.  You must keep it in your possession if you are to find the corrupted items we will need.', broadcast_text_id=5245 WHERE entry=2000000318;

UPDATE dbscript_string SET content_default='%s points to the sky above.', `type`=2, broadcast_text_id=20157 WHERE entry=2000000022;
UPDATE dbscript_string SET content_default='More Minions of Terokk are coming!', broadcast_text_id=20266 WHERE entry=2000000023;
UPDATE dbscript_string SET content_default='The invaders persist! Hold them off!', broadcast_text_id=20267 WHERE entry=2000000024;

-- this complete script is not even linked to any quests and the texts are all wrong...
DELETE FROM dbscripts_on_quest_end WHERE id=993;
DELETE FROM dbscript_string WHERE entry IN (2000000050,2000000051,2000000052,2000000053,2000000054);

UPDATE dbscript_string SET broadcast_text_id=4399 WHERE entry=2000001342;
UPDATE dbscript_string SET broadcast_text_id=89 WHERE entry=2000000186;
UPDATE dbscript_string SET broadcast_text_id=984 WHERE entry=2000005779;
UPDATE dbscript_string SET broadcast_text_id=7202 WHERE entry=2000005630;
UPDATE dbscript_string SET broadcast_text_id=15348 WHERE entry=2000000615;
UPDATE dbscript_string SET broadcast_text_id=1476 WHERE entry=2000000166;
UPDATE dbscript_string SET broadcast_text_id=428 WHERE entry=2000009023;
UPDATE dbscript_string SET broadcast_text_id=6405 WHERE entry=2000005032;
UPDATE dbscript_string SET broadcast_text_id=263 WHERE entry=2000000150;
UPDATE dbscript_string SET broadcast_text_id=4627 WHERE entry=2000003214;
UPDATE dbscript_string SET broadcast_text_id=6100 WHERE entry=2000003212;
UPDATE dbscript_string SET broadcast_text_id=6099 WHERE entry=2000003211;
UPDATE dbscript_string SET broadcast_text_id=6098 WHERE entry=2000003210;
UPDATE dbscript_string SET broadcast_text_id=6091 WHERE entry=2000003206;
UPDATE dbscript_string SET broadcast_text_id=6074 WHERE entry=2000003209;
UPDATE dbscript_string SET broadcast_text_id=6073 WHERE entry=2000003208;
UPDATE dbscript_string SET broadcast_text_id=6072 WHERE entry=2000003207;
UPDATE dbscript_string SET broadcast_text_id=6025 WHERE entry=2000003205;
UPDATE dbscript_string SET broadcast_text_id=6020 WHERE entry=2000003201;
UPDATE dbscript_string SET broadcast_text_id=6005 WHERE entry=2000003200;
UPDATE dbscript_string SET broadcast_text_id=5968 WHERE entry=2000003203;
UPDATE dbscript_string SET broadcast_text_id=5967 WHERE entry=2000003204;
UPDATE dbscript_string SET broadcast_text_id=5966 WHERE entry=2000003202;
UPDATE dbscript_string SET broadcast_text_id=4628 WHERE entry=2000003215;
UPDATE dbscript_string SET broadcast_text_id=3503 WHERE entry=2000003218;
UPDATE dbscript_string SET broadcast_text_id=3502 WHERE entry=2000003217;
UPDATE dbscript_string SET broadcast_text_id=3501 WHERE entry=2000003216;
UPDATE dbscript_string SET broadcast_text_id=2682 WHERE entry=2000003224;
UPDATE dbscript_string SET broadcast_text_id=2681 WHERE entry=2000003223;
UPDATE dbscript_string SET broadcast_text_id=2666 WHERE entry=2000003239;
UPDATE dbscript_string SET broadcast_text_id=2665 WHERE entry=2000003238;
UPDATE dbscript_string SET broadcast_text_id=2648 WHERE entry=2000003222;
UPDATE dbscript_string SET broadcast_text_id=2647 WHERE entry=2000003221;
UPDATE dbscript_string SET broadcast_text_id=1543 WHERE entry=2000002003;
UPDATE dbscript_string SET broadcast_text_id=1542 WHERE entry=2000002002;
UPDATE dbscript_string SET broadcast_text_id=1541 WHERE entry=2000002001;
UPDATE dbscript_string SET broadcast_text_id=1540 WHERE entry=2000002000;
UPDATE dbscript_string SET broadcast_text_id=1160 WHERE entry=2000010011;
UPDATE dbscript_string SET broadcast_text_id=1115 WHERE entry=2000003213;
UPDATE dbscript_string SET broadcast_text_id=860 WHERE entry=2000003219;
UPDATE dbscript_string SET broadcast_text_id=793 WHERE entry=2000003220;
UPDATE dbscript_string SET broadcast_text_id=14807 WHERE entry=2000001490;
UPDATE dbscript_string SET broadcast_text_id=20497 WHERE entry=2000001636;
UPDATE dbscript_string SET broadcast_text_id=27703 WHERE entry=2000001181;
UPDATE dbscript_string SET broadcast_text_id=27704 WHERE entry=2000001183;
UPDATE dbscript_string SET broadcast_text_id=27705 WHERE entry=2000001182;
UPDATE dbscript_string SET broadcast_text_id=27706 WHERE entry=2000001180;
UPDATE dbscript_string SET broadcast_text_id=27707 WHERE entry=2000001184;
UPDATE dbscript_string SET broadcast_text_id=27708 WHERE entry=2000001185;
UPDATE dbscript_string SET broadcast_text_id=27709 WHERE entry=2000001188;
UPDATE dbscript_string SET broadcast_text_id=27710 WHERE entry=2000001186;
UPDATE dbscript_string SET broadcast_text_id=27711 WHERE entry=2000001187;
UPDATE dbscript_string SET broadcast_text_id=20153 WHERE entry=2000005694;
UPDATE dbscript_string SET broadcast_text_id=23042 WHERE entry=2000005545;
UPDATE dbscript_string SET broadcast_text_id=1476 WHERE entry=2000000166;
UPDATE dbscript_string SET broadcast_text_id=1159 WHERE entry=2000010010;

