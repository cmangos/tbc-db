-- Expedition Warden #1 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 63550;
DELETE FROM creature_movement WHERE id = 63550;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(63550,1,3032.1,5959.56,130.687,0,0,0,0,0,0,0,0,0,5.95676,0,0),
(63550,2,3032.1,5959.56,130.687,30000,0,0,0,0,0,0,0,0,4.37182,0,0),
(63550,3,3022.65,5963.61,130.69,120000,1785503,0,0,0,0,0,0,0,2.73633,0,0);
-- Expedition Warden (2-3) (4-5) (6-7) -- chat
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (63548,63545,63551);
DELETE FROM creature_movement WHERE id IN (63548,63545,63551);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(63548,1,3018.66,5962.21,131.69,60000,1785504,0,0,0,0,0,0,0,0.907571,0,0),
(63545,1,2948.06,5792.65,133.571,60000,1785504,0,0,0,0,0,0,0,6.12611,0,0),
(63551,1,3096.95,6122.23,134.852,60000,1785504,0,0,0,0,0,0,0,5.02655,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1785503,1785504);  -- 01,02 already in use
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1785503,5,1,1,0,0,0,0,396,274,0,0,0,0,0,0,'Random emote'),
(1785503,30,1,274,0,0,0,0,396,1,0,0,0,0,0,0,'Random emote'),
(1785503,55,1,1,0,0,0,0,396,274,0,0,0,0,0,0,'Random emote'),
(1785503,89,1,396,0,0,0,0,1,274,0,0,0,0,0,0,'Random emote'),
(1785504,6,1,1,0,0,0,0,396,274,273,0,0,0,0,0,'Random emote'),
(1785504,8,31,17855,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1785504,9,1,396,0,17855,15,7,273,274,1,0,0,0,0,0,''),
(1785504,17,1,274,0,0,0,0,396,273,1,0,0,0,0,0,'Random emote'),
(1785504,19,31,17855,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1785504,20,1,1,0,17855,15,7,273,274,396,0,0,0,0,0,''),
(1785504,29,1,273,0,0,0,0,396,274,1,0,0,0,0,0,'Random emote'),
(1785504,31,31,17855,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1785504,32,1,396,0,17855,15,7,1,274,273,0,0,0,0,0,''),
(1785504,41,1,396,0,0,0,0,273,274,1,0,0,0,0,0,'Random emote'),
(1785504,42,31,17855,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1785504,43,1,273,0,17855,15,7,274,1,396,0,0,0,0,0,''),
(1785504,55,1,396,0,0,0,0,1,274,273,0,0,0,0,0,'Random emote'),
(1785504,57,31,17855,15,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1785504,58,1,396,0,17855,15,7,1,274,273,0,0,0,0,0,'');




