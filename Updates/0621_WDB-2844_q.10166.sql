-- q.10166 'Whitebark's Memory' - update

-- only one summon at same time available
-- xyz correct and his movement (may not be completed)
DELETE FROM dbscripts_on_event WHERE id = 12530;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12530,0,31,50,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'(q.10166) only one summon available'),
(12530,10,10,19456,300000,0,0,0,0,0,0,0,0,8206.16,-6348.242,64.59447,0.9,'(q.10166) summon: Whitebark\'s Spirit');
-- source should desp (we want to control this) after quest finished
DELETE FROM dbscripts_on_quest_end WHERE id = 10166;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10166,0,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'(q.10166) despawn source');
UPDATE quest_template SET  CompleteScript = 10166 WHERE entry = 10166;

-- Whitebark's Spirit
UPDATE creature_template SET MovementType = 2 WHERE Entry = 19456;
DELETE FROM creature_movement_template WHERE entry = 19456;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(19456,1,8211.638,-6334.247,64.63468,0.327416,5000,3); -- this may not be complete path ..but is better than current one we have
