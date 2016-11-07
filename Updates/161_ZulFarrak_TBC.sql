-- ======================
-- ZUL'FARRAK TBC UPDATES
-- ======================

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (8127,7267,7273,7795,7796,7797,7275,7272,7271);

-- Remove Run On Script For a Boss
UPDATE creature_movement_template SET script_id=0 WHERE entry=7795 and point=1;

-- Modify Spawntime and Add Pathing Fixes for Gahz'rilla
DELETE FROM dbscripts_on_event WHERE id IN (2488);
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2488','2','10','7273','1200000','0','0','0','0','0','0','0','1665.56','1187.32','6.64','3.9','Spawn Gahz\'rilla');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2488','3','20','2','0','7273','150','4','0','0','0','0','0','0','0','0','Gahz\'rilla - Start WP Movement Out Of Pool');

DELETE FROM creature_movement_template WHERE entry=7273;
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('7273','1','1687.21','1210.49','10.3316','0','0','0','0','0','0','0','0','0','0.796412','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('7273','2','1699.2','1222.74','8.87748','0','0','0','0','0','0','0','0','0','0.796412','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('7273','3','1683.34','1236.87','8.87748','0','0','0','0','0','0','0','0','0','2.38056','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('7273','4','1707.59','1210.26','8.87748','0','0','0','0','0','0','0','0','0','5.44126','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('7273','5','1682.81','1235.4','8.87748','0','0','0','0','0','0','0','0','0','2.32716','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('7273','6','1697.9','1219.16','8.87748','0','0','0','0','0','0','0','0','0','5.33837','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('7273','7','1691.25','1213.54','8.88568','0','0','0','0','0','0','0','0','0','3.8092','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('7273','8','1703.23','1230.88','8.90958','0','0','0','0','0','0','0','0','0','0.958994','0','0');


-- =======================
-- Fix NPC Walk/Run Speeds - Are Revered for most NPC
-- =======================
-- ('5648','Sandfury Shadowcaster','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (5648);
-- ('5649','Sandfury Blood Drinker','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (5649);
-- ('5650','Sandfury Witch Doctor','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (5650);
-- ('7246','Sandfury Shadowhunter','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7246);
-- ('7247','Sandfury Soul Eater','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7247);
-- ('7267','Chief Ukorz Sandscalp','2.02','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='2.02' WHERE entry IN (7267);
-- ('7268','Sandfury Guardian','1.65','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.65' WHERE entry IN (7268);
-- ('7271','Witch Doctor Zum\'rah','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7271);
-- ('7272','Theka the Martyr','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7272);
-- ('7273','Gahz'rilla','4.99','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='4.99' WHERE entry IN (7273);
-- ('7274','Sandfury Executioner','2.02','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='2.02' WHERE entry IN (7274);
-- ('7604','Sergeant Bly','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7604);
-- ('7605','Raven','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7605);
-- ('7606','Oro Eyegouge','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7606);
-- ('7607','Weegli Blastfuse','1.62','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.62' WHERE entry IN (7607);
-- ('7608','Murta Grimgut','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7608);
-- ('7795','Hydromancer Velratha','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (7795);
-- ('7797','Ruuzlu','2.02','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='2.02' WHERE entry IN (7797);
-- ('8095','Sul\'lithuz Sandcrawler','1.64','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.64' WHERE entry IN (8095);
-- ('8120','Sul\'lithuz Abomination','1.67','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.67' WHERE entry IN (8120);
-- ('8127','Antu\'sul','1.68','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.68' WHERE entry IN (8127);
-- ('10082','Zerillis','1.67','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.67' WHERE entry IN (10082);
-- ('15578','Elder Wildmane','1.25','1.14286')
UPDATE creature_template SET SpeedWalk='1.14286', SpeedRun='1.25' WHERE entry IN (15578);


-- ================
-- Fix Stairs Event
-- ================
DELETE FROM dbscripts_on_event WHERE id IN (2609);
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','8877','9000000','0','0','0','0','0','0','0','1874.74','1199.03','8.96','2.53','Spawn Sandfury Zealot');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','7275','9000000','0','0','0','0','0','0','0','1883.98','1201.66','8.96','1.71','Spawn Shadowpriest Sezz\'ziz');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','7796','9000000','0','0','0','0','0','0','0','1882.32','1201.45','8.96','6.05','Spawn Nekrum Gutchewer');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','8877','9000000','0','0','0','0','0','0','0','1895.16','1198.05','8.96','1.51','Spawn Sandfury Zealot');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','8876','9000000','0','0','0','0','0','0','0','1873.31','1197.55','8.96','4.6','Spawn Sandfury Acolyte');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','8876','9000000','0','0','0','0','0','0','0','1876.98','1199.94','8.96','2.19','Spawn Sandfury Acolyte');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','8876','9000000','0','0','0','0','0','0','0','1890.55','1199.94','8.96','4.46','Spawn Sandfury Acolyte');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','8876','9000000','0','0','0','0','0','0','0','1888.45','1200.17','8.96','1.11','Spawn Sandfury Acolyte');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','32','0','0','7608','150','4','0','0','0','0','0','0','0','0','Murta Grimgut - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','32','0','0','7607','150','4','0','0','0','0','0','0','0','0','Weegli Blastfuse - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','32','0','0','7606','150','4','0','0','0','0','0','0','0','0','Oro Eyegouge - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','32','0','0','7605','150','4','0','0','0','0','0','0','0','0','Raven - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','0','0','0','7604','150','4','2000005567','0','0','0','0','0','0','0','Sergeant Bly - Yell At Movement Start');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','32','0','0','7604','150','4','0','0','0','0','0','0','0','0','Sergeant Bly - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','25','0','0','7607','150','4','0','0','0','0','0','0','0','0','Weegli Blastfuse - Set Run Off');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7789','9000000','0','0','0','0','0','0','0','1891.6','1209.43','8.87','1.59','Spawn Sandfury Cretin');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7789','9000000','0','0','0','0','0','0','0','1878.07','1216.37','8.93','1.59','Spawn Sandfury Cretin');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7789','9000000','0','0','0','0','0','0','0','1897.06','1216.08','8.87','3.12','Spawn Sandfury Cretin');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7789','9000000','0','0','0','0','0','0','0','1878.61','1202.73','8.87','1.59','Spawn Sandfury Cretin');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1906.3','1220.33','9.03','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1886.06','1213.2','8.87','3.12','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1868.75','1213.85','9.47','3.08','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1882.5','1203.33','8.87','0.37','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1887.19','1205.09','8.87','3.42','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1881.32','1205.39','8.87','0.97','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1872.73','1203.04','8.87','6.26','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1869.46','1210.38','9.15','2.46','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1901.34','1206.06','8.87','5.72','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','250','10','8877','9000000','0','0','0','0','0','0','0','1878.94','1200.57','8.96','2.6','Spawn Sandfury Zealot');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1903.49','1211.52','8.88','0.61','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7789','9000000','0','0','0','0','0','0','0','1899.63','1202.52','8.87','2.46','Spawn Sandfury Cretin');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7789','9000000','0','0','0','0','0','0','0','1896.46','1205.62','8.87','5.72','Spawn Sandfury Cretin');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7789','9000000','0','0','0','0','0','0','0','1873.63','1204.65','8.87','0.61','Spawn Sandfury Cretin');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7789','9000000','0','0','0','0','0','0','0','1877','1207.27','8.87','3.8','Spawn Sandfury Cretin');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1883.74','1212.35','8.87','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1889.94','1212.21','8.87','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1874.57','1214.16','8.87','3.12','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1893.07','1215.26','8.87','3.08','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1877.4','1216.41','8.97','0.37','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1898.23','1217.97','8.87','3.42','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1889.82','1222.51','9.03','0.97','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7788','9000000','0','0','0','0','0','0','0','1883.76','1222.3','9.11','6.26','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1886.93','1221.4','8.94','1.6','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1883.5','1218.25','8.9','0.67','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1890.08','1218.68','8.87','1.59','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1894.72','1221.91','8.87','2.34','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1892.28','1225.49','9.57','5.63','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1886.97','1225.86','9.85','5.79','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1882.07','1225.7','9.32','5.69','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1879.02','1223.06','9.12','5.91','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1875.18','1221.24','9.21','0.84','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1873.45','1204.44','8.87','0.88','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1894.64','1206.29','8.87','2.22','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','100','10','7787','9000000','0','0','0','0','0','0','0','1902.83','1223.41','8.96','3.95','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1891.6','1209.43','8.87','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1878.07','1216.37','8.93','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1897.06','1216.08','8.87','3.12','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1878.61','1202.73','8.87','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1906.3','1220.33','9.03','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1886.06','1213.2','8.87','3.12','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1868.75','1213.85','9.47','3.08','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1882.5','1203.33','8.87','0.37','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1887.19','1205.09','8.87','3.42','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1881.32','1205.39','8.87','0.97','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1872.73','1203.04','8.87','6.26','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1869.46','1210.38','9.15','2.46','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1901.34','1206.06','8.87','5.72','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1903.49','1211.52','8.88','0.61','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1899.63','1202.52','8.87','2.46','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1896.46','1205.62','8.87','5.72','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1873.63','1204.65','8.87','0.61','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1877','1207.27','8.87','3.8','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1883.74','1212.35','8.87','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1889.94','1212.21','8.87','1.59','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1874.57','1214.16','8.87','3.12','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1893.07','1215.26','8.87','3.08','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1877.4','1216.41','8.97','0.37','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1898.23','1217.97','8.87','3.42','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1889.82','1222.51','9.03','0.97','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7788','9000000','0','0','0','0','0','0','0','1883.76','1222.3','9.11','6.26','Spawn Sandfury Drudge');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1886.93','1221.4','8.94','1.6','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1883.5','1218.25','8.9','0.67','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1890.08','1218.68','8.87','1.59','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1894.72','1221.91','8.87','2.34','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1892.28','1225.49','9.57','5.63','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1886.97','1225.86','9.85','5.79','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1882.07','1225.7','9.32','5.69','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1879.02','1223.06','9.12','5.91','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1875.18','1221.24','9.21','0.84','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1873.45','1204.44','8.87','0.88','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1894.64','1206.29','8.87','2.22','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','10','10','7787','9000000','0','0','0','0','0','0','0','1902.83','1223.41','8.96','3.95','Spawn Sandfury Slave');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','2','32','0','0','7608','30','4','0','0','0','0','0','0','0','0','Murta Grimgut - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','2','32','0','0','7607','30','4','0','0','0','0','0','0','0','0','Weegli Blastfuse - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','2','32','0','0','7606','30','4','0','0','0','0','0','0','0','0','Oro Eyegouge - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','2','32','0','0','7605','30','4','0','0','0','0','0','0','0','0','Raven - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','2','32','0','0','7604','30','4','0','0','0','0','0','0','0','0','Sergeant Bly - Start WP Movement');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','22','495','0','7605','30','4','0','0','0','0','0','0','0','0','Raven - Update Faction');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','22','495','0','7604','30','4','0','0','0','0','0','0','0','0','Sergeant Bly - Update Faction');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','22','495','0','7607','30','4','0','0','0','0','0','0','0','0','Weegli Blastfuse - Update Faction');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','22','495','0','7606','30','4','0','0','0','0','0','0','0','0','Oro Eyegouge - Update Faction');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','22','495','0','7608','30','4','0','0','0','0','0','0','0','0','Murta Grimgut - Update Faction');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','29','1','2','7607','30','4','0','0','0','0','0','0','0','0','Weegli Blastfuse - Disable Gossip');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','29','1','2','7604','30','4','0','0','0','0','0','0','0','0','Sergeant Bly - Disable Gossip');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','11','27093','9000000','0','0','0','0','0','0','0','0','0','0','0','Open Troll Cage');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','11','27092','9000000','0','0','0','0','0','0','0','0','0','0','0','Open Troll Cage');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','11','27091','9000000','0','0','0','0','0','0','0','0','0','0','0','Open Troll Cage');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','11','27090','9000000','0','0','0','0','0','0','0','0','0','0','0','Open Troll Cage');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('2609','0','11','27089','9000000','0','0','0','0','0','0','0','0','0','0','0','Open Troll Cage');


-- ==========================================================================
-- Move Faction Change Script to Event Instead of Movement For Instant Effect
-- ==========================================================================
DELETE FROM dbscripts_on_creature_movement WHERE id IN (760702,760502,760602,760802,760402) AND command=22;


-- ========================================
-- Sergeant Bly Stairs Event Movement Fixes - Enable Gossip At End of Pathing To Allow Final Combat Sequence With Him
-- ========================================
UPDATE creature_movement_template SET script_id=760408 WHERE entry=7604 and point=8;
DELETE FROM dbscripts_on_creature_movement WHERE id=760408;
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('760408','0','29','1','1','7604','150','4','0','0','0','0','0','0','0','0','Sergeant Bly - Enable Gossip');


-- ============================================
-- Weegli Blastfuse Stairs Event Movement Fixes - Enable Gossip At End of Pathing To Allow Him to Blow the Doors
-- ============================================
UPDATE creature_movement_template SET script_id=760710 WHERE entry=7607 and point=10;
DELETE FROM dbscripts_on_creature_movement WHERE id=760710;
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('760710','0','32','1','0','0','0','0','0','0','0','0','0','0','0','0','Weegli Blastfuse - Pause Movement');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('760710','0','29','1','1','7607','150','4','0','0','0','0','0','0','0','0','Weegli Blastfuse - Enable Gossip');

UPDATE creature_movement_template SET script_id=760711 WHERE entry=7607 and point=11;
DELETE FROM dbscripts_on_creature_movement WHERE id=760711;
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('760711','0','29','1','0','7607','150','4','0','0','0','0','0','0','0','0','Weegli Blastfuse - Disable Gossip');


-- =========================================
-- Dungeon Aggro Linking and Missing Pathing
-- =========================================
-- Linked Aggro Between Sandfury Group 1
DELETE FROM creature_linking WHERE master_guid IN (38003);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38006','38003','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38007','38003','3');

-- Linked Aggro Between Sandfury Group 2
DELETE FROM creature_linking WHERE master_guid IN (38002);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38005','38002','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38008','38002','3');

-- Linked Aggro Between Sandfury Group 3
DELETE FROM creature_linking WHERE master_guid IN (38010);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38009','38010','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38011','38010','3');

-- Linked Aggro Between Sandfury Group 4
DELETE FROM creature_linking WHERE master_guid IN (38012);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38013','38012','3');

-- Linked Aggro Between Sandfury Group 5
DELETE FROM creature_linking WHERE master_guid IN (38017);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38015','38017','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38016','38017','3');

-- Linked Aggro Between Sandfury Group 6
DELETE FROM creature_linking WHERE master_guid IN (42604);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42606','42604','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42600','42604','3');

-- Linked Aggro Between Sandfury Group 7
DELETE FROM creature_linking WHERE master_guid IN (42605);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42607','42605','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42599','42605','3');

-- Linked Aggro Between Sandfury Group 8
DELETE FROM creature_linking WHERE master_guid IN (42611);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42612','42611','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42614','42611','3');

-- Linked Aggro Between Sandfury Group 9
DELETE FROM creature_linking WHERE master_guid IN (42617);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42623','42617','3');

-- Linked Aggro Between Sandfury Group 10
DELETE FROM creature_linking WHERE master_guid IN (42622);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42624','42622','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42625','42622','3');

-- Linked Aggro Between Sandfury Group 11
DELETE FROM creature_linking WHERE master_guid IN (42633);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('43695','42633','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('43697','42633','3');

-- Linked Aggro Between Sandfury Group 12
DELETE FROM creature_linking WHERE master_guid IN (44162);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('44165','44162','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('44167','44162','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('44164','44162','3');

-- Linked Aggro Between Sandfury Group 13
DELETE FROM creature_linking WHERE master_guid IN (81440);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81443','81440','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81444','81440','3');

-- Linked Aggro Between Sandfury Group 14 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81441);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81442','81441','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81450','81441','3');

-- Pathing NPC Main Area
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=44177;
DELETE FROM creature_movement WHERE id=44177;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','1','1654.46','935.442','8.87799','0','0','0','0','0','0','0','0','0','2.50231','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','2','1640.69','945.124','8.87735','0','0','0','0','0','0','0','0','0','2.62012','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','3','1631.83','953.058','8.87735','0','0','0','0','0','0','0','0','0','2.44812','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','4','1623.11','964.1','8.87735','0','0','0','0','0','0','0','0','0','2.17009','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','5','1610.9','972.475','8.88854','0','0','0','0','0','0','0','0','0','2.45755','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','6','1622.63','963.829','8.87704','0','0','0','0','0','0','0','0','0','5.56223','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','7','1633.62','947.458','8.87704','0','0','0','0','0','0','0','0','0','5.30147','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','8','1642.36','939.417','8.87704','0','0','0','0','0','0','0','0','0','5.47348','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','9','1650.27','934.45','8.87704','0','0','0','0','0','0','0','0','0','5.68711','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','10','1655.37','922.445','8.87704','0','0','0','0','0','0','0','0','0','5.06978','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('44177','11','1654.81','932.376','8.87746','0','0','0','0','0','0','0','0','0','1.6266','0','0');

-- Linked Aggro Between Sandfury Group 15 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81616);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81618','81616','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81619','81616','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81624','81616','3');

-- Pathing NPC Behind Huts
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=81623;
DELETE FROM creature_movement WHERE id=81623;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','1','1520.69','980.968','8.9369','0','0','0','0','0','0','0','0','0','5.21508','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','2','1524.13','975.43','9.10959','0','0','0','0','0','0','0','0','0','5.37294','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','3','1531.43','972.003','9.01502','0','0','0','0','0','0','0','0','0','5.84418','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','4','1540.29','971.369','8.90222','0','0','0','0','0','0','0','0','0','6.21175','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','5','1552.21','981.122','9.6992','0','0','0','0','0','0','0','0','0','0.691185','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','6','1559.09','988.132','9.74126','0','0','0','0','0','0','0','0','0','0.794858','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','7','1548.12','977.082','9.47636','0','0','0','0','0','0','0','0','0','3.96708','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','8','1541.08','970.927','8.90171','0','0','0','0','0','0','0','0','0','3.86027','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','9','1533.57','969.839','9.03705','0','0','0','0','0','0','0','0','0','3.28536','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','10','1524.83','975.05','9.0638','0','0','0','0','0','0','0','0','0','2.60363','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','11','1516.07','986.874','9.27751','0','0','0','0','0','0','0','0','0','2.19679','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','12','1514.17','996.03','9.25394','0','0','0','0','0','0','0','0','0','1.77582','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','13','1516.28','1003.88','9.72357','0','0','0','0','0','0','0','0','0','1.36427','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','14','1523.4','1015.26','10.2194','0','0','0','0','0','0','0','0','0','1.01477','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','15','1514.68','1001.68','9.50534','0','0','0','0','0','0','0','0','0','4.14223','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81623','16','1514.33','991.071','9.34771','0','0','0','0','0','0','0','0','0','4.72421','0','0');

-- Linked Aggro Between Sandfury Group 16 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81617);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81620','81617','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81621','81617','3');

-- Linked Aggro Between Sandfury Group 17 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81611);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81610','81611','3');
-- Stop NPC Random Movement
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid=81611;

-- Linked Aggro Between Sandfury Group 18 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81609);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81608','81609','3');

-- Linked Aggro Between Sandfury Group 19 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81606);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81604','81606','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81605','81606','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81607','81606','3');

-- Linked Aggro Between Sandfury Group 20 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81601);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81587','81601','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81588','81601','3');

-- Linked Aggro Between Sandfury Group 21 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81584);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81585','81584','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81586','81584','3');

-- Linked Aggro Between Sandfury Group 22 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81581);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81582','81581','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81583','81581','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81578','81581','3');

-- Linked Aggro Between Sandfury Group 23 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81594);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81592','81594','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81590','81594','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81595','81594','3');

-- Linked Aggro Between Sandfury Group 24 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81598);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81597','81598','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81579','81598','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81568','81598','3');

-- Linked Aggro Between Sandfury Group 25 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81561);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81560','81561','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81562','81561','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81563','81561','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81564','81561','3');

