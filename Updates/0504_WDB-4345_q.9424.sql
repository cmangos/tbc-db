-- q.9424 'Makuru's Vengeance'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (9424);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9424,1,31,16834,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 16834'),
(9424,2,21,1,0,0,16834,30,7,0,0,0,0,0,0,0,0,'buddy active'),
(9424,3,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self active'),
(9424,4,29,3,0,0,16834,30,7,0,0,0,0,0,0,0,0,'buddy NpcFlags removed'),
(9424,5,3,0,0,0,16834,30,7,0,0,0,0,92.81966,4346.379,101.9341,100,'buddy move'),
(9424,1000,3,0,0,0,16834,30,7,0,0,0,0,95.89757,4344.956,101.8091,100,'buddy move'),
(9424,4000,0,0,0,0,16834,30,0,13991,0,0,0,0,0,0,0,'buddy text'),
(9424,5000,36,0,0,0,16834,30,1,0,0,0,0,0,0,0,0,'face buddy'),
(9424,10000,0,0,0,0,0,0,0,13996,0,0,0,0,0,0,0,'say'),
(9424,13000,0,0,0,0,16834,30,0,13992,0,0,0,0,0,0,0,'buddy text'),
(9424,20000,3,0,0,0,16834,30,7,0,0,0,0,90.83843,4351.733,103.1783,100,'buddy move'),
(9424,20001,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.29351,'set orientation'),
(9424,23000,3,0,0,0,16834,30,7,0,0,0,0,0,0,0,4.642576,'buddy move'),
(9424,23500,29,3,1,0,16834,30,7,0,0,0,0,0,0,0,0,'buddy NpcFlags added'),
(9424,23600,21,0,0,0,16834,30,7,0,0,0,0,0,0,0,0,'buddy unactive'),
(9424,23601,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self active');
UPDATE quest_template SET CompleteScript = 9424 WHERE entry = 9424;

