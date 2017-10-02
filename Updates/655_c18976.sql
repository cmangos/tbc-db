-- ------------------------
-- Urga'zz c.18976
-- Path and texts
-- ------------------------
UPDATE creature SET MovementType=2, spawndist=0 WHERE id=18976;
DELETE FROM `creature_movement_template` WHERE `entry`=18976;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(18976,1,391.559,2749.55,51.89393,14000,1897602,100),
(18976,2,390.0903,2736.563,51.86609,0,0,0),
(18976,3,401.9739,2730.862,51.95135,10000,0,3.141593),
(18976,4,394.0564,2730.629,52.12142,13000,1897601,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1897601,1897602);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1897601,5,0,0,0,0,2000001441,0,0,0,0,0,0,'Urga''zz - Work harder!',0,0,0,0),

(1897602,3,0,0,0,0,2000001442,0,0,0,0,0,0,'Urga''zz - Mine rock! Crack stone! Faster! Faster!',0,0,0,0);


DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001441 AND 2000001442;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001441, 'Work harder!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Urga''zz (Entry: 18976)'),
(2000001442, 'Mine rock! Crack stone! Faster! Faster!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Urga''zz (Entry: 18976)');

