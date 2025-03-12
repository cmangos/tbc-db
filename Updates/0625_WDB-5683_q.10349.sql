-- q.10349 'The Earthbinder'
-- reconstructed using correct data
DELETE FROM dbscripts_on_quest_end WHERE id IN (10349);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10349,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(10349,2,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlag removed'), -- 06:15:52.000
(10349,2000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Face Player'), -- 06:15:54.000
(10349,2001,0,0,0,0,0,0,0x04,18289,0,0,0,0,0,0,0,'say'),
(10349,10000,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'path1'); -- 06:16:02.000
DELETE FROM creature_movement_template WHERE Entry IN (19294);
INSERT INTO creature_movement_template (Entry, pathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(19294,1,1,-289.7681,4722.268,23.06119,100,0,0),
(19294,1,2,-286.7666,4729.429,18.43619,100,0,0),
(19294,1,3,-286.7666,4729.429,18.43619,1.727876,10000,1929401);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1929401,1929402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1929401,2000,1,16,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 06:16:12.000
(1929401,5000,9,82673,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1929401,7000,0,0,0,0,0,0,0,18291,0,0,0,0,0,0,0,''),
(1929401,7100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(1929401,7500,10,20599,300000,0,0,0,0x08,0,0,0,0,-288.1897,4733.63,18.29823,5.044002,'summon');
DELETE FROM dbscripts_on_relay WHERE id IN (19945);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19945,1,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlag added'),
(19945,2,3,0,0,0,0,0,0x04,1,0,0,0,0,0,0,0,'move home'),
(19945,1000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
