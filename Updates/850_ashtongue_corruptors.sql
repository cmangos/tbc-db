UPDATE creature_template SET HealthMultiplier=0.001, PowerMultiplier=0.33, MinLevel=69, MaxLevel=69 WHERE entry IN(21420,21703,21705,21704); -- Corrupt Water Totem
UPDATE creature_template SET UnitFlags=0x00008000,FactionAlliance=1813,FactionHorde=1813 WHERE entry IN(21416,21709,21710,21711);

DELETE FROM spell_script_target WHERE entry IN(36817,38105,38106,37204,38101,38102,37205,38099,38100,37206,38103,38104);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
-- water shield - lakaan
(36817,1,21416,0),
(38105,1,21416,0),
(38106,1,21416,0),
-- earth shield - evkenen
(37204,1,21709,0),
(38101,1,21709,0),
(38102,1,21709,0),
-- fire shield - uvlaru
(37206,1,21710,0),
(38103,1,21710,0),
(38104,1,21710,0),
-- air shield - haalum
(37205,1,21711,0),
(38099,1,21711,0),
(38100,1,21711,0);

-- Delete static Corrupted Elementals. They are spawned by the totems on death
DELETE FROM creature WHERE id IN(21428,21706,21708,21707);

-- corruptors
DELETE FROM creature WHERE id IN(21416,21709,21710,21711);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('150700', '21416', '530', '1', '0', '0', '-2791.705', '1481.243', '10.1849', '1.989675', '300', '300', '0', '0', '4890', '7196', '0', '0'),
('150701', '21709', '530', '1', '0', '0', '-3884.683', '1410.314', '43.9757', '2.96706', '300', '300', '0', '0', '5589', '3155', '0', '0'),
('150702', '21710', '530', '1', '0', '0', '-3398.692', '1569.113', '48.56428', '4.852015', '300', '300', '0', '0', '5589', '3155', '0', '0'),
('150703', '21711', '530', '1', '0', '0', '-4648.438', '1085.262', '0.8176513', '2.356194', '300', '300', '0', '0', '4890', '7196', '0', '0');
-- totems
DELETE FROM creature WHERE id IN(21420,21703,21705,21704);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- water
('150704', '21420', '530', '1', '0', '0', '-2783.867', '1483.096', '9.206907', '3.403392', '300', '300', '0', '0', '4733', '7031', '0', '2'),
('150705', '21420', '530', '1', '0', '0', '-2795.686', '1486.299', '7.872009', '5.550147', '300', '300', '0', '0', '4733', '7031', '0', '2'),
('150706', '21420', '530', '1', '0', '0', '-2791.513', '1476.98', '9.137484', '1.396263', '300', '300', '0', '0', '4733', '7031', '0', '2'),
-- fire
('150707', '21703', '530', '1', '0', '0', '-3392.402', '1566.671', '47.97179', '0.2094395', '300', '300', '0', '0', '4733', '7031', '0', '2'),
('150708', '21703', '530', '1', '0', '0', '-3404.077', '1566.567', '47.88474', '4.782202', '300', '300', '0', '0', '4733', '7031', '0', '2'),
('150709', '21703', '530', '1', '0', '0', '-3397.854', '1576.284', '47.14587', '5.532694', '300', '300', '0', '0', '4733', '7031', '0', '2'),
-- earth
('150710', '21704', '530', '1', '0', '0', '-3879.858', '1416.28', '45.3178', '0.6108652', '300', '300', '0', '0', '4733', '7031', '0', '2'),
('150711', '21704', '530', '1', '0', '0', '-3893.048', '1411.493', '44.15714', '3.717551', '300', '300', '0', '0', '4733', '7031', '0', '2'),
('150712', '21704', '530', '1', '0', '0', '-3883.987', '1404.3', '43.63169', '2.059489', '300', '300', '0', '0', '4733', '7031', '0', '2'),
-- air
('150713', '21705', '530', '1', '0', '0', '-4644.948', '1081.284', '1.131352', '3.682645', '300', '300', '0', '0', '4733', '7031', '0', '2'),
('150714', '21705', '530', '1', '0', '0', '-4646.824', '1091.067', '0.1460583', '3.490659', '300', '300', '0', '0', '4733', '7031', '0', '2'),
('150715', '21705', '530', '1', '0', '0', '-4654.152', '1084.944', '1.098066', '6.021386', '300', '300', '0', '0', '4733', '7031', '0', '2');

