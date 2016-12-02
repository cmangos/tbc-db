-- Silvermoon City
-- Innkeeper Jovia <Innkeeper>
UPDATE creature_template SET GossipMenuId = 7288 WHERE Entry = 17630;
DELETE FROM gossip_menu WHERE entry = 7288;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7288, 8618, 0, 0);

-- Winthren <Shield Merchant>
UPDATE creature SET position_x = 9451.738, position_y = -7122.863, position_z = 16.14618, orientation = 6.128479, Spawndist = 0, MovementType = 2 WHERE guid = 57682;
DELETE FROM creature_movement WHERE id = 57682;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16693;
DELETE FROM creature_movement_template WHERE entry = 16693;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16693,1,9451.738,-7122.863,16.14618,30000,0,6.128479,0,0),
(16693,2,9452.37,-7125.35,16.1465,30000,1669301,5.8332,0,0),
(16693,3,9451.99,-7128.64,16.1465,30000,1669301,4.45247,0,0),
(16693,4,9451.738,-7122.863,16.14618,0,0,1.57634,0,0),
(16693,5,9451.738,-7122.863,16.14618,30000,0,6.128479,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1669301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1669301,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1669301,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Tynna <Plate Armor Merchant>
UPDATE creature SET position_x = 9453.12, position_y = -7138.64, position_z = 16.1464, orientation = 0.186189, Spawndist = 0, MovementType = 2 WHERE guid = 57621;
DELETE FROM creature_movement WHERE id = 57621;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16626;
DELETE FROM creature_movement_template WHERE entry = 16626;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16626,1,9453.12,-7138.64,16.1464,45000,0,0.186189,0,0),
(16626,2,9455.66,-7135.42,16.1352,0,0,2.63973,0,0),
(16626,3,9453.97,-7134.69,16.1431,30000,1662601,2.99316,0,0),
(16626,4,9451.153,-7138.656,16.14635,30000,1662601,3.255405,0,0),
(16626,5,9453.12,-7138.64,16.1464,240000,0,0.186189,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1662601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1662601,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1662601,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Zalle <Reagents>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57608;
DELETE FROM creature_movement WHERE id = 57608;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.142857, MovementType = 2 WHERE entry = 16611;
DELETE FROM creature_movement_template WHERE entry = 16611;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16611,1,9572.41,-7060.69,18.6436,30000,0,0.178202,0,0),
(16611,2,9581.56,-7062.5,18.6436,0,0,0.355444,0,0),
(16611,3,9590.1,-7060.46,18.6436,30000,1661101,0.405962,0,0),
(16611,4,9587.3,-7060.51,18.6436,0,0,4.57644,0,0),
(16611,5,9586.82,-7062.25,18.6436,20000,0,4.22301,0,0),
(16611,6,9581.68,-7062.86,18.6436,0,0,3.11873,0,0),
(16611,7,9571.29,-7061.17,18.6436,0,0,2.85641,0,0),
(16611,8,9572.41,-7060.69,18.6436,180000,0,0.178202,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1661101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1661101,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1661101,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

