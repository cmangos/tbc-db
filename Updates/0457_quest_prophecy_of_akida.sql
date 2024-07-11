-- Quest 'The Prophecy of Akida'
-- Correct timers for gameobject usage script

DELETE FROM dbscripts_on_go_template_use WHERE id = 181714;
DELETE FROM dbscripts_on_go_template_use WHERE id BETWEEN 181720 AND 181733;
INSERT INTO dbscripts_on_go_template_use (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 181714
(181714,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181714,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181714,3000,0,0,0,0,0,17375,90997,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181714,6000,0,25,1,0,0,17375,90997,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - Stillpine Captive - RUN ON'),
(181714,6000,1,21,1,0,0,17375,90997,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181714,6000,2,20,2,0,0,17375,90997,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181720
(181720,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181720,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181720,3000,0,0,0,0,0,17375,91000,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181720,6000,0,25,1,0,0,17375,91000,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - Stillpine Captive - RUN ON'),
(181720,6000,1,21,1,0,0,17375,91000,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181720,6000,2,20,2,0,0,17375,91000,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181721
(181721,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181721,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181721,3000,0,0,0,0,0,17375,90998,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181721,6000,0,25,1,0,0,17375,90998,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181721,6000,1,21,1,0,0,17375,90998,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181721,6000,2,20,2,0,0,17375,90998,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181722
(181722,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181722,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181722,3000,0,0,0,0,0,17375,90999,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181722,6000,0,25,1,0,0,17375,90999,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181722,6000,1,21,1,0,0,17375,90999,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181722,6000,2,20,2,0,0,17375,90999,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181723
(181723,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181723,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181723,3000,0,0,0,0,0,17375,91002,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181723,6000,0,25,1,0,0,17375,91002,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181723,6000,1,21,1,0,0,17375,91002,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181723,6000,2,20,2,0,0,17375,91002,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181724
(181724,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181724,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181724,3000,0,0,0,0,0,17375,90995,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181724,6000,0,25,1,0,0,17375,90995,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181724,6000,1,21,1,0,0,17375,90995,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181724,6000,2,20,2,0,0,17375,90995,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181725
(181725,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181725,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181725,3000,0,0,0,0,0,17375,91001,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181725,6000,0,25,1,0,0,17375,91001,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181725,6000,1,21,1,0,0,17375,91001,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181725,6000,2,20,2,0,0,17375,91001,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181726
(181726,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181726,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181726,3000,0,0,0,0,0,17375,90994,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181726,6000,0,25,1,0,0,17375,90994,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181726,6000,1,21,1,0,0,17375,90994,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181726,6000,2,20,2,0,0,17375,90994,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181727
(181727,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181727,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181727,3000,0,0,0,0,0,17375,90996,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181727,6000,0,25,1,0,0,17375,90996,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181727,6000,1,21,1,0,0,17375,90996,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181727,6000,2,20,2,0,0,17375,90996,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181728
(181728,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181728,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181728,3000,0,0,0,0,0,17375,91008,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181728,6000,0,25,1,0,0,17375,91008,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181728,6000,1,21,1,0,0,17375,91008,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181728,6000,2,20,2,0,0,17375,91008,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181729
(181729,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181729,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181729,3000,0,0,0,0,0,17375,91007,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181729,6000,0,25,1,0,0,17375,91007,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181729,6000,1,21,1,0,0,17375,91007,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181729,6000,2,20,2,0,0,17375,91007,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181730
(181730,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181730,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181730,3000,0,0,0,0,0,17375,91006,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181730,6000,0,25,1,0,0,17375,91006,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181730,6000,1,21,1,0,0,17375,91006,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181730,6000,2,20,2,0,0,17375,91006,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181731
(181731,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181731,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181731,3000,0,0,0,0,0,17375,91005,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181731,6000,0,25,1,0,0,17375,91005,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181731,6000,1,21,1,0,0,17375,91005,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181731,6000,2,20,2,0,0,17375,91005,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181732
(181732,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181732,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181732,3000,0,0,0,0,0,17375,91004,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181732,6000,0,25,1,0,0,17375,91004,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181732,6000,1,21,1,0,0,17375,91004,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181732,6000,2,20,2,0,0,17375,91004,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints'),
-- 181733
(181733,0,0,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - search for 17375'),
(181733,1,1,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bristlelimb Cage - killcredit'),
(181733,3000,0,0,0,0,0,17375,91003,3 | 0x10,13837,13980,13978,13979,0,0,0,0,'Stillpine Captive - random say'),
(181733,6000,0,25,1,0,0,17375,91003,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - RUN ON'),
(181733,6000,1,21,1,0,0,17375,91003,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - active'),
(181733,6000,2,20,2,0,0,17375,91003,7 | 0x10,0,0,0,0,0,0,0,0,'Stillpine Captive - movement changed to 2:waypoints');

-- After using the cage, Stillspine Captive run away, when they respawn reset the cage to make them usable again
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 19970 AND 19984;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19970,1,12,42106,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19971,1,12,42104,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19972,1,12,42107,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19973,1,12,42099,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19974,1,12,42101,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19975,1,12,42102,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19976,1,12,42100,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19977,1,12,42105,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19978,1,12,42103,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19979,1,12,42113,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19980,1,12,42112,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19981,1,12,42111,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19982,1,12,42110,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19983,1,12,42109,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage'),
(19984,1,12,42108,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillspine Captive - Close Bristlelimb Cage');

DELETE FROM creature_spawn_data_template WHERE entry BETWEEN 19984 AND 19999;
DELETE FROM creature_spawn_data WHERE guid BETWEEN 90994 AND 91008;
