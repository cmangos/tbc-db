-- ------------------
-- CompleteScript for Into the Churning Gulch (10715)
-- ------------------

UPDATE quest_template SET DetailsEmote1=1, DetailsEmote2=1, IncompleteEmote=6, CompleteEmote=6, OfferRewardEmote1=1, CompleteScript=10715 WHERE entry=10715;
UPDATE creature_template SET SpeedWalk=1 WHERE entry=22103;

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10715;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10715,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Move',2915.57,5957.42,3.27419,2.97874),
(10715,3,42,0,0,0,2716,3757,0,0,0,0,0,'Baron Sablemane - Set Equipment',0,0,0,0),
(10715,4,1,133,0,0,0,0,0,0,0,0,0,'Baron Sablemane - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(10715,10,1,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - ONESHOT_NONE',0,0,0,0),
(10715,11,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Move',2919.109,5956.932,3.180902,1.58825),
(10715,13,36,1,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Reset Facing',0,0,0,0),
(10715,13,42,1,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Restore Default Equipment',0,0,0,0),
(10715,15,0,0,0,0,2000000184,0,0,0,0,0,0,'Baron Sablemane - There, it is completed.',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry`=2000000184;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000000184, 'There, it is completed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Baron Sablemane (Entry: 22103)');

