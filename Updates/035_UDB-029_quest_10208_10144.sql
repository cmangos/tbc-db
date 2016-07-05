-- Disrupt Their Reinforcements(q.10208)- H (q.10144)-A
DELETE FROM dbscripts_on_go_template_use WHERE id IN (184289,184290,184414,184415);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184289,0,9,0,60,183816,30,7,0,0,0,0,0,0,0,0,'respawn gobject'),
(184290,0,9,0,60,183816,30,7,0,0,0,0,0,0,0,0,'respawn gobject'),
(184414,0,9,0,60,183816,30,7,0,0,0,0,0,0,0,0,'respawn gobject'),
(184415,0,9,0,60,183816,30,7,0,0,0,0,0,0,0,0,'respawn gobject');
 -- Hellfire Fire - req. for (q.) -- sniff
DELETE FROM gameobject WHERE guid BETWEEN 39908 AND 39911;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(39908, 183816, 530, 1, -84.5415, 1881.739, 73.82645, 3.35296, 0, 0, 0.984807, 0.1736523, -60, 255, 1), -- Xilus
(39909, 183816, 530, 1, 147.0184, 1717.341, 37.46404, -0.9424766, 0, 0, -0.45399, 0.8910068, -60, 255, 1), -- Kruul
(39910, 183816, 530, 1, -545.2587, 1781.167, 56.22634, 2.146753, 0, 0, 0.8788166, 0.4771597, -60, 255, 1), -- Kaalez
(39911, 183816, 530, 1, -418.627, 1847.49, 80.7808, 1.48097, 0, 0, 0.674647, 0.738141, -60, 255, 1); -- Grimh
-- Gateways in Hellfire Peninsula (sniffs)
-- Gateway Murketh
UPDATE gameobject SET position_x = -144.4861, position_y = 1511.453, position_z = 29.58671, orientation = 3.028119, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 0 WHERE id = 183350; 
-- Gateway Shaadraz 
UPDATE gameobject SET position_x = -303.5573, position_y = 1526.004, position_z = 33.8859, orientation = -2.993238, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 0 WHERE id = 183351; 
-- 'Portal Grimh'
UPDATE gameobject SET position_x = -418.401, position_y = 1848.877, position_z = 78.58884, orientation = 1.53589, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 0 WHERE id = 184414; 
-- 'Portal Kaalez'
UPDATE gameobject SET position_x = -548.9393, position_y = 1783.983, position_z = 56.2879, orientation = 2.652893, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 0 WHERE id = 184415;
-- 'Portal Xilus'
UPDATE gameobject SET position_x = -84.78993, position_y = 1881.726, position_z = 72.19016, orientation = 2.54818, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 0 WHERE id = 184290;
-- 'Portal Kruul'
UPDATE gameobject SET position_x = 147.0052, position_y = 1718.116, position_z = 35.80159, orientation = 3.14126, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 0 WHERE id = 184289;



