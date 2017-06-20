UPDATE quest_template SET DetailsEmote1=1, DetailsEmote2=1, IncompleteEmote=6, CompleteEmote=6, OfferRewardEmote1=1, CompleteScript=10715 WHERE entry=10715;
UPDATE creature_template SET SpeedWalk=1 WHERE entry=22103;

DELETE FROM `creature_movement_template` WHERE `entry`=22103;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22103,2,2916.146,5958.854,3.411493,10000,2210301,2.879793),
(22103,3,2918.75,5957.291,3.286493,0,0,0),
(22103,5,2919.109,5956.932,3.180902,1000,2210302,1.58825);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2226801,2210302);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2210301,1,42,0,0,0,2716,3757,0,0,0,0,0,'Baron Sablemane - Set Equipment',0,0,0,0),
(2210301,2,1,133,0,0,0,0,0,0,0,0,0,'Baron Sablemane - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(2210301,8,1,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - ONESHOT_NONE',0,0,0,0),

(2210302,0,20,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Set Idle Movement',0,0,0,0),
(2210302,0,42,1,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Restore Default Equipment',0,0,0,0),
(2210302,1,0,0,0,0,2000001224,0,0,0,0,0,0,'Baron Sablemane - There, it is completed.',0,0,0,0);

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10715;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10715,0,20,2,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Set Waypoint Movement PathId 0',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry`=2000001224;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001224, 'There, it is completed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Baron Sablemane (Entry: 22103)');

