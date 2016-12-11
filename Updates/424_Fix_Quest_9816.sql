-- =================================================
-- Fix Quest 9816 "Have You Ever Seen One of These?" - UDB Backport (TBC-DB Missing Some Of The Script)
-- =================================================
DELETE FROM dbscripts_on_event WHERE id IN (11424);
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('11424','1','9','6781','180','0','0','0','0','0','0','0','0','0','0','0','Spawn Murloc Cage - Quest 9816');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('11424','3','10','15360','30000','0','0','0','0','0','0','0','1177.41','8130.6','19.5487','1.30308','Summon Green Baby Murloc - Quest 9816');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('11424','3','10','15356','30000','0','0','0','0','0','0','0','1178.06','8130.23','19.6021','1.19312','Summon Blue Baby Murloc - Quest 9816');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('11424','3','10','15359','30000','0','0','0','0','0','0','0','1178.83','8129.72','19.6777','1.24653','Summon Pink Baby Murloc - Quest 9816');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('11424','3','10','15357','30000','0','0','0','0','0','0','0','1179.64','8129.31','19.648','1.25203','Summon Purple Baby Murloc - Quest 9816');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('11424','3','8','18152','0','0','0','0','0','0','0','0','0','0','0','0','Quest 9816 Credit');

-- ===================
-- Baby Murloc Pathing
-- ===================
-- Green Baby Murloc
UPDATE creature_template SET MovementType=2 WHERE entry IN (15360);
DELETE FROM creature_movement_template WHERE entry IN (15360);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15360','1','1177.41','8130.6','19.5487','2000','5','0','0','0','0','0','0','0','1.30308','0','0'); -- Run Mode On
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15360','2','1174.7','8140.84','18.4612','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15360','3','1169.83','8146.35','19.4173','60000','3','0','0','0','0','0','10','32041','5.38794','0','0'); -- Disable Waypoint Movement and Emote and Cast Spell

-- Blue Baby Murloc
UPDATE creature_template SET MovementType=2 WHERE entry IN (15356);
DELETE FROM creature_movement_template WHERE entry IN (15356);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15356','1','1178.06','8130.23','19.6021','2000','5','0','0','0','0','0','0','0','1.19312','0','0'); -- Run Mode On
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15356','2','1182.09','8139.53','18.1094','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15356','3','1186.12','8152.54','17.7015','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15356','4','1182.87','8163','18.8223','60000','3','0','0','0','0','0','10','32041','5.18295','0','0'); -- Disable Waypoint Movement and Emote and Cast Spell

-- Pink Baby Murloc
UPDATE creature_template SET MovementType=2 WHERE entry IN (15359);
DELETE FROM creature_movement_template WHERE entry IN (15359);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15359','1','1178.83','8129.72','19.6777','2000','5','0','0','0','0','0','0','0','1.24653','0','0'); -- Run Mode On
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15359','2','1182.94','8136.54','18.4035','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15359','3','1195.27','8145.66','17.5406','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15359','4','1200.9','8154.68','17.6496','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15359','5','1205.64','8158.1','18.7999','60000','3','0','0','0','0','0','10','32041','3.79908','0','0'); -- Disable Waypoint Movement and Emote and Cast Spell

-- Purple Baby Murloc
UPDATE creature_template SET MovementType=2 WHERE entry IN (15357);
DELETE FROM creature_movement_template WHERE entry IN (15357);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15357','1','1179.64','8129.31','19.648','2000','5','0','0','0','0','0','0','0','1.25203','0','0'); -- Run Mode On
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15357','2','1184.77','8132.84','18.4783','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15357','3','1200.27','8142.23','17.8096','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15357','4','1204.63','8140.32','18.6965','60000','3','0','0','0','0','0','10','32041','2.79691','0','0'); -- Disable Waypoint Movement and Emote and Cast Spell


