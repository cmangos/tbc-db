UPDATE `creature` SET MovementType=2, spawndist=0 WHERE `guid`=68634;
UPDATE creature_template SET MovementType=2 WHERE entry=19185;
UPDATE creature_template_addon SET bytes1=0 WHERE entry=19185; -- Remove static kneel
DELETE FROM `creature_movement_template` WHERE `entry`=19185;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19185,1,-2068.329,5310.783,-37.32356,180000,0,100),
(19185,2,-2065.293,5308.535,-37.32356,0,0,0),
(19185,3,-2064.65,5310.289,-37.32356,0,0,0),
(19185,4,-2065.71,5311.151,-37.32356,48000,1918501,100),
(19185,5,-2062.945,5314.666,-37.32356,33000,1918502,100),
(19185,6,-2067.947,5314.864,-37.32356,0,0,0),
(19185,7,-2067.375,5316.701,-37.32356,137000,1918503,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1918501,1918502,1918503);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1918501,0,28,8,0,0,0,0,0,0,0,0,0,'Jack Trapper - Set Stand State Kneel',0,0,0,0),
(1918501,46,28,0,0,0,0,0,0,0,0,0,0,'Jack Trapper - Set Stand State Stand',0,0,0,0),

(1918502,0,1,69,0,0,0,0,0,0,0,0,0,'Jack Trapper - STATE_USESTANDING',0,0,0,0),
(1918502,31,1,0,0,0,0,0,0,0,0,0,0,'Jack Trapper - ONESHOT_NONE',0,0,0,0),

(1918503,0,28,8,0,0,0,0,0,0,0,0,0,'Jack Trapper - Set Stand State Kneel',0,0,0,0),
(1918503,135,28,0,0,0,0,0,0,0,0,0,0,'Jack Trapper - Set Stand State Stand',0,0,0,0);


