-- ===================
-- Fixes by Killerwife
-- ===================
-- Gorgrom the Dragon-Eater quest script
-- http://www.wowhead.com/quest=10723/gorgrom-the-dragon-eater
-- http://www.wowhead.com/quest=10802/gorgrom-the-dragon-eater

UPDATE creature_template SET MovementType=0,UnitFlags=514,SpeedWalk=3,SpeedRun=3 WHERE entry=21514; -- adjust speed to something like in the videos
UPDATE creature_template SET ModelId2=0,ModelId4=0 WHERE entry=22447; -- remove wrong model
UPDATE creature SET position_x=3607.514893,position_y=7184.140625,position_z=139.595551 WHERE id=22447; -- adjust position
UPDATE quest_template SET ReqSourceId1=31754,ReqSourceCount1=3,ReqSpellCast1=0 WHERE entry IN(10723,10802); -- add correct data

DELETE FROM creature_loot_template WHERE item=31754; -- add quest item to loot tables
INSERT INTO creature_loot_template VALUES(21046,31754,-50,0,1,1,0,'');
INSERT INTO creature_loot_template VALUES(21047,31754,-45,0,1,1,0,'');
INSERT INTO creature_loot_template VALUES(21048,31754,-5,0,1,1,0,'');

DELETE FROM db_script_string WHERE entry IN(2000000327,2000000328,2000000329); -- add required texts
INSERT INTO db_script_string(entry,content_default,comment) VALUES('2000000327','Who dares defile the altar of Gorgrom the Dragon-Eater?','Gorgrom SAY 1');
INSERT INTO db_script_string(entry,content_default,comment) VALUES('2000000328','I will crush it and flay it and eat its meat and crack its bones one by one when I am done.','Gorgrom SAY 2');
INSERT INTO db_script_string(entry,content_default,sound,type,emote,comment) VALUES('2000000329','Misha lets out a loud roar as she rakes her claws against the gronn''s altar.',7933,2,35,'Misha EMOTE 1');

DELETE FROM spell_script_target WHERE entry=39185; -- add target for Trigger Trap
INSERT INTO spell_script_target VALUES(39185,1,22447,0);

DELETE FROM gameobject_template WHERE entry=185295; -- add missing gameobject, thats used as a spell focus
INSERT INTO gameobject_template(entry,type,name,data0,data1) VALUES(185295,8,'Gorgrom''s Corpse',1450,20);

DELETE FROM gameobject WHERE id=185295; -- add gameobject, respawned by script
INSERT INTO gameobject VALUES('94204',185295,530,1,3608.252,7180.321777,140.029190,5.407311,0,0,0,0,-60,255,1);

DELETE FROM dbscripts_on_event WHERE id IN(14536,14400);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14400,0,31,21514,20,0,0,8,0,0,0,0,0,0,0,0,'Gorgrom - Check for Gorgrom'), -- let him check if creature is alive
(14536,0,31,21514,20,0,0,8,0,0,0,0,0,0,0,0,'Gorgrom - Check for Gorgrom');
INSERT INTO dbscripts_on_event VALUES
('14400', '1', '10', '10204', '30000', '0', '0', '0', '0', '0', '0', '0', '3605.5', '7186.44', '141.12', '5.444561', 'Gorgrom - Misha spawn'),
('14400', '3', '10', '21514', '70000', '0', '0', '0', '0', '0', '0', '0', '3624.955556', '7165.361328', '141.484894', '2.24', 'Gorgrom - Gorgrom spawn'),
('14536', '3', '10', '21514', '70000', '0', '0', '0', '0', '0', '0', '0', '3624.955556', '7165.361328', '141.484894', '2.24', 'Gorgrom - Gorgrom spawn'),
(14400,3,25,0,0,21514,40,0,0,0,0,0,0,0,0,0,'Gorgrom - RUN OFF'),
(14536,3,25,0,0,21514,40,0,0,0,0,0,0,0,0,0,'Gorgrom - RUN OFF');
INSERT INTO dbscripts_on_event(id,delay,command,dataint,buddy_entry,search_radius,data_flags,comments) VALUES
(14400,3,0,2000000329,10204,40,0,'Gorgrom - Misha SAY 1'),
(14536,4.5,0,2000000327,21514,40,0,'Gorgrom - Gorgrom SAY 1'),
(14400,4.5,0,2000000327,21514,40,0,'Gorgrom - Gorgrom SAY 1'),
(14536,7,0,2000000328,21514,40,0,'Gorgrom - Gorgrom SAY 2'),
(14400,7,0,2000000328,21514,40,0,'Gorgrom - Gorgrom SAY 2');
INSERT INTO dbscripts_on_event(id,delay,command,x,y,z,o,buddy_entry,search_radius,data_flags,comments) VALUES
(14400,8,3,'3607.514893', '7184.140625', '139.595551', '2.24',21514,40,0,'Gorgrom - Gorgrom MOVE'),
(14400,10,3,'3611.925049', '7192.390137', '139.486327', '3.824740',10204,40,0,'Gorgrom - Misha MOVE'),
(14536,8,3,'3607.514893', '7184.140625', '139.595551', '2.24',21514,40,0,'Gorgrom - Gorgrom MOVE');
INSERT INTO dbscripts_on_event(id,delay,command,datalong,datalong2,comments) VALUES
(14400,11,9,94204,60,'Gorgrom - RESPAWN GAMEOBJECT Gorgroms corpse'),
(14536,11,9,94204,60,'Gorgrom - RESPAWN GAMEOBJECT Gorgroms corpse');
INSERT INTO dbscripts_on_event(id,delay,command,datalong,buddy_entry,search_radius,data_flags,comments) VALUES
(14400,11,15,39185,21514,40,12,'Gorgrom - CAST SPELL Trigger Trap'),
(14536,11,15,39185,21514,40,12,'Gorgrom - CAST SPELL Trigger Trap'),
(14400,11.5,15,38763,21514,40,12,'Gorgrom - CAST SPELL Suicide'),
(14536,11.5,15,38763,21514,40,12,'Gorgrom - CAST SPELL Suicide');
INSERT INTO dbscripts_on_event(id,delay,command,datalong,buddy_entry,search_radius,data_flags,comments) VALUES
(14400,12,18,15000,10204,40,4,'Gorgrom - Misha DESPAWN'),
(14536,12,18,60000,21514,40,68,'Gorgrom - Gorgrom DESPAWN'),
(14400,12,18,60000,21514,40,68,'Gorgrom - Gorgrom DESPAWN');

