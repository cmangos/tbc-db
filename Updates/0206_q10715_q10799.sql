-- -----------------------------------------------------------------
-- CompleteScript for Into the Churning Gulch q.10715(H) q.10799(A)
-- -----------------------------------------------------------------

UPDATE quest_template SET CompleteScript=10715 WHERE entry=10715;
UPDATE quest_template SET CompleteScript=10799 WHERE entry=10799;

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10715;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10715,532,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Move',2916.1465,5958.8535,3.4114933,100),
(10715,1985,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Orientation',0,0,0,2.879793167114257812),
(10715,3188,0,42,0,0,0,2716,3757,0,0,0,0,0,'Baron Sablemane - Set Equipment',0,0,0,0),
(10715,4438,0,1,133,0,0,0,0,0,0,0,0,0,'Baron Sablemane - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(10715,10516,0,1,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - ONESHOT_NONE',0,0,0,0),
(10715,11703,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Move',2918.75,5957.291,3.2864933,100),
(10715,12922,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Move',2919.1094,5956.9316,3.1809025,100),
(10715,13719,0,36,1,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Reset Facing',0,0,0,0),
(10715,13719,0,42,1,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Restore Default Equipment',0,0,0,0),
(10715,15485,0,0,0,0,0,2000000184,0,0,0,0,0,0,'Baron Sablemane - There, it is completed.',0,0,0,0);

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10799;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10799,532,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Move',2916.1465,5958.8535,3.4114933,100),
(10799,1985,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Orientation',0,0,0,2.879793167114257812),
(10799,3188,0,42,0,0,0,2716,3757,0,0,0,0,0,'Baron Sablemane - Set Equipment',0,0,0,0),
(10799,4438,0,1,133,0,0,0,0,0,0,0,0,0,'Baron Sablemane - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(10799,10516,0,1,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - ONESHOT_NONE',0,0,0,0),
(10799,11703,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Move',2918.75,5957.291,3.2864933,100),
(10799,12922,0,3,0,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Move',2919.1094,5956.9316,3.1809025,100),
(10799,13719,0,36,1,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Reset Facing',0,0,0,0),
(10799,13719,0,42,1,0,0,0,0,0,0,0,0,0,'Baron Sablemane - Restore Default Equipment',0,0,0,0),
(10799,15485,0,0,0,0,0,2000000184,0,0,0,0,0,0,'Baron Sablemane - There, it is completed.',0,0,0,0);

