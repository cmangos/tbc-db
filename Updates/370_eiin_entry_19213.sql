UPDATE creature_template SET MovementType=2 WHERE entry=19213;
UPDATE creature SET MovementType=2 WHERE guid=68743;
DELETE FROM `creature_movement_template` WHERE `entry`=19213;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19213,1,-2074.096,5269.769,-37.32357,30000,0,100),
(19213,2,-2077.258,5270.031,-37.32357,37000,0,100); -- 1921301

-- Sniffs say he should do emote 69, but seems like that emote did not exist for this npc model in tbc. Commenting out for now, path and waittimes are probably still valid.
-- DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1921301);
-- INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
-- (1921301,0,1,69,0,0,0,0,0,0,0,0,0,'Eiin - STATE_USESTANDING',0,0,0,0),
-- (1921301,35,1,0,0,0,0,0,0,0,0,0,0,'Eiin - ONESHOT_NONE',0,0,0,0);


