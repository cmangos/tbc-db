-- q.9740 'The Sun Gate' - Fix

-- object
-- Sunhawk Portal Controller 184850
UPDATE gameobject SET position_x = -2095.8616, position_y = -10684.027, position_z = 65.50377, orientation = 4.6076717, rotation0 = 0, rotation1 = 0, rotation2 = -0.74314404, rotation3 = 0.66913146 WHERE guid = 12168;
UPDATE gameobject SET position_x = -2108.2053, position_y = -10702.747, position_z = 65.12371, orientation = 2.1991146, rotation0 = 0, rotation1 = 0, rotation2 = 0.89100647, rotation3 = 0.45399064 WHERE guid = 12173;
UPDATE gameobject SET position_x = -2124.9773, position_y = -10723.369, position_z = 66.95319, orientation = 0.5934101, rotation0 = 0, rotation1 = 0, rotation2 = 0.2923708, rotation3 = 0.956305 WHERE guid = 12164;
UPDATE gameobject SET position_x = -2145.9783, position_y = -10739.215, position_z = 73.35752, orientation = 1.7627825, rotation0 = 0, rotation1 = 0, rotation2 = 0.77162457, rotation3 = 0.63607824 WHERE guid = 12166;
UPDATE gameobject SET spawntimesecsmin = 240, spawntimesecsmax = 240 WHERE id = 184850;
-- moveed to TBC range
UPDATE gameobject SET guid = 5309998 WHERE guid = 12168;
UPDATE gameobject SET guid = 5309997 WHERE guid = 12173;
UPDATE gameobject SET guid = 5309996 WHERE guid = 12164;
UPDATE gameobject SET guid = 5309995 WHERE guid = 12166;

-- creatures
-- [DND]Sunhawk Portal Controller 17886
UPDATE creature SET position_x = -2095.9587, position_y = -10685.079, position_z = 65.98636, orientation = 2.7401669, spawndist = 0, MovementType = 0 WHERE guid = 63582;
UPDATE creature SET position_x = -2146.1125, position_y = -10739.214, position_z = 72.8098, orientation = 2.1293, spawndist = 0, MovementType = 0 WHERE guid = 63583;
UPDATE creature SET position_x = -2108.2693, position_y = -10702.699, position_z = 65.06721, orientation = 2.4609, spawndist = 0, MovementType = 0 WHERE guid = 63585;
UPDATE creature SET position_x = -2124.984, position_y = -10723.393, position_z = 66.96701, orientation = 2.1293, spawndist = 0, MovementType = 0 WHERE guid = 63584;
UPDATE creature SET spawntimesecsmin = 240, spawntimesecsmax = 240 WHERE id = 17886;
-- Sun Gate Event Manager 17889
UPDATE creature SET position_x = -2139.9805, position_y = -10687.407, position_z = 71.21289, orientation = 4.956735, spawndist = 0, MovementType = 0 WHERE guid = 63609;
UPDATE creature SET position_x = -2148.1682, position_y = -10696.854, position_z = 70.90049, orientation = 6.05629, spawndist = 0, MovementType = 0 WHERE guid = 63610;
UPDATE creature SET position_x = -2143.4358, position_y = -10691.987, position_z = 76.43099, orientation = 5.61996, spawndist = 0, MovementType = 0 WHERE guid = 63611;
UPDATE creature SET position_x = -2143.433, position_y = -10691.948, position_z = 64.76577, orientation = 4.93928, spawndist = 0, MovementType = 0 WHERE guid = 23682;
-- moveed to TBC range
UPDATE creature SET guid = 5309984 WHERE guid = 63582;
UPDATE creature SET guid = 5309983 WHERE guid = 63583;
UPDATE creature SET guid = 5309982 WHERE guid = 63585;
UPDATE creature SET guid = 5309981 WHERE guid = 63584;
UPDATE creature SET guid = 5309980 WHERE guid = 63609;
UPDATE creature SET guid = 5309979 WHERE guid = 63610;
UPDATE creature SET guid = 5309978 WHERE guid = 63611;
UPDATE creature SET guid = 5309977 WHERE guid = 23682;
-- old Scripts removed
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (63582,63583,63584,63585);
DELETE FROM creature_movement WHERE id IN (63582,63583,63584,63585);
DELETE FROM creature_addon WHERE guid IN (63582,63583,63584,63585);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1788601 AND 1788604;
DELETE FROM dbscripts_on_go_use WHERE id IN (12164,12166,12168,12173);
-- object script
DELETE FROM dbscripts_on_go_template_use WHERE id = 184850;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184850,1,15,7,0,0,17886,7,7,0,0,0,0,0,0,0,0,'buddy self cast');
DELETE FROM dbscripts_on_creature_death WHERE id IN (17886);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17886,1,31,17886,80,0,0,8,0,0,0,0,0,0,0,0,'[DND]Sunhawk Portal Controller - terminate script if alive'),
(17886,3,27,8,0,182026,60,0,0,0,0,0,0,0,0,0,'[DND]Sunhawk Portal Controller 17886 - set GO interact'),
(17886,240000,27,4,0,182026,60,0,0,0,0,0,0,0,0,0,'[DND]Sunhawk Portal Controller 17886 - set GO noninteract');
-- Relay
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 19953 AND 19956;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19953,1,15,31414,0,0,17889,5309980,1|0x10,0,0,0,0,0,0,0,0,'Part of [DND]Sunhawk Portal Controller 17886 EAI: cast on buddy'),
(19954,1,15,31411,0,0,17889,5309979,1|0x10,0,0,0,0,0,0,0,0,'Part of [DND]Sunhawk Portal Controller 17886 EAI: cast on buddy'),
(19955,1,15,31413,0,0,17889,5309978,1|0x10,0,0,0,0,0,0,0,0,'Part of [DND]Sunhawk Portal Controller 17886 EAI: cast on buddy'),
(19956,1,15,31412,0,0,17889,5309977,1|0x10,0,0,0,0,0,0,0,0,'Part of [DND]Sunhawk Portal Controller 17886 EAI: cast on buddy');

