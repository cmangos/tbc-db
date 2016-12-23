-- Tuluun
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 61721;
UPDATE creature_template SET movementType = 2 WHERE entry = 17212;
DELETE FROM creature_movement WHERE id = 61721;
DELETE FROM creature_movement_template WHERE entry = 17212;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17212, 1, -4162.33, -12456.1, 44.3411, 120000, 0, 4.13643, 0, 0),
(17212, 2, -4162.33, -12456.1, 44.3411, 15000, 1721201, 4.13643, 0, 0),
(17212, 3, -4162.33, -12456.1, 44.3411, 300000, 0, 4.13643, 0, 0),
(17212, 4, -4162.33, -12456.1, 44.3411, 13000, 1721202, 4.13643, 0, 0),
(17212, 5, -4162.33, -12456.1, 44.3411, 400000, 0, 4.13643, 0, 0),
(17212, 6, -4162.33, -12456.1, 44.3411, 18000, 1721203, 4.13643, 0, 0),
(17212, 7, -4162.33, -12456.1, 44.3411, 300000, 0, 4.13643, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1721201 AND 1721203;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1721201,1,1,0,0,17228,63770,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1721201,3,36,0,0,17228,63770,3 | 0x10,0,0,0,0,0,0,0,0,''),
(1721201,4,36,0,0,17228,63770,1 | 0x10,0,0,0,0,0,0,0,0,''),
(1721201,6,0,0,0,17228,63770,3 | 0x10,2000000663,0,0,0,0,0,0,0,''),
(1721201,10,0,0,0,17228,63770,3 | 0x10,2000000664,0,0,0,0,0,0,0,''),
(1721201,13,36,5.67608,0,17228,63770,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1721201,15,1,234,0,17228,63770,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1721202,1,1,0,0,17228,63770,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1721202,3,36,0,0,17228,63770,3 | 0x10,0,0,0,0,0,0,0,0,''),
(1721202,4,36,0,0,17228,63770,1 | 0x10,0,0,0,0,0,0,0,0,''),
(1721202,6,0,0,0,17228,63770,3 | 0x10,2000000662,0,0,0,0,0,0,0,''),
(1721202,10,36,5.67608,0,17228,63770,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1721202,13,1,234,0,17228,63770,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1721203,1,1,0,0,17228,63770,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1721203,3,3,0,0,17228,63770,7 | 0x10,0,0,0,0,-4160.31,-12458.7,44.5919,2.08552,''),
(1721203,6,36,0,0,17228,63770,1 | 0x10,0,0,0,0,0,0,0,0,''),
(1721203,9,0,0,0,17228,63770,3 | 0x10,2000000665,0,0,0,0,0,0,0,''),
(1721203,12,3,0,0,17228,63770,7 | 0x10,0,0,0,0,-4149.24,-12465,45.3466,5.67608,''),
(1721203,19,1,234,0,17228,63770,7 | 0x10,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000662 AND 2000000665;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000662,'Turning to face Tuluun, the Draenei Artificer sneers contemptuously.',0,2,0,0,NULL),
(2000000663,'How can I be expected to get any work done with that thing spreading its heresy?',0,0,0,0,NULL),
(2000000664,'%s sighs disgustedly as he turns back to his work.',0,2,0,0,NULL),
(2000000665,'We do not need your kind here.',0,0,0,0,NULL);


