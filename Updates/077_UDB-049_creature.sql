-- Helena Atwood
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 41844;
DELETE FROM creature_movement WHERE id = 41844;
UPDATE creature_template SET MovementType = 2 WHERE entry = 5669;
DELETE FROM creature_movement_template WHERE entry = 5669;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(5669,1,1717.102,290.1813,-62.10684,7000,566901,0,0,0,0,0,0,0,5.026548,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 566901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(566901,1,15,9008,0,0,0,0,0,0,0,0,0,0,0,0,'');

