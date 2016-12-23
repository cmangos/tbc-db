-- Captain Edward Hanes
DELETE FROM gossip_menu_option WHERE menu_id = 8298;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(8298, 0, 0, 'Can you cast the spell to help me breathe and move underwater?', 1, 3, -1,  8298, 1066);
DELETE FROM dbscripts_on_gossip WHERE id = 8298;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8298, 0, 15, 31319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM conditions WHERE condition_entry IN (1064,1065,1066);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1066, -2, 1065, 1064),
(1065, 9, 9674, 0),
(1064, 9, 9682, 0);

-- q.9674 'The Bloodcursed Naga'
DELETE FROM dbscripts_on_quest_start WHERE id = 9674;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9674, 0, 15, 31319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE quest_template SET StartScript = 9674 WHERE entry = 9674;
-- q.9682 'The Hopeless Ones...'
DELETE FROM dbscripts_on_quest_start WHERE id = 9682;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9682, 0, 15, 31319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE quest_template SET StartScript = 9682 WHERE entry = 9682;
-- q.9683 'Ending the Bloodcurse'
DELETE FROM dbscripts_on_event WHERE id = 11027;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11027,1,9,85566,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,1,9,85567,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,1,9,85568,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,2,9,85569,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,2,9,85570,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,2,9,85571,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,4,10,17715,90000,0,0,0,0,0,0,0,-1901.75,-12863.3,86.9664,3.176499,''),
(11027,5,26,0,0,17715,100,3,0,0,0,0,0,0,0,0,'aggro on player');
-- Statue Fire
DELETE FROM `gameobject` WHERE `guid` IN (85566,85567,85568,85569,85570,85571);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('85566','181965','530','1','-1940.92','-12880.7','88.3953','1.09956','0','0','0.5225','0.852639','-30','255','1'),
('85567','181965','530','1','-1941.12','-12886.1','87.7198','-2.00713','0','0','-0.843392','0.537299','-30','255','1'),
('85568','181965','530','1','-1947.26','-12876.7','87.3017','-2.82743','0','0','-0.987688','0.156436','-30','255','1'),
('85569','181965','530','1','-1943.73','-12883','98.4893','-1.41372','0','0','-0.649449','0.760405','-30','255','1'),
('85570','181965','530','1','-1949.92','-12883.3','88.4199','-1.22173','0','0','-0.573576','0.819152','-30','255','1'),
('85571','181965','530','1','-1944.11','-12881.9','90.6071','0.279252','0','0','0.139173','0.990268','-30','255','1');

UPDATE gameobject SET spawntimesecs = -30 WHERE guid IN (85566,85567,85568,85569,85570,85571);