DELETE FROM `creature_movement` WHERE `id` IN(SELECT guid FROM creature WHERE id IN(21420,21703,21705,21704));
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
-- water
(150704,1,'-2783.867', '1483.096', '9.206907', '3.403392',1000,2142003), -- 38106
(150705,1,'-2795.686', '1486.299', '7.872009', '5.550147',1000,2142002), -- 38105
(150706,1,'-2791.513', '1476.98', '9.137484', '1.396263',1000,2142001), -- 36817
-- fire
(150707,1,'-3392.402', '1566.671', '47.97179', '0.2094395',1000,2170301), -- 37206
(150708,1,'-3404.077', '1566.567', '47.88474', '4.782202',1000,2170302), -- 38103
(150709,1,'-3397.854', '1576.284', '47.14587', '5.532694',1000,2170303), -- 38104
-- earth
(150710,1,'-3879.858', '1416.28', '45.3178', '0.6108652',1000,2170403), -- 38102
(150711,1,'-3893.048', '1411.493', '44.15714', '3.717551',1000,2170401), -- 37204
(150712,1,'-3883.987', '1404.3', '43.63169', '2.059489',1000,2170402), -- 38101
-- air
(150713,1,'-4644.948', '1081.284', '1.131352', '3.682645',1000,2170501), -- 37205
(150714,1,'-4646.824', '1091.067', '0.1460583', '3.490659',1000,2170502), -- 38199
(150715,1,'-4654.152', '1084.944', '1.098066', '6.021386',1000,2170503); -- 38100

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`IN(2142001,2142002,2142003,2170301,2170302,2170303,2170401,2170402,2170403,2170501,2170502,2170503);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2142001,0,15,36817,0,0,0,0,0,0,0,0,0,'(1) Corrupt Water Totem - Cast Channel Water Shield',0,0,0,0),
(2142001,0,20,0,0,0,0,0,0,0,0,0,0,'(1) Corrupt Water Totem - Set Idle Movement',0,0,0,0),
(2142002,0,15,38105,0,0,0,0,0,0,0,0,0,'(2) Corrupt Water Totem - Cast Channel Water Shield',0,0,0,0),
(2142002,0,20,0,0,0,0,0,0,0,0,0,0,'(2) Corrupt Water Totem - Set Idle Movement',0,0,0,0),
(2142003,0,15,38106,0,0,0,0,0,0,0,0,0,'(3) Corrupt Water Totem - Cast Channel Water Shield',0,0,0,0),
(2142003,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Water Totem - Set Idle Movement',0,0,0,0),

(2170301,0,15,37206,0,0,0,0,0,0,0,0,0,'(3) Corrupt Fire Totem - Cast Channel Fire Shield',0,0,0,0),
(2170301,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Fire Totem - Set Idle Movement',0,0,0,0),
(2170302,0,15,38103,0,0,0,0,0,0,0,0,0,'(3) Corrupt Fire Totem - Cast Channel Fire Shield',0,0,0,0),
(2170302,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Fire Totem - Set Idle Movement',0,0,0,0),
(2170303,0,15,38104,0,0,0,0,0,0,0,0,0,'(3) Corrupt Fire Totem - Cast Channel Fire Shield',0,0,0,0),
(2170303,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Fire Totem - Set Idle Movement',0,0,0,0),

(2170401,0,15,37204,0,0,0,0,0,0,0,0,0,'(3) Corrupt Earth Totem - Cast Channel Earth Shield',0,0,0,0),
(2170401,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Earth Totem - Set Idle Movement',0,0,0,0),
(2170402,0,15,38101,0,0,0,0,0,0,0,0,0,'(3) Corrupt Earth Totem - Cast Channel Earth Shield',0,0,0,0),
(2170402,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Earth Totem - Set Idle Movement',0,0,0,0),
(2170403,0,15,38102,0,0,0,0,0,0,0,0,0,'(3) Corrupt Earth Totem - Cast Channel Earth Shield',0,0,0,0),
(2170403,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Earth Totem - Set Idle Movement',0,0,0,0),

(2170501,0,15,37205,0,0,0,0,0,0,0,0,0,'(3) Corrupt Air Totem - Cast Channel Air Shield',0,0,0,0),
(2170501,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Air Totem - Set Idle Movement',0,0,0,0),
(2170502,0,15,38099,0,0,0,0,0,0,0,0,0,'(3) Corrupt Air Totem - Cast Channel Air Shield',0,0,0,0),
(2170502,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Air Totem - Set Idle Movement',0,0,0,0),
(2170503,0,15,38100,0,0,0,0,0,0,0,0,0,'(3) Corrupt Air Totem - Cast Channel Air Shield',0,0,0,0),
(2170503,0,20,0,0,0,0,0,0,0,0,0,0,'(3) Corrupt Air Totem - Set Idle Movement',0,0,0,0);

-- Totems should only respawn when lakaan respawns
DELETE FROM creature_linking_template WHERE entry IN(21420,21703,21705,21704);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(21420,530,21416,128+1024+2048,20), -- FLAG_RESPAWN_ON_RESPAWN + FLAG_CANT_SPAWN_IF_BOSS_DEAD + FLAG_CANT_SPAWN_IF_BOSS_ALIVE
(21703,530,21710,128+1024+2048,20),
(21704,530,21709,128+1024+2048,20),
(21705,530,21711,128+1024+2048,20);


