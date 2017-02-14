-- q.10111 'Bring me the egg!'
-- event 12307
DELETE FROM dbscripts_on_event WHERE id = 12307;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(12307,0,0,0,0,0,0,2,2000001124,0,0,0,0,0,0,0,''),
(12307,1,10,19055,900000,0,0,0x08,0,0,0,0,-2413.4,6914.48,25.01,3.67,'');
DELETE FROM db_script_string WHERE entry = 2000001124;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001124,'Mysterious Egg cracks open, filling the nest with yolk.',0,2,0,0,NULL);
-- Windroc Matriarch
UPDATE creature_template SET MovementType = 2, InhabitType = 4 WHERE entry = 19055;
DELETE FROM creature_movement_template WHERE entry = 19055;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(19055,1,-2422.512695,6910.643555,20.124718,0,0,100),
(19055,2,-2420.722168,6901.208008,15.225160,0,0,100),
(19055,3,-2400.643066,6887.521973,-1.384245,10000,1905501,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1905501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1905501,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1905501,4,0,0,0,0,0,0x04,2000001125,0,0,0,0,0,0,0,''),
(1905501,5,22,14,0x01 | 0x10,0,0,0,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry = 2000001125;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001125,'%s lets loose a terrifying shriek.',0,2,0,0,NULL);

-- Wazat
-- gossip corrected
-- Second text available only after q.10109 'I Must Have Them!' completed
UPDATE creature SET Spawndist = 2, MovementType = 1 WHERE id = 19035;
UPDATE gossip_menu SET condition_id = 1141 WHERE entry = 7891 AND text_id = 9659;
DELETE FROM conditions WHERE condition_entry = 1141;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
(1141,8,10109,0);

