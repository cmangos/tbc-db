-- UDB_263
-- q.10216 'Safety Is Job One'
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 8023, condition_id = 1016 WHERE menu_id = 8023;
DELETE FROM dbscripts_on_gossip WHERE id = 8023;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8023,1,31,19671,200,0,0,0x08,0,0,0,0,0,0,0,0,'search for 19671'), -- script wont run if one is already there
(8023,2,10,19671,7200000,0,0,0,0,0,0,0,-362.876,-71.3333,-0.960223,0.19633,'summon Cryo-Engineer Sha\'heen'),
(8023,3,10,19672,30000,0,0,0,0,0,0,0,-364.486,-78.9999,-0.950388,0.64874,'summon Consortium Laborer'),
(8023,3,10,19672,30000,0,0,0,0,0,0,0,-369.053,-60.7257,-0.957958,5.85593,'summon Consortium Laborer'),
(8023,3,10,19672,30000,0,0,0,0,0,0,0,-377.158,-55.3329,-0.960079,6.03029,'summon Consortium Laborer'),
(8023,4,10,19672,30000,0,0,0,0,0,0,0,-382.865,-65.0304,-0.959933,4.75847,'summon Consortium Laborer'),
(8023,5,10,19672,30000,0,0,0,0,0,0,0,-374.18,-83.7084,-0.959933,6.2613,'summon Consortium Laborer');
-- gossip should be available only after q.10216 completed and before q.10218
DELETE FROM conditions WHERE condition_entry IN (1014,1015,1016); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1016, -1, 1015, 1014),
(1015, 8, 10216, 0),
(1014, 22, 10218, 0);
-- Cryo-Engineer Sha'heen
UPDATE creature_template SET MovementType = 0 WHERE entry = 19671;
-- Control Panel
UPDATE gameobject SET orientation = 3.85718, spawntimesecs = 7200, animprogress = 255 WHERE guid = 43146;
-- Consortium Laborer
-- emote shouldnt be for all.
UPDATE creature_template_addon SET emote = 0 WHERE entry = 19672;
DELETE FROM creature_addon WHERE guid IN (84499,84500,84501,84502);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(84499,0,0,0,0,233,0,NULL),
(84500,0,0,0,0,233,0,NULL),
(84501,0,0,0,0,233,0,NULL),
(84502,0,0,0,0,233,0,NULL);

