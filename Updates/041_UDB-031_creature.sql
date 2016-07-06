-- Expedition Warden - update
UPDATE creature SET position_z = 130.776 WHERE guid = 63550;
-- Expedition Outrider #1 - Wyrmskull Bridge
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 78755;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.385714 WHERE Entry = 22410;
DELETE FROM creature_movement WHERE id = 78755;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(78755,1,2992.1,5882.41,131.079,1000,2241001,0,0,0,0,0,0,0,1.09818,0,0),
(78755,2,3022.49,5951.91,130.761,0,2241002,0,0,0,0,0,0,0,1.26805,0,0),
(78755,3,3042.8,6004.7,130.709,0,0,0,0,0,0,0,0,0,1.2212,0,0),
(78755,4,3062.56,6051.26,130.475,0,0,0,0,0,0,0,0,0,1.16622,0,0),
(78755,5,3074.67,6061.86,130.39,0,0,0,0,0,0,0,0,0,6.21947,0,0),
(78755,6,3076.65,6031.49,130.623,0,0,0,0,0,0,0,0,0,4.41307,0,0),
(78755,7,3060.06,5987.28,130.928,0,0,0,0,0,0,0,0,0,4.34631,0,0),
(78755,8,3041.28,5941.21,130.789,0,0,0,0,0,0,0,0,0,4.31882,0,0),
(78755,9,3020.72,5891.7,130.652,0,0,0,0,0,0,0,0,0,4.31882,0,0),
(78755,10,2998.73,5842.73,130.338,0,0,0,0,0,0,0,0,0,4.19316,0,0),
(78755,11,2982.02,5832.58,130.215,0,0,0,0,0,0,0,0,0,3.07946,0,0),
(78755,12,2979.26,5851.3,130.312,0,0,0,0,0,0,0,0,0,1.2055,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2241001,2241002);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2241001,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2241002,0,31,17855,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive 
(2241002,1,1,3,0,17855,30,7,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_linking WHERE guid = 78754;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(78754, 78755, 515);
-- Expedition Outrider #2 - Wyrmskull Bridge (req. for link)
UPDATE creature SET position_x = 2990.759, position_y = 5880.856, position_z = 131.29181, orientation = 1.16584 WHERE guid = 78754;
-- part of [030]
UPDATE creature SET spawntimesecs = 60 WHERE guid = 86873; -- quest req.

