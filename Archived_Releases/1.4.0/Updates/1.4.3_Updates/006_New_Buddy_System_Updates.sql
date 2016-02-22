/*
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000000064
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000000078
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000000079
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005418
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005419
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005420
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005421
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005422
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005423
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005424
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005425
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005426
2014-07-31 00:47:35 Table `db_script_string` has unused string id 2000005427
*/

-- ---------------
-- New Buddy System - UDB 407 Backport (Thanks Grz3s)
-- ---------------
/*
DELETE FROM dbscripts_on_creature_movement WHERE id = 2361601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2361601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
DELETE FROM dbscripts_on_quest_end WHERE id = 10349;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10349,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'19294 - npc_flag removed'),
(10349,1,0,0,0,0,0,0,2000000182,0,0,0,0,0,0,0,''),
(10349,2,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'19294 - movement chenged to 2:waypoint'),
(10349,20,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'19294 - npc_flag added');
*/

-- Gruk
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1485001,1485002,1485003);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1485001,3,0,0,0,0,0,0,2000005314,0,0,0,0,0,0,0,''),
(1485001,8,0,0,0,14859,5,4,2000005315,0,0,0,0,0,0,0,''),
(1485001,12,0,0,0,0,0,0,2000005316,0,0,0,0,0,0,0,''),
(1485002,3,0,0,0,0,0,0,2000005317,0,0,0,0,0,0,0,''),
(1485002,7,0,0,0,14859,5,4,2000005318,0,0,0,0,0,0,0,''),
(1485002,12,0,0,0,0,0,0,2000005319,0,0,0,0,0,0,0,''),
(1485003,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1485003,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');

-- Peon
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1490101,1490102,1490103);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490101,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490102,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490103,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random');

-- Darrowshire Spirit
DELETE FROM dbscripts_on_gossip WHERE id = 3141;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3141,0,8,11064,1,0,0,0,0,0,0,0,0,0,0,0,''),
(3141,2,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'');

/*
-- Battle-Mage Dathric <Kirin Tor>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954301,1954302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954301,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954302,0,22,1810,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid');
*/

/*
-- Conjurer Luminrath <Kirin Tor>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954401,1954402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954401,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954402,0,22,1811,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid');
*/

/*
-- Cohlien Frostweaver <Kirin Tor>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954501,1954502);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954501,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954502,0,22,1809,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid');
*/

/*
-- Abjurist Belmara <Kirin Tor>
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954601,1954602);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954601,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954602,0,22,1808,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid');
*/

-- William and Donna
DELETE FROM dbscripts_on_creature_movement WHERE id IN (253301,253302,253303,253304,253305,253306);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(253301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(253301,1,0,0,0,0,0,0,2000005059,0,0,0,0,0,0,0,''),
(253301,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253301,3,0,0,0,2532,15,4,2000005063,0,0,0,0,0,0,0,''),
(253302,1,0,0,0,0,0,0,2000005057,0,0,0,0,0,0,0,''),
(253302,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253302,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253303,1,0,0,0,0,0,0,2000005058,0,0,0,0,0,0,0,''),
(253303,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253303,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253304,1,0,0,0,0,0,0,2000005059,0,0,0,0,0,0,0,''),
(253304,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253304,3,0,0,0,2532,15,4,2000005063,0,0,0,0,0,0,0,''),
(253305,1,0,0,0,0,0,0,2000005060,0,0,0,0,0,0,0,''),
(253305,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253305,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253306,1,0,0,0,0,0,0,2000005061,0,0,0,0,0,0,0,''),
(253306,2,31,2532,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(253306,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,'');

/*
-- Defias Thug
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3801,3802,3803);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3801,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - RUN ON'),
(3802,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - RUN OFF'),
(3803,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - movement chenged to 1:random'),
(3803,20,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - movement chenged to 2:waypoint');
*/

-- Mordant Grimsby - Event
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2384301,2384302,2384303);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2384301,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'23843 - npc_flag removed for event'),
(2384302,3,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384302,4,9,90623,45,0,0,0,0,0,0,0,-2954.89,-3883.94,32.9969,2.60053,''),
(2384302,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384302,8,0,0,0,0,0,0,2000005328,0,0,0,0,0,0,0,''),
(2384302,14,0,0,0,0,0,0,2000005329,0,0,0,0,0,0,0,''),
(2384302,19,0,0,0,0,0,0,2000005330,0,0,0,0,0,0,0,''),
(2384302,25,1,6,0,4792,10,0,0,0,0,0,0,0,0,0,''),
(2384302,25,0,0,0,4792,10,4,2000005331,0,0,0,0,0,0,0,''),
(2384302,30,0,0,0,0,0,0,2000005332,0,0,0,0,0,0,0,''),
(2384302,36,0,0,0,4792,10,4,2000005333,0,0,0,0,0,0,0,''),
(2384302,36,1,1,0,4792,10,0,0,0,0,0,0,0,0,0,''),
(2384302,41,0,0,0,0,0,0,2000005334,0,0,0,0,0,0,0,''),
(2384302,41,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384302,49,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384302,53,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2384303,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'23843 - npc_flag added after event');
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005328;
UPDATE db_script_string SET emote = 25 WHERE entry = 2000005329;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005332;
UPDATE db_script_string SET emote = 5 WHERE entry = 2000005334;
-- UDB BACKPORT GO SPAWN REQUIRED
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('90623','186418','1','1','-2954.89','-3883.94','32.9969','2.60053','0','0','0.963629','0.267244','-300','255','1');


