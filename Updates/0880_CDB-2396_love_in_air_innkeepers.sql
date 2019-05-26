DELETE FROM game_event_creature_data WHERE guid IN (79841,1745,46341,4661,24772,38407,46343,37069,32451,42181,29239,28304,14986,30676,50059,42755,22681,33073,7671,14139,13550,24774,29233,28340,50060,21575,80346,66978,10076,4208,537,8219,199,9460,15326,92923,54188,28474,17865,15287,92884,11273,6889,31947,690);
/* Placing heart above innkeepers for the duration of the festival */
INSERT INTO game_event_creature_data (guid, entry_id, modelid, equipment_id, spell_start, spell_end, event) VALUES
-- Capitals
(79841, 0, 0, 0, 27654, 0, 8), -- Allison
(1745, 0, 0, 0, 27654, 0, 8), -- Firebrew
(46341, 0, 0, 0, 27654, 0, 8), -- Saelienne
(4661, 0, 0, 0, 27654, 0, 8), -- Gryshka
(24772, 0, 0, 0, 27654, 0, 8), -- Pala
(38407, 0, 0, 0, 27654, 0, 8), -- Norman

-- Kalimdor
(46343, 0, 0, 0, 27654, 0, 8), -- Keldamyr
(37069, 0, 0, 0, 27654, 0, 8), -- Shaussiy
(32451, 0, 0, 0, 27654, 0, 8), -- Kimlya
(42181, 0, 0, 0, 27654, 0, 8), -- Vizzie
(29239, 0, 0, 0, 27654, 0, 8), -- Faralia
(28304, 0, 0, 0, 27654, 0, 8), -- Lyshaerya
(14986, 0, 0, 0, 27654, 0, 8), -- Wiley
(30676, 0, 0, 0, 27654, 0, 8), -- Janene
(50059, 0, 0, 0, 27654, 0, 8), -- Shyria
(42755, 0, 0, 0, 27654, 0, 8), -- Calandrath
(22681, 0, 0, 0, 27654, 0, 8), -- Fizzgrimble
(33073, 0, 0, 0, 27654, 0, 8), -- Kaylisk
(7671, 0, 0, 0, 27654, 0, 8), -- Grosk
(14139, 0, 0, 0, 27654, 0, 8), -- Booran Plainswind
(13550, 0, 0, 0, 27654, 0, 8), -- Byula
(24774, 0, 0, 0, 27654, 0, 8), -- Kauth
(29233, 0, 0, 0, 27654, 0, 8), -- Jayka
(28340, 0, 0, 0, 27654, 0, 8), -- Sikewa
(50060, 0, 0, 0, 27654, 0, 8), -- Greul
(21575, 0, 0, 0, 27654, 0, 8), -- Abeqwa

-- EK
(80346, 0, 0, 0, 27654, 0, 8), -- Farley
(66978, 0, 0, 0, 27654, 0, 8), -- Heather
(10076, 0, 0, 0, 27654, 0, 8), -- Brianna
(4208, 0, 0, 0, 27654, 0, 8), -- Trelayne
(537, 0, 0, 0, 27654, 0, 8), -- Skindle
(8219, 0, 0, 0, 27654, 0, 8), -- Hearthstove
(199, 0, 0, 0, 27654, 0, 8), -- Belm
(9460, 0, 0, 0, 27654, 0, 8), -- Helbrek
(15326, 0, 0, 0, 27654, 0, 8), -- Anderson
(92923, 0, 0, 0, 27654, 0, 8), -- Thulfram
(54188, 0, 0, 0, 27654, 0, 8), -- Jessica Chambers
(28474, 0, 0, 0, 27654, 0, 8), -- Renee
(17865, 0, 0, 0, 27654, 0, 8), -- Bates
(15287, 0, 0, 0, 27654, 0, 8), -- Shay
(92884, 0, 0, 0, 27654, 0, 8), -- Lard
(11273, 0, 0, 0, 27654, 0, 8), -- Adegwa
(6889, 0, 0, 0, 27654, 0, 8), -- Shul'kar
(31947, 0, 0, 0, 27654, 0, 8), -- Karakul
(690, 0, 0, 0, 27654, 0, 8); -- Thulbek

-- Fixing Innkeepers Gossip

DELETE FROM gossip_menu WHERE entry=7057;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES (7057, 8319, 0, 0); -- Adding horde gossip menu for gifts gossip

-- Main Menu
-- Adjusting options to conform to 0- Trick or treat, 1- Make inn home, 2- Heart/love, 3-What can do at inn, 4- Browse goods
-- Capitals
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 342 AND option_text= 'Make this inn your home.'; -- Innkeeper Allison
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 1290 AND option_text= 'Make this inn your home.'; -- Innkeeper Gryshka
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 1581 AND option_text= 'Make this inn your home.'; -- Innkeeper Saelienne
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 344 AND option_text= 'Make this inn your home.'; -- Innkeeper Pala
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 345 AND option_text= 'Make this inn your home.'; -- Innkeeper Firebrew
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 1296 AND option_text= 'Let me browse your goods.';

