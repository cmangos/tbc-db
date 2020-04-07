-- Fix Talbuk Stags c.17130 not aggroing properly in Nesingwary Safari event


-- Add missing waittime causing DBerrors and interrupting DBScripts
DELETE FROM `creature_movement_template` WHERE `entry`=17130;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(17130,1,1,-1404.007,6327.922,39.87714,20000,1713001,5.099442),
(17130,1,2,-1414.938,6305.905,42.40896,20000,1713001,2.952087),
(17130,1,3,-1416.502,6317.921,40.0441,20000,1713001,0.466735);

-- Make sure Nesingwary and Fitz are really put into combat with all 3 Talbuk Stags
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1713001);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1713001,0,22,14,0,0,0,0,0,0,0,0,0,'Talbuk Stag - Set Faction to 14',0,0,0,0),
(1713001,0,20,1,5,0,0,0,0,0,0,0,0,'Talbuk Stag - Set Random Movement',0,0,0,0),
(1713001,10000,26,0,0,0,0,0,0,0,18180,65,1,'Talbuk Stag - Start Attack on Hemet Nesingwary',0,0,0,0),
(1713001,12000,26,0,0,0,0,0,0,0,18180,65,0,'Hemet Nesingwary - Start Attack on Talbuk Stag',0,0,0,0), -- Make sure Nesingwary and Fitz are really put into combat with all 3 Talbuk Stags
(1713001,12000,26,0,0,0,0,0,0,0,18200,65,0,'Shado ''Fitz'' Farstrider - Start Attack on Talbuk Stag',0,0,0,0);