-- Linked Aggro Between Sandfury Group 26 - Left Wing
DELETE FROM creature_linking WHERE master_guid IN (81576);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81571','81576','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81572','81576','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81573','81576','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81574','81576','3');

-- Linked Aggro Between Sandfury Group 27
DELETE FROM creature_linking WHERE master_guid IN (45709);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81449','45709','3');

-- Linked Aggro Between Sandfury Group 28 - Right Wing
DELETE FROM creature_linking WHERE master_guid IN (44225);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('45708','44225','3');

-- Linked Aggro Between Sandfury Group 29 - Right Wing
DELETE FROM creature_linking WHERE master_guid IN (43694);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('45710','43694','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('43696','43694','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('44160','43694','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('43702','43694','3');

-- Linked Aggro Between Sandfury Group 30 - Right Wing
DELETE FROM creature_linking WHERE master_guid IN (42631);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42628','42631','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('42630','42631','3');

-- Linked Aggro Between Sandfury Group 31 - Right Wing
DELETE FROM creature_linking WHERE master_guid IN (81482);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81512','81482','3');

-- Linked Aggro Between Sandfury Group 32 - Right Wing
DELETE FROM creature_linking WHERE master_guid IN (81515);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81516','81515','3');

-- Linked Aggro Between Sandfury Group 33 - Right Wing
DELETE FROM creature_linking WHERE master_guid IN (81508);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81509','81508','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81511','81508','3');

-- Linked Aggro Between Sandfury Group 34 - Temple Area
DELETE FROM creature_linking WHERE master_guid IN (81531);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81530','81531','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81532','81531','3');

-- Linked Aggro Between Sandfury Group 35 - Temple Area
DELETE FROM creature_linking WHERE master_guid IN (81537);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81535','81537','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81534','81537','3');

-- Linked Aggro Between Sandfury Group 36 - Temple Area
DELETE FROM creature_linking WHERE master_guid IN (81536);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81542','81536','3');

-- Linked Aggro Between Sandfury Group 37 - Temple Area
DELETE FROM creature_linking WHERE master_guid IN (81545);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81546','81545','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81547','81545','3');

-- Linked Aggro Between Sandfury Group 38 - Temple Area
DELETE FROM creature_linking WHERE master_guid IN (81551);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81549','81551','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81548','81551','3');

-- Linked Aggro Between Sandfury Group 39 - Temple Area
DELETE FROM creature_linking WHERE master_guid IN (81543);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81539','81543','3');

-- 2 Sandfury Pathing Up to Final Boss - Linked Aggro and Pathing
UPDATE creature SET position_x = '1827.798340', position_y = '1122.048950', position_z = '25.705759', orientation = '3.905042', SpawnDist=0, MovementType=0 WHERE guid = '81528';
DELETE FROM creature_linking WHERE master_guid IN (81529);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81528','81529','515');

-- Linked Aggro Between Abominations - Final Boss
DELETE FROM creature_linking WHERE master_guid IN (81565);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81527','81565','3');

-- Linked Aggro Between Sandfury Guardians - Final Boss
DELETE FROM creature_linking WHERE master_guid IN (38000);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38001','38000','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('37999','38000','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('37998','38000','3');




