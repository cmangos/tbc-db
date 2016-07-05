-- Taleris Dawngazer
UPDATE creature SET position_x = -650.434021, position_y = 4136.919922, position_z = 64.620346, orientation = 1.88, MovementType = 2, spawndist = 0 WHERE guid = 59416;
DELETE FROM creature_movement WHERE id = 59416;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17015; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 17015;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(17015,1,-650.434021,4136.919922,64.620346,30000,0,0,0,0,0,0,0,0,1.88,0,0),
(17015,2,-649.897,4149.45,64.13,0,0,0,0,0,0,0,0,0,1.61692,0,0),
(17015,3,-650.945,4153.25,64.3724,0,0,0,0,0,0,0,0,0,1.86039,0,0),
(17015,4,-653.408,4159.69,65.9067,0,0,0,0,0,0,0,0,0,1.62163,0,0),
(17015,5,-649.211,4169.54,67.9885,0,0,0,0,0,0,0,0,0,1.06714,0,0),
(17015,6,-647.255,4172.52,68.3677,0,0,0,0,0,0,0,0,0,1.36559,0,0),
(17015,7,-646.951,4176.908,68.51362,30000,1701501,0,0,0,0,0,0,0,1.95,0,0),
(17015,8,-653.285,4163.94,67.01,0,0,0,0,0,0,0,0,0,4.41295,0,0),
(17015,9,-651.272,4154.21,64.553,0,0,0,0,0,0,0,0,0,5.07268,0,0),
(17015,10,-649.733,4147.03,64.231,0,0,0,0,0,0,0,0,0,4.70747,0,0),
(17015,11,-650.434021,4136.919922,64.620346,120000,0,0,0,0,0,0,0,0,1.88,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1701501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1701501,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1701501,4,1,1,0,0,0,0,11,6,0,0,0,0,0,0,'random emote'),
(1701501,7,31,17046,20,0,0,0,0,0,0,0,0,0,0,0,''),
(1701501,8,1,1,0,17046,20,7,11,6,0,0,0,0,0,0,'force buddy to: random emote'),
(1701501,12,1,1,0,0,0,0,11,6,0,0,0,0,0,0,'random emote'),
(1701501,15,31,17046,20,0,0,0,0,0,0,0,0,0,0,0,''),
(1701501,16,1,1,0,17046,20,7,11,6,0,0,0,0,0,0,'force buddy to: random emote');

