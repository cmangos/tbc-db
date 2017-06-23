UPDATE creature_template SET MovementType=2 WHERE entry=19661;
UPDATE creature SET MovementType=2 WHERE guid=70160;
DELETE FROM `creature_movement_template` WHERE `entry`=19661;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19661,1,-2082.395,5283.821,-37.32355,19000,1966101,100),
(19661,2,-2080.562,5286.817,-37.32355,120000,0,0.457883);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1966101);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1966101,0,1,133,0,0,0,0,0,0,0,0,0,'Viggz Shinesparked - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(1966101,17,1,0,0,0,0,0,0,0,0,0,0,'Viggz Shinesparked - ONESHOT_NONE',0,0,0,0);