-- Wretched Ghoul
DELETE FROM dbscripts_on_creature_movement WHERE id IN (150201,150202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(150201,1,26,1,0,1736,20,0,0,0,0,0,0,0,0,0,'W.Ghuol - Attack on Guards'),
(150201,0,22,21,1,0,0,0,0,0,0,0,0,0,0,0,'W.Ghuol - Faction change'),
(150202,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(150202,45,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');

-- Deserter Agitator
DELETE FROM dbscripts_on_gossip WHERE id = 8762;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8762,0,0,0,0,0,0,0,2000000314,2000000315,2000000316,0,0,0,0,0,'Say'),
(8762,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'start attack'),
(8762,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(8762,0,22,1883,1,0,0,0,0,0,0,0,0,0,0,0,'change faction');

-- Theramore Guard
DELETE FROM dbscripts_on_gossip WHERE id = 8851;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8851,0,8,4979,0,0,0,0,0,0,0,0,0,0,0,0,''),
(8851,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(8851,0,0,0,0,0,0,0,2000005517,0,0,0,0,0,0,0,'Say text'),
(8851,0,15,42734,0,0,0,6,0,0,0,0,0,0,0,0,''),
(8851,1,0,2,0,0,0,0,2000005518,0,0,0,0,0,0,0,'Say emote'),
(8851,3,0,0,0,0,0,0,2000005511,2000005512,2000005519,2000005514,0,0,0,0,'Say text'),
(8851,5,0,0,0,0,0,0,2000005515,2000005516,2000005513,2000005520,0,0,0,0,'Say text'),
(8851,120,29,1,0,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag');

-- Distracting Jarven(q.308)
DELETE FROM dbscripts_on_quest_end WHERE id = 308;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(308,0,0,0,0,0,0,0,2000000077,0,0,0,0,0,0,0,''),
(308,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag removed'),
(308,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 2:waypoint'),
(308,12,9,35875,55,0,0,0,0,0,0,0,-5607.24,-547.934,392.985,0.471239,''),
(308,23,0,0,0,0,0,0,2000000056,0,0,0,0,0,0,0,'');

-- OLD SCRIPTS FOR ABOVE QUEST
/*
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','0','0','0','0','0','0','0','2000000077','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','0','3','0','0','0','0','0','0','0','0','0','-5601.64','-541.38','392.42','0.5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','2','3','0','0','0','0','0','0','0','0','0','-5597.94','-542.04','392.42','5.5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','3','3','0','0','0','0','0','0','0','0','0','-5597.95','-548.43','395.48','4.7','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','7','3','0','0','0','0','0','0','0','0','0','-5605.31','-549.33','399.09','3.1','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','10','3','0','0','0','0','0','0','0','0','0','-5607.55','-546.63','399.09','1.5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','12','9','35875','30','0','0','0','0','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','14','3','0','0','0','0','0','0','0','0','0','-5597.52','-538.75','399.09','1.5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','18','3','0','0','0','0','0','0','0','0','0','-5597.62','-530.24','399.65','3','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','21','3','0','0','0','0','0','0','0','0','0','-5603.67','-529.91','399.65','4.2','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','25','0','0','0','0','0','0','2000000056','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','36','3','0','0','0','0','0','0','0','0','0','-5603.67','-529.91','399.65','4.2','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','39','3','0','0','0','0','0','0','0','0','0','-5597.62','-530.24','399.65','3','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','42','3','0','0','0','0','0','0','0','0','0','-5597.52','-538.75','399.09','1.5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','45','3','0','0','0','0','0','0','0','0','0','-5607.55','-546.63','399.09','1.5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','48','3','0','0','0','0','0','0','0','0','0','-5605.31','-549.33','399.09','3.1','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','51','3','0','0','0','0','0','0','0','0','0','-5597.95','-548.43','395.48','4.7','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','54','3','0','0','0','0','0','0','0','0','0','-5597.94','-542.04','392.42','5.5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','55','0','0','0','0','0','0','2000000078','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','58','3','0','0','0','0','0','0','0','0','0','-5601.64','-541.38','392.42','0.5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','60','3','0','0','0','0','0','0','0','0','0','-5605.96','-544.45','392.43','0.9','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('308','62','0','0','0','0','0','0','2000000079','0','0','0','0','0','0','0','');
*/

-- Collection of Goods(q.7642)
DELETE FROM dbscripts_on_quest_end WHERE id = 7642;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7642,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag removed'),
(7642,2,0,0,0,0,0,0,2000000063,0,0,0,0,0,0,0,''),
(7642,4,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 2:waypoint'),
(7642,105,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag added');

-- OLD SCRIPTS FOR ABOVE QUEST
/*
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','2','0','0','0','0','0','0','2000000063','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','5','3','0','0','0','0','0','0','0','0','0','-8393.09','687.41','95.27','3.72','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','8','3','0','0','0','0','0','0','0','0','0','-8400.51','681.85','95.96','5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','11','3','0','0','0','0','0','0','0','0','0','-8388.72','646.85','94.82','3.92','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','20','3','0','0','0','0','0','0','0','0','0','-8422.25','618.12','95.46','3.2','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','33','1','69','0','0','0','0','0','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','39','1','0','0','0','0','0','0','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','40','3','0','0','0','0','0','0','0','0','0','-8421.99','617.93','95.45','5.34','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','42','1','233','0','0','0','0','0','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','48','1','0','0','0','0','0','0','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','48','0','0','0','0','0','0','2000000064','0','0','0','0','0','0','0','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','52','3','0','0','0','0','0','0','0','0','0','-8388.72','646.85','94.82','3.92','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','63','3','0','0','0','0','0','0','0','0','0','-8400.51','681.85','95.96','5','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','73','3','0','0','0','0','0','0','0','0','0','-8393.09','687.41','95.27','3.72','');
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7642','76','3','0','0','0','0','0','0','0','0','0','-8387','685.2','95.35','2.28','');
*/

-- Teron Gorefiend, I am...(q.10639) -H  (q.10645) -A  -- UPDATES
DELETE FROM dbscripts_on_quest_start WHERE id = 10639;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10639,0,0,0,0,0,0,0,2000000031,0,0,0,0,0,0,0,''),
(10639,3,23,21867,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10639,5,10,21877,300000,0,0,0,0,0,0,0,-4536.58,1028.76,8.8266,3.72963,'summon - Karsius the Ancient Watcher'),
(10639,8,0,0,0,21872,40,0,2000005473,0,0,0,0,0,0,0,''),
(10639,9,22,90,0x01,21877,50,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry = 2000005473; 
INSERT INTO db_script_string (entry, content_default, type) VALUES
(2000005473,'Waste no time, fool! Use our power to kill those what stand in our way! Destroy Krasius before you are subdued!', 4);

-- Karsius the Ancient Watcher
DELETE FROM creature_linking_template WHERE entry = 21876; -- link between Karsius the Ancient Watcher and Chain of Shadows 
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(21876,530,21877,8208,100); -- 16 + 8192 (DESPAWN_ON_DESPAWN)
DELETE FROM dbscripts_on_creature_death WHERE id = 21877;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21877,1,14,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'');

-- Ancient Shadowmoon Spirit
DELETE FROM dbscripts_on_creature_death WHERE id = 21797;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21797,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(21797,3,18,0,0,21877,50,7,0,0,0,0,0,0,0,0,'Karsius the Ancient Watcher despawn'),
(21797,3,14,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'');

-- Teron Gorefiend - update (EQUIPMENT IS EquipEntry1=13722 NEED TO FIND IT FOR TBC)
UPDATE creature_template SET MovementType = 2, SpeedRun = 1.5 WHERE entry = 21867;
UPDATE creature_template_addon SET mount = 10720 WHERE entry = 21867;  -- need his mount 
DELETE FROM creature_movement_template WHERE entry = 21867;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21867,1,-4542.21,1023.72,9.66909,17000,2186701,0,0,0,0,0,0,0,0.864165,0,0),
(21867,2,-4527.459473,1015.657593,10.890298,0,0,0,0,0,0,0,0,0,5.282815,0,0),
(21867,3,-4520.572266,1000.627075,12.485450,0,0,0,0,0,0,0,0,0,4.782524,0,0),
(21867,4,-4521.288086,982.703003,11.543771,0,0,0,0,0,0,0,0,0,4.804492,0,0),
(21867,5,-4519.058594,964.810120,12.235850,0,0,0,0,0,0,0,0,0,4.878321,0,0),
(21867,6,-4512.545410,944.781250,4.226434,0,0,0,0,0,0,0,0,0,4.973356,0,0),
(21867,7,-4505.491211,931.839050,-0.856650,0,0,0,0,0,0,0,0,0,5.517634,0,0),
(21867,8,-4493.015625,922.165771,5.736859,0,0,0,0,0,0,0,0,0,5.511348,0,0),
(21867,9,-4463.642090,907.782104,7.652451,0,0,0,0,0,0,0,0,0,5.856919,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2186701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2186701,0,23,21797,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,1,18,0,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,7,0,0,0,0,0,0,2000005471,0,0,0,0,0,0,0,''),
(2186701,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2186701,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2186701,12,0,0,0,0,0,0,2000005472,0,0,0,0,0,0,0,''),
(2186701,13,1,22,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005471,2000005472);
INSERT INTO db_script_string (entry, content_default, type) VALUES
(2000005471,'We will meet again... Someday.', 0),
(2000005472,'Death incarnate has been released upon the world once more! Teron Gorefiend has returned...', 6);

-- ===========================================
-- BACKPORT MISSING DB_SCRIPT_STRINGS FROM UDB
-- ===========================================
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('2000005511','...to create a fund for the purchase of hair gel? I like my hair the way it is, thanks!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005512','...as a deserter, you\'ll enjoy activities like tethered swimming and dog grooming? How ridiculous!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005513','I\'d never join anything like this. Better keep this, though. It\'ll come in handy in the privy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005514','...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005515','That\'s the funniest thing I\'ve read in a long time. You\'ve just made my day!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005516','This... this is a joke, right?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005517','Hey, thanks.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005518','%s reads the leaflet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005519','...receive 50 percent off deserter undergarments? What is this garbage?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005520','What a bunch of lunatics! You actually believe this stuff?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- ==========================================================
-- REMOVE UNUSED DB_SCRIPT_STRINGS - ID'S NOW SYNCED WITH UDB
-- ==========================================================
DELETE FROM db_script_string WHERE entry=2000005418; -- '...to create a fund for the purchase of hair gel? I like my hair the way it is, thanks!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005419; -- '...as a deserter, you\'ll enjoy activities like tethered swimming and dog grooming? How ridiculous!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005420; -- 'I\'d never join anything like this. Better keep this, though. It\'ll come in handy in the privy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005421; -- '...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005422; -- 'That\'s the funniest thing I\'ve read in a long time. You\'ve just made my day!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005423; -- 'This... this is a joke, right?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005424; -- 'Hey, thanks.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005425; -- '%s reads the leaflet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005426; -- '...receive 50 percent of the clothes deserters? What is this rubbish?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
DELETE FROM db_script_string WHERE entry=2000005427; -- 'What a crazy crowd! You really believe in this nonsense?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);

-- ==================================
-- FEW ADDITIONAL UDB BACKPORTS FOUND
-- ==================================
-- Jarven Thunderbrew Waypoints
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','1','-5601.64','-541.38','392.42','0','0','0','0','0','0','0','0','0','0.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','2','-5597.94','-542.04','392.42','0','0','0','0','0','0','0','0','0','5.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','3','-5597.95','-548.43','395.48','0','0','0','0','0','0','0','0','0','4.7','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','4','-5605.31','-549.33','399.09','0','0','0','0','0','0','0','0','0','3.1','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','5','-5607.55','-546.63','399.09','0','0','0','0','0','0','0','0','0','1.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','6','-5597.52','-538.75','399.09','0','0','0','0','0','0','0','0','0','1.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','7','-5597.62','-530.24','399.65','0','0','0','0','0','0','0','0','0','3','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','8','-5603.67','-529.91','399.65','20000','0','0','0','0','0','0','0','0','4.2','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','9','-5603.67','-529.91','399.65','0','0','0','0','0','0','0','0','0','4.2','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','10','-5597.62','-530.24','399.65','0','0','0','0','0','0','0','0','0','3','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','11','-5597.52','-538.75','399.09','0','0','0','0','0','0','0','0','0','1.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','12','-5607.55','-546.63','399.09','0','0','0','0','0','0','0','0','0','1.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','13','-5605.31','-549.33','399.09','0','0','0','0','0','0','0','0','0','3.1','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','14','-5597.95','-548.43','395.48','0','0','0','0','0','0','0','0','0','4.7','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','15','-5597.94','-542.04','392.42','0','0','0','0','0','0','0','0','0','5.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','16','-5601.64','-541.38','392.42','0','0','2000000078','0','0','0','0','0','0','0.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','17','-5605.96','-544.451','392.43','0','0','0','0','0','0','0','0','0','0.5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1373','18','-5605.96','-544.451','392.43','2000','137301','0','0','0','0','0','0','0','0.977384','0','0');
-- DB Scripts
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('137301','0','0','0','0','0','0','0','2000000079','0','0','0','0','0','0','0','');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('137301','1','29','2','1','1373','10','0','0','0','0','0','0','0','0','0','1373 - npc_flag added');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('137301','2','20','1','0','1373','10','0','0','0','0','0','0','0','0','0','1373 - movement chenged to 0:idle');


-- Grimand Elmore
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','1','-8393.09','687.41','95.27','0','0','0','0','0','0','0','0','0','3.72','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','2','-8400.51','681.85','95.96','0','0','0','0','0','0','0','0','0','5','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','3','-8388.72','646.85','94.82','0','0','0','0','0','0','0','0','0','3.92','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','4','-8422.25','618.12','95.46','3000','0','0','0','0','0','0','0','0','3.2','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','5','-8422.25','618.12','95.46','6000','0','0','0','0','0','69','0','0','3.2','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','6','-8422.25','618.12','95.46','1000','0','0','0','0','0','0','0','0','3.2','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','7','-8421.99','617.93','95.45','2000','0','0','0','0','0','0','0','0','5.34','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','8','-8421.99','617.93','95.45','6000','0','0','0','0','0','233','0','0','5.34','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','9','-8421.99','617.93','95.45','0','0','2000000064','0','0','0','0','0','0','5.34','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','10','-8388.72','646.85','94.82','0','0','0','0','0','0','0','0','0','1.98295','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','11','-8400.51','681.85','95.96','0','0','0','0','0','0','0','0','0','0.798564','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','12','-8393.09','687.41','95.27','0','0','0','0','0','0','0','0','0','6.03867','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','13','-8387','685.202','95.356','0','0','0','0','0','0','0','0','0','2.47925','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('1416','14','-8387','685.202','95.356','2000','141601','0','0','0','0','0','0','0','2.47925','0','0');

-- DB Script
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('141601','2','20','1','0','1416','10','0','0','0','0','0','0','0','0','0','1416 - movement chenged to 0:idle');

