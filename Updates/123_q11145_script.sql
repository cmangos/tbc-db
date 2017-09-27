-- Script Quest 11145 (Prisoners of the Grimtotems)

SET @CAGE := '186287'; -- Blackhoof Cage
SET @PRISONER = '23720'; -- Theramore Prisoner

SET @TEXT := '2000000502';

UPDATE `gameobject_template` SET `data2` = 24618320 WHERE `entry` = @CAGE;

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = @CAGE;
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`,`data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(@CAGE, '1', '0', '0', '0', @PRISONER, '10', '0', @TEXT, '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner freed speech'),
(@CAGE, '0', '25', '1', '0', @PRISONER, '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner start running'),
(@CAGE, '3', '20', '2', '0', @PRISONER, '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner start waypoint movement');

DELETE FROM `creature_movement` WHERE `id` IN (31050, 31074, 31072, 31641, 31639, 31645, 30923);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(31050, 1, -2439.756104, -3127.879883, 35.609917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.517100, 0, 0),
(31074, 1, -2440.201660, -3127.002197, 35.528820, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.282691, 0, 0),
(31072, 1, -2460.957520, -3137.503906, 34.511444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.158986, 0, 0),
(31641, 1, -2475.246094, -3155.345947, 33.816788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.095654, 0, 0),
(31639, 1, -2481.687012, -3172.052979, 32.952049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.272025, 0, 0),
(31645, 1, -2452.580811, -3181.392822, 33.557426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.964553, 0, 0),
(30923, 1, -2424.87906, -3157.052002, 35.857067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.942391, 0, 0);

DELETE FROM `dbscripts_on_go_use` WHERE `id` IN (11707, 11184, 11719, 11710, 11708, 11185, 11183);
INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`,`data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('11707', '10', '18', '0', '0', @PRISONER, '31050', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner despawn'),
('11184', '10', '18', '0', '0', @PRISONER, '31074', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner despawn'),
('11719', '10', '18', '0', '0', @PRISONER, '31639', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner despawn'),
('11710', '10', '18', '0', '0', @PRISONER, '31072', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner despawn'),
('11708', '10', '18', '0', '0', @PRISONER, '31641', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner despawn'),
('11185', '10', '18', '0', '0', @PRISONER, '30923', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner despawn'),
('11183', '10', '18', '0', '0', @PRISONER, '31645', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'Theramore Prisoner despawn');

DELETE FROM `db_script_string` WHERE `entry` = @TEXT;
INSERT INTO `db_script_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`, `content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES	
(@TEXT,'Thank you! There''s no telling what those brutes would''ve done to me.',null,null,null,null,null,null,null,null,0,0,0,2,'Theramore Prisoner freed');


