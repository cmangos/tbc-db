
UPDATE `creature_template_addon` SET `emote`='0' WHERE  `entry`=20124;
UPDATE creature SET MovementType=2 WHERE guid=71625;
UPDATE creature_template SET MovementType=2 WHERE entry=20124;
DELETE FROM `creature_movement_template` WHERE `entry`=20124;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20124,1,-1847.755,5230.35,-38.04539,25000,2012402,4.77226),
(20124,2,-1850.955,5228.034,-38.04538,110000,2012401,4.652941);


DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2012401,2012402);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2012401,0,42,0,0,0,10612,0,0,0,0,0,0,'Kradu Grimblade - Set Equipment Slots',0,0,0,0),

(2012402,1,42,0,0,0,1903,0,0,0,0,0,0,'Kradu Grimblade - Set Equipment Slots',0,0,0,0),
(2012402,1,1,173,0,0,0,0,0,0,0,0,0,'Kradu Grimblade - STATE_WORK',0,0,0,0),
(2012402,20,1,0,0,0,0,0,0,0,0,0,0,'Kradu Grimblade - ONESHOT_NONE',0,0,0,0);

