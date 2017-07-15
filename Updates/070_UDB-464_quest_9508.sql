-- q.9508 'Call of Water'
-- event 10685
DELETE FROM dbscripts_on_event WHERE id = 10685;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- #1st group
(10685,0,13,0,0,181878,85506,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85507,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85508,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85510,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85516,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85521,1 | 0x10,0,0,0,0,0,0,0,0,''),
-- #2nd group
(10685,1,13,0,0,181878,85511,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85512,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85515,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85517,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85519,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85520,1 | 0x10,0,0,0,0,0,0,0,0,''),
-- #3rd group
(10685,2,13,0,0,181878,85509,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,2,13,0,0,181878,85513,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,2,13,0,0,181878,85514,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,2,13,0,0,181878,85518,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,3,10,6748,60000,0,0,0,0,0,0,0,-1654.51,-10908.6,58.484,5.14168,''),
(10685,3,10,6748,60000,0,0,0,0,0,0,0,-1638.08,-10914.1,58.2585,3.5866,''),
(10685,4,22,1700,0x01 | 0x10 | 0x20 | 0x80,6748,100,7,0,0,0,0,0,0,0,0,'temp faction'),
(10685,6,10,17359,180000,0,0,0,0,0,0,0,-1649.41,-10921.6,58.8228,0.553385,''),
(10685,9,0,0,0,6748,100,7,2000000876,0,0,0,0,0,0,0,''),
(10685,10,31,17359,100,0,0,0,0,0,0,0,0,0,0,0,'search for 17359'), -- in case if someon kills him faster than 3secs
(10685,11,0,0,0,17359,100,7,2000000877,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000000876,2000000877);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000876,'Wrong!  It is YOU that will die, Tel\'athion the Impure!',0,0,0,0,NULL),
(2000000877,'It is YOU who are wrong!  I will deal with you two after I have slain this meddlesome shaman!',0,0,0,0,NULL);
DELETE FROM dbscripts_on_go_template_use WHERE id = 181699;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(181699,4,40,0,0,181878,10,0,0,0,0,0,0,0,0,0,'despawn');
-- check if any of summons is still alive (we have 2 here)
DELETE FROM dbscripts_on_creature_death WHERE id = 17359;
INSERT INTO dbscripts_on_creature_death VALUES 
(17359,0,31,6748,100,0,0,0,0,0,0,0,0,0,0,0,'search for 6748'), 
(17359,1,18,0,0,6748,100,0x04,0,0,0,0,0,0,0,0,''),
(17359,2,31,6748,100,0,0,0,0,0,0,0,0,0,0,0,'search for 6748'), 
(17359,3,18,0,0,6748,100,0x04,0,0,0,0,0,0,0,0,'');

-- Barrel of Filth - object should despawn after use
UPDATE gameobject_template SET data5 = 1 WHERE entry IN (181699,181878);
-- respawntime corrected
UPDATE gameobject SET spawntimesecs = 120 WHERE id IN (181699,181878);



-- Missing UDB Backports For This
DELETE FROM gameobject WHERE guid BETWEEN 85506 AND 85521;
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85506','181878','530','1','-1645.67','-10923.6','58.9843','1.309','0','0','0.608763','0.793352','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85507','181878','530','1','-1644.94','-10922.8','58.9166','-0.279252','0','0','-0.139173','0.990268','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85508','181878','530','1','-1646.05','-10922.5','58.9643','-1.20428','0','0','-0.566407','0.824125','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85509','181878','530','1','-1648.48','-10927.1','59.1197','2.11185','0','0','0.870356','0.492423','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85510','181878','530','1','-1643.86','-10923.2','58.841','1.36136','0','0','0.629322','0.777145','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85511','181878','530','1','-1644.82','-10926.6','59.1072','-0.174532','0','0','-0.0871553','0.996195','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85512','181878','530','1','-1645.68','-10926','59.1503','2.23402','0','0','0.898794','0.438372','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85513','181878','530','1','-1646.11','-10927.1','59.3048','2.40855','0','0','0.93358','0.35837','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85514','181878','530','1','-1648.16','-10926','58.9527','2.07694','0','0','0.861629','0.507539','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85515','181878','530','1','-1644.72','-10925.4','58.9535','0.279252','0','0','0.139173','0.990268','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85516','181878','530','1','-1643.71','-10924.5','58.8313','-0.767944','0','0','-0.374606','0.927184','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85517','181878','530','1','-1643.62','-10925.9','58.8961','2.68781','0','0','0.97437','0.22495','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85518','181878','530','1','-1647.21','-10926.8','59.1528','2.79252','0','0','0.984807','0.173652','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85519','181878','530','1','-1646.84','-10925.8','59.0401','0.558504','0','0','0.275637','0.961262','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85520','181878','530','1','-1645.69','-10924.8','59.005','1.81514','0','0','0.78801','0.615662','180','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('85521','181878','530','1','-1644.68','-10924.1','58.9146','0.925024','0','0','0.446198','0.894934','180','255','1');
UPDATE gameobject SET rotation2=0, rotation3=0 WHERE guid BETWEEN 85506 AND 85521;