-- Kalimdor
-- Innkeeper Keldamyr
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 1293 AND option_text= 'I want to browse your goods.';
UPDATE gossip_menu_option SET id= 3 WHERE menu_id= 1293 AND option_text= 'What can I do at an inn?';
-- Innkeeper Vizzie
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 349 AND option_text= 'Make this inn your home.';
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 349 AND option_text= 'I want to browse your goods.';
-- Innkeeper Calandrath
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 6525 AND option_text= 'Make this inn your home.';
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 6525 AND option_text= 'I wish to browse your wares, Calandrath.';
-- Innkeeper Fizzgrimble
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 2890 AND option_text= 'I want to browse your goods.';
-- Innkeeper Kauth
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 1294 AND option_text= 'I want to browse your goods.';
UPDATE gossip_menu_option SET id= 3 WHERE menu_id= 1294 AND option_text= 'What can I do at an inn?';
-- EK
-- Innkeeper Farley
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 1291 AND option_text= 'I want to browse your goods.';
UPDATE gossip_menu_option SET id= 3 WHERE menu_id= 1291 AND option_text= 'What can I do at an inn?';
-- Innkeeper Hearthstove
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 1297 AND option_text= 'Let me browse your goods.';
-- Jessica Chambers
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 7173 AND option_text= 'Let me browse your goods.';
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 7173 AND option_text= 'Make this inn your home.';
-- Lard
UPDATE gossip_menu_option SET id= 4 WHERE menu_id= 6059 AND option_text= 'Let me browse your goods.';
UPDATE gossip_menu_option SET id= 1 WHERE menu_id= 6059 AND option_text= 'Make this inn your home.';

-- Innkeeper Heather same gossip menu as Allison(342)
-- Innkeeper Brianna, Trelayne, Anderson same gossip menu as Farley(1291)
-- Innkeeper Skindle same gossip menu id as Vizzie(349)
-- Innkeeper Belm same gossip menu id as Hearthstove(1297)
-- Innkeeper Helbrek, Thulfram same gossip menu id as Firebrew(345)
-- Innkeeper Renee, Bates, Shay same gossip menu id as Norman(1296)
-- Innkeepers Kimlya, Faralia, Lyshaerya same gossip menu id as Saelienne(1581)
-- Innkeeper Wiley same gossip menu id as Vizzie(349)
-- Innkeeper Janene same gossip menu as Allison(342)
-- Innkeeper Kaylisk, Grosk, Shul'kar, Karakul, Thulbek same gossip menu as Gryshka(1290)
-- Innkeeper Booran, Byula, Sikewa, Greul, Abeqwa, Adegwa same gossip menu as Pala(344)

-- Main submenu
DELETE FROM gossip_menu_option WHERE menu_id IN (342,1290,1581,344,345,1296,1293,347,349,6525,2890,1294,1291,1297,7173,6059) AND id=2;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
-- Capitals
(342, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474),
(1290, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474),
(1581, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474),
(344, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474),
(345, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474),
(1296, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474),
-- Kalimdor
(1293, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Keldamyr
(347, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Shaussiy
(349, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Vizzie
(6525, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Calandrath
(2890, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Fizzgrimble
(1294, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Kauth
-- EK
(1291, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Farley
(1297, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Hearthstove
(7173, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474), -- Jessica Chambers
(6059, 2, 0, 'Does that heart mean you\'re looking for love?', 1, 1, 7049, 0, 0, 0, 0, NULL, 474); -- Lard

UPDATE gossip_menu_option SET action_menu_id= 7051 WHERE menu_id= 7049 AND id= 0;
UPDATE gossip_menu_option SET action_menu_id= 7050 WHERE menu_id= 7049 AND id= 1;
UPDATE gossip_menu_option SET action_menu_id= 7056, condition_id= 4 WHERE menu_id= 7049 AND id= 2;
DELETE FROM gossip_menu_option WHERE menu_id=7049 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=7057 AND id IN (0,1);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7049, 3, 0, 'What can I do with these gifts?', 1, 1, 7057, 0, 0, 0, 0, NULL, 3),
(7057, 0, 0, 'You\'re selling cologne and perfume?', 1, 1, 0, 0, 0, 0, 0, '', 0),
(7057, 1, 0, 'What are love tokens?', 1, 1, 0, 0, 0, 0, 0, '', 0);

-- Love Tokens submenu
DELETE FROM gossip_menu_option WHERE menu_id=7050 AND id=1;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7050, 1, 0, 'What can I do with these gifts?', 1, 1, 7057, 0, 0, 0, 0, NULL, 3); -- Adding Horde gossip option
UPDATE gossip_menu_option SET action_menu_id= 7051 WHERE menu_id= 7050 AND id= 2;
UPDATE gossip_menu_option SET action_menu_id= 7056, condition_id= 4 WHERE menu_id= 7050 AND id= 0; -- Alliance gossip only

-- Perfume and Cologne submenu
DELETE FROM gossip_menu_option WHERE menu_id=7051 AND id=1;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7051, 1, 0, 'What can I do with these gifts?', 1, 1, 7057, 0, 0, 0, 0, NULL, 3); -- Adding Horde gossip option
UPDATE gossip_menu_option SET action_menu_id= 7056, condition_id= 4 WHERE menu_id= 7051 AND id= 0;
UPDATE gossip_menu_option SET action_menu_id= 7050 WHERE menu_id= 7051 AND id= 2;

-- Gifts submenu
UPDATE gossip_menu_option SET action_menu_id= 7051 WHERE menu_id= 7056 AND id= 0;
UPDATE gossip_menu_option SET action_menu_id= 7050 WHERE menu_id= 7056 AND id= 1;
UPDATE gossip_menu_option SET action_menu_id= 7051 WHERE menu_id= 7057 AND id= 0;
UPDATE gossip_menu_option SET action_menu_id= 7050 WHERE menu_id= 7057 AND id= 1;


