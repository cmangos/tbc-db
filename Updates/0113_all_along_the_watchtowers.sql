-- fix data for all along the watchtowers - port from classic-db
UPDATE gameobject_template SET data1=15,data3=1,name='Andorhal Tower Two',displayId=299 WHERE entry IN(176095);
DELETE FROM gameobject WHERE id IN(176094,176095,176096,176097);
INSERT INTO gameobject(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('99886', '176094', '0', '1314.08', '-1305.33', '63.7871', '0', '0', '0', '0', '0', '180', '180', '0', '1'),
('99887', '176095', '0', '1467.73', '-1403.47', '67.0566', '0', '0', '0', '0', '0', '180', '180', '0', '1'),
('99888', '176096', '0', '1553.46', '-1488.11', '67.7152', '0', '0', '0', '0', '0', '180', '180', '0', '1'),
('99889', '176097', '0', '1329.93', '-1587.96', '61.1981', '0', '0', '0', '0', '0', '180', '180', '0', '1');

