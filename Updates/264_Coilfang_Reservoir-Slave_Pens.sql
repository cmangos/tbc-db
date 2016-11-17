-- ==================================
-- Coilfang Reservoir: The Slave Pens
-- ==================================

-- ========================================================
-- All Bosses and Heroic Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ========================================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (17941,17991,17942,19893,19894,19895);


-- ==================
-- General Boss Fixes
-- ==================
-- Normal Mennu the Betrayer
UPDATE creature_template SET MeleeAttackPower=256, RangedAttackPower=28, MovementType=2 WHERE entry IN (17941);
-- Heroic Mennu the Betrayer
UPDATE creature_template SET SubName=NULL, UnitFlags=1, MeleeAttackPower=296, RangedAttackPower=40, MovementType=2 WHERE entry IN (19893);

-- Normal Rokmar the Crackler
UPDATE creature_template SET MeleeAttackPower=272, RangedAttackPower=33, MovementType=2 WHERE entry IN (17991);
-- Heroic Rokmar the Crackler
UPDATE creature_template SET SubName=NULL, UnitFlags=1, MeleeAttackPower=314, RangedAttackPower=53, MovementType=2 WHERE entry IN (19895);

-- Normal Quagmirran
UPDATE creature_template SET MeleeAttackPower=272, RangedAttackPower=33, MovementType=0 WHERE entry IN (17942);
-- Heroic Quagmirran
UPDATE creature_template SET SubName=NULL, UnitFlags=1, MeleeAttackPower=314, RangedAttackPower=53, MovementType=0 WHERE entry IN (19894);


-- ======================
-- Special NPC Loot Fixes
-- ======================
-- ------------------------------------------------------
-- Quagmirran (Normal / Heroic) - Herb Gather From Corpse
-- ------------------------------------------------------
UPDATE creature_template SET CreatureTypeFlags=CreatureTypeFlags|256, SkinningLootId=60000 WHERE entry IN (17942,19894);

DELETE FROM skinning_loot_template WHERE entry=60000;
insert into `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('60000','39000','100','0','-39000','1','0','Special TBC NPC (Herb Gathering) - Special Corpse Loot');


-- =========================
-- Missing Equipment Entries
-- =========================
UPDATE creature_template SET EquipmentTemplateId=5476 WHERE entry IN (17963,17964,18206,19902,19904,19901); -- Workers and Slaves and Captives Get Pick_axes (Data from UDB)


-- =========================================
-- Captives Are Not Selectable or Attackable
-- =========================================
UPDATE creature_template SET UnitFlags=33554689 WHERE entry IN (18206,19901);


-- =================
-- Fix NPC Equipment - UDB Backports
-- =================
UPDATE creature_template SET EquipmentTemplateId=5563 WHERE entry IN (17958); -- Coilfang Defender
UPDATE creature_template SET EquipmentTemplateId=5069 WHERE entry IN (17938); -- Coilfang Observer
UPDATE creature_template SET EquipmentTemplateId=5072 WHERE entry IN (21126); -- Coilfang Scale-Healer
UPDATE creature_template SET EquipmentTemplateId=5481 WHERE entry IN (17940); -- Coilfang Technician
UPDATE creature_template SET EquipmentTemplateId=5515 WHERE entry IN (17959); -- Coilfang Slavehandler

DELETE FROM `creature_equip_template` WHERE `entry` IN ('100','101','102','103','104');
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('100','12991','21122','0');  -- UNKNOWN WHAT THIS IS IN TBC PARTIAL CONVERSION
UPDATE creature_template SET EquipmentTemplateId=100 WHERE entry IN (21127); -- Coilfang Tempest

insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('101','12328','0','0');
UPDATE creature_template SET EquipmentTemplateId=101 WHERE entry IN (17960); -- Coilfang Soothsayer

insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('102','11838','0','0');
UPDATE creature_template SET EquipmentTemplateId=102 WHERE entry IN (17957); -- Coilfang Champion

insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('103','13750','0','0');
UPDATE creature_template SET EquipmentTemplateId=103 WHERE entry IN (17961); -- Coilfang Enchantress

insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('104','14877','0','0');
UPDATE creature_template SET EquipmentTemplateId=104 WHERE entry IN (17962); -- Coilfang Collaborator

-- ==================================
-- Fix or Add Equipment Sheath Values
-- ==================================
UPDATE creature_template_addon SET b2_0_sheath=1 WHERE entry IN (17958);

DELETE FROM `creature_template_addon` WHERE `entry`=17957;
insert into `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('17957','0','0','1','0','0','0',NULL); -- Coilfang Champion


-- =========================================
-- Dungeon Aggro Linking and Missing Pathing
-- =========================================
-- Linked Movement and Aggro Bogstrok Group 1 - Front
UPDATE creature SET MovementType=0 WHERE guid IN (79855,80235,79856);
DELETE FROM creature_movement WHERE id IN (79855,80235,79856);
DELETE FROM creature_linking WHERE master_guid IN (80235);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79855','80235','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79856','80235','515');
UPDATE creature SET MovementType=2 WHERE guid IN (80235);

DELETE FROM creature_movement WHERE id IN (80235);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('80235','1','24.739','-80.5426','-1.59055','1000','5','0','0','0','0','0','0','0','5.50955','0','0'),
('80235','2','39.8198','-95.0929','-1.59055','0','0','0','0','0','0','0','0','0','5.52133','0','0'),
('80235','3','66.6139','-108.588','-1.59055','0','0','0','0','0','0','0','0','0','5.85826','0','0'),
('80235','4','83.18','-107.935','-1.77718','0','0','0','0','0','0','0','0','0','6.27374','0','0'),
('80235','5','93.4559','-104.258','-1.746','0','0','0','0','0','0','0','0','0','0.387181','0','0'),
('80235','6','99.5506','-95.274','-1.74464','0','0','0','0','0','0','0','0','0','1.1121','0','0'),
('80235','7','100.845','-82.8392','-1.93832','0','0','0','0','0','0','0','0','0','1.4671','0','0'),
('80235','8','97.1395','-73.4639','-1.93333','0','0','0','0','0','0','0','0','0','2.00039','0','0'),
('80235','9','88.1852','-67.031','-1.51047','0','0','0','0','0','0','0','0','0','2.50854','0','0'),
('80235','10','74.9513','-63.1311','-1.58091','0','0','0','0','0','0','0','0','0','2.8981','0','0'),
('80235','11','51.3906','-48.4747','-1.53392','1000','5','0','0','0','0','0','0','0','2.59729','0','0'),
('80235','12','71.3095','-59.5157','-1.40341','0','0','0','0','0','0','0','0','0','5.7381','0','0'),
('80235','13','86.7149','-67.4752','-1.58595','0','0','0','0','0','0','0','0','0','5.77344','0','0'),
('80235','14','98.6776','-74.4816','-2.02136','0','0','0','0','0','0','0','0','0','5.72868','0','0'),
('80235','15','100.603','-85.6782','-2.00852','0','0','0','0','0','0','0','0','0','4.85296','0','0'),
('80235','16','93.6475','-103.484','-1.86193','0','0','0','0','0','0','0','0','0','4.34637','0','0'),
('80235','17','82.2214','-108.795','-1.69518','0','0','0','0','0','0','0','0','0','3.57668','0','0'),
('80235','18','69.4674','-107.822','-1.89392','0','0','0','0','0','0','0','0','0','3.06068','0','0'),
('80235','19','51.0634','-99.0745','-1.59039','0','0','0','0','0','0','0','0','0','2.69782','0','0'),
('80235','20','40.5374','-94.0704','-1.59039','0','0','0','0','0','0','0','0','0','2.69782','0','0'),
('80235','21','31.7392','-86.6805','-1.59039','0','0','0','0','0','0','0','0','0','2.41665','0','0');


-- Linked Movement and Aggro Bogstrok Group 2 - Front
UPDATE creature SET MovementType=0 WHERE guid IN (79850,79858,80219);
DELETE FROM creature_movement WHERE id IN (79850,79858,80219);
DELETE FROM creature_linking WHERE master_guid IN (80219);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79850','80219','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79858','80219','515');

UPDATE creature SET MovementType=2 WHERE guid IN (80219);
DELETE FROM creature_movement WHERE id IN (80219);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('80219','1','21.3806','-77.1728','-1.59056','1000','5','0','0','0','0','0','0','0','2.31062','0','0'),
('80219','2','-7.40776','-59.9187','-1.59056','0','0','0','0','0','0','0','0','0','2.60279','0','0'),
('80219','3','-23.4768','-47.3342','-1.59056','0','0','0','0','0','0','0','0','0','2.47556','0','0'),
('80219','4','-19.935','-33.1508','-3.6824','0','0','0','0','0','0','0','0','0','1.39092','0','0'),
('80219','5','-15.6657','-18.9221','-1.8165','0','0','0','0','0','0','0','0','0','1.23777','0','0'),
('80219','6','3.89414','-21.3769','-1.69636','0','0','0','0','0','0','0','0','0','6.11745','0','0'),
('80219','7','16.5986','-26.557','-1.23579','0','0','0','0','0','0','0','0','0','5.89596','0','0'),
('80219','8','26.7712','-30.8165','-0.905259','0','0','0','0','0','0','0','0','0','5.86062','0','0'),
('80219','9','42.0684','-42.012','-1.25382','0','0','0','0','0','0','0','0','0','5.67605','0','0'),
('80219','10','45.2533','-44.2245','-1.34953','1000','5','0','0','0','0','0','0','0','5.67605','0','0'),
('80219','11','31.9388','-34.4066','-0.952698','0','0','0','0','0','0','0','0','0','2.51718','0','0'),
('80219','12','5.92747','-25.3469','-1.62205','0','0','0','0','0','0','0','0','0','2.83134','0','0'),
('80219','13','-9.64911','-20.892','-1.775','0','0','0','0','0','0','0','0','0','2.93423','0','0'),
('80219','14','-17.5609','-27.4412','-2.81297','0','0','0','0','0','0','0','0','0','3.90341','0','0'),
('80219','15','-22.0797','-45.9683','-1.59056','0','0','0','0','0','0','0','0','0','4.53173','0','0'),
('80219','16','-10.971','-55.464','-1.59056','0','0','0','0','0','0','0','0','0','5.49305','0','0'),
('80219','17','10.0276','-67.957','-1.59056','0','0','0','0','0','0','0','0','0','5.7703','0','0');


-- Linked Aggro Slavehandler Group 1 - Front (NEED TO SCRIPT RUNNING AWAY ON MASTER DEATH)
DELETE FROM creature_linking WHERE master_guid IN (79359);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52398','79359','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52383','79359','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52384','79359','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52385','79359','3');


-- Linked Aggro Slavehandler Group 2 - Front
DELETE FROM creature_linking WHERE master_guid IN (79382);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52370','79382','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52389','79382','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52396','79382','3');


-- Linked Movement and Aggro Champions - Front
UPDATE creature SET MovementType=0 WHERE guid IN (88902);
DELETE FROM creature_movement WHERE id IN (88902);
DELETE FROM creature_linking WHERE master_guid IN (79364);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('88902','79364','515');


-- Delete Non-Existent Workers in Hall
DELETE FROM creature WHERE guid IN (52388,52386);
DELETE FROM creature_addon WHERE guid IN (52388,52386);


-- Linked Aggro Workers Group 1 - First Hall
DELETE FROM creature_linking WHERE master_guid IN (52372);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52380','52372','3');


-- Linked Aggro Workers Group 2 - First Hall
DELETE FROM creature_linking WHERE master_guid IN (52387);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52368','52387','3');


-- Linked Aggro Workers Group 3 - First Hall
DELETE FROM creature_linking WHERE master_guid IN (52367);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52395','52367','3');


-- Linked Aggro Misc Group - First Large Room
DELETE FROM creature_linking WHERE master_guid IN (79547);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79722','79547','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52353','79547','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79424','79547','3');


-- Linked Aggro Slavehandler Group - First Large Room
DELETE FROM creature_linking WHERE master_guid IN (61959);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52394','61959','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52393','61959','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52371','61959','3');


-- Linked Movement and Aggro Champion with Enchantress Pathing - First Large Room
UPDATE creature SET MovementType=0 WHERE guid IN (79426,79416,72370);
DELETE FROM creature_movement WHERE id IN (79426,79416,72370);
DELETE FROM creature_linking WHERE master_guid IN (72370);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79426','72370','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79416','72370','515');

UPDATE creature SET MovementType=2 WHERE guid IN (72370);
DELETE FROM creature_movement WHERE id IN (72370);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('72370','1','-92.427','-208.33','-1.16262','0','0','0','0','0','0','0','0','0','1.84654','0','0'),
('72370','2','-94.1575','-192.332','-1.71617','0','0','0','0','0','0','0','0','0','1.59914','0','0'),
('72370','3','-91.469','-174.521','-3.35942','0','0','0','0','0','0','0','0','0','1.41143','0','0'),
('72370','4','-82.0551','-163.194','-2.95462','0','0','0','0','0','0','0','0','0','0.877356','0','0'),
('72370','5','-72.2506','-160.236','-2.27716','0','0','0','0','0','0','0','0','0','0.293019','0','0'),
('72370','6','-60.1852','-163.844','-2.01555','0','0','0','0','0','0','0','0','0','5.96438','0','0'),
('72370','7','-28.4469','-182.566','-2.31752','0','0','0','0','0','0','0','0','0','5.6997','0','0'),
('72370','8','-46.3729','-167.814','-1.42591','0','0','0','0','0','0','0','0','0','2.37747','0','0'),
('72370','9','-58.9079','-161.165','-1.66274','0','0','0','0','0','0','0','0','0','2.65393','0','0'),
('72370','10','-77.588','-161.752','-2.73356','0','0','0','0','0','0','0','0','0','3.2092','0','0'),
('72370','11','-88.7996','-167.533','-3.21806','0','0','0','0','0','0','0','0','0','3.61761','0','0'),
('72370','12','-94.6737','-183.772','-2.28738','0','0','0','0','0','0','0','0','0','4.36531','0','0'),
('72370','13','-92.442','-206.975','-1.15395','0','0','0','0','0','0','0','0','0','4.80828','0','0'),
('72370','14','-88.6184','-241.796','-1.07868','0','0','0','0','0','0','0','0','0','4.81534','0','0');


-- Linked Aggro Bogstrok Group - First Large Room
DELETE FROM creature_linking WHERE master_guid IN (79495);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79528','79495','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79540','79495','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79571','79495','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79633','79495','3');


-- Linked Aggro Bogstrok Group - First Large Room
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid IN (79546,79657,79543,79655,79545,79544);
DELETE FROM creature_linking WHERE master_guid IN (79546);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79657','79546','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79543','79546','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79655','79546','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79545','79546','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79544','79546','3');


-- Linked Movement and Aggro Champion with Enchantress Pathing - First Large Room
UPDATE creature SET MovementType=0 WHERE guid IN (76520,57878);
DELETE FROM creature_movement WHERE id IN (76520,57878);
DELETE FROM creature_linking WHERE master_guid IN (86371);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('76520','86371','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57878','86371','515');


-- Linked Aggro Slavehandler Group - First Large Room
DELETE FROM creature_linking WHERE master_guid IN (57017);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52373','57017','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52397','57017','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52366','57017','3');


-- Fix/Add Missing NPC Spawns
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('52388','17963','547','3','0','0','-94.6331','-294.05','-1.53056','6.21798','7200','0','0','3870','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('52386','17959','547','3','0','0','-42.2976','-286.069','-1.36392','5.14276','7200','0','0','16581','0','0','0');
UPDATE creature SET position_x = '-75.403046', position_y = '-278.697510', position_z = '-1.131816', orientation = '0.160201' WHERE guid = '57018';
UPDATE creature SET position_x = '-54.219700', position_y = '-280.008911', position_z = '-1.351021', orientation = '4.170444' WHERE guid = '52365';
UPDATE creature SET position_x = '-76.790009', position_y = '-284.559387', position_z = '-1.348798', orientation = '5.204026' WHERE guid = '52381';
UPDATE creature SET position_x = '-84.215584', position_y = '-293.041626', position_z = '-1.475119', orientation = '6.231328' WHERE guid = '52382';


-- Linked Aggro Slavehandler Group - First Large Room
DELETE FROM creature_linking WHERE master_guid IN (57018);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52381','57018','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52382','57018','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52388','57018','3');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (57018);
DELETE FROM creature_movement WHERE id IN (57018);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('57018','1','-60.1871','-274.514','-1.32443','0','0','0','0','0','0','0','0','0','0.26623','0','0'),
('57018','2','-72.5992','-278.49','-1.19043','0','0','0','0','0','0','0','0','0','3.46201','0','0'),
('57018','3','-82.794','-279.765','-1.20342','0','0','0','0','0','0','0','0','0','3.26252','0','0'),
('57018','4','-96.5694','-290.858','-1.53293','0','0','0','0','0','0','0','0','0','3.80209','0','0'),
('57018','5','-100.228','-298.107','-1.55955','0','0','0','0','0','0','0','0','0','4.24506','0','0'),
('57018','6','-96.3875','-289.726','-1.53346','0','0','0','0','0','0','0','0','0','1.14116','0','0'),
('57018','7','-88.7323','-288.205','-1.49494','0','0','0','0','0','0','0','0','0','0.131142','0','0'),
('57018','8','-83.6441','-280.069','-1.24312','0','0','0','0','0','0','0','0','0','0.979372','0','0'),
('57018','9','-77.2797','-280.477','-1.16125','0','0','0','0','0','0','0','0','0','6.20384','0','0');


-- Linked Aggro Slavehandler Group - First Large Room
DELETE FROM creature_linking WHERE master_guid IN (52386);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52374','52386','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52375','52386','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52365','52386','3');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (52386);
DELETE FROM creature_movement WHERE id IN (52386);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('52386','1','-39.4115','-297.88','-1.45878','0','0','0','0','0','0','0','0','0','4.84274','0','0'),
('52386','2','-41.4277','-286.794','-1.3566','0','0','0','0','0','0','0','0','0','1.63753','0','0'),
('52386','3','-53.5928','-274.91','-1.12075','0','0','0','0','0','0','0','0','0','2.48184','0','0'),
('52386','4','-41.7862','-285.465','-1.35429','0','0','0','0','0','0','0','0','0','5.53311','0','0');


-- Linked Aggro Defender Group - First Large Room Exit
DELETE FROM creature_linking WHERE master_guid IN (79718);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79719','79718','3');


-- ADD MISSING WASTEWALKER CAPTIVES IN CAGES
DELETE FROM creature WHERE id IN (18206);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('101255','18206','547','3','18300','0','-14.3681','-548.778','1.16364','4.4855','7200','0','0','20259','0','0','0'),
('101256','18206','547','3','18300','0','-18.7948','-577.867','18.7641','2.72271','7200','0','0','20259','0','0','0'),
('101257','18206','547','3','18300','0','-68.6011','-590.748','37.5631','3.63029','7200','0','0','20259','0','0','0'),
('101258','18206','547','3','18300','0','-16.1508','-565.019','1.16364','3.14159','7200','0','0','20259','0','0','0'),
('101259','18206','547','3','18300','0','-36.5463','-247.265','0.347181','5.72468','7200','0','0','20259','0','0','0'),
('101260','18206','547','3','18300','0','-96.2024','-266.577','1.46728','1.64061','7200','0','0','20259','0','0','0'),
('101261','18206','547','3','18300','0','-89.4019','-297.022','1.22901','0.977384','7200','0','0','20259','0','0','0'),
('101262','18206','547','3','18300','0','-91.986','-297.582','1.22901','2.28638','7200','0','0','20259','0','0','0'),
('101263','18206','547','3','18300','0','-141.558','-269.821','1.22901','2.1293','7200','0','0','20259','0','0','0'),
('101264','18206','547','3','18300','0','-139.696','-270.764','1.22901','0.523599','7200','0','0','20259','0','0','0'),
('101265','18206','547','3','18300','0','-131.403','-284.41','1.22901','0.366519','7200','0','0','20259','0','0','0'),
('101266','18206','547','3','18300','0','-132.83','-283.208','1.22901','0.907571','7200','0','0','20259','0','0','0'),
('101267','18206','547','3','18300','0','-29.9655','-534.069','1.16365','2.56563','7200','0','0','20259','0','0','0'),
('101268','18206','547','3','18300','0','-33.7396','-539.5','30.4304','2.35619','7200','0','0','20259','0','0','0'),
('101269','18206','547','3','18300','0','-29.9972','-536.393','1.16364','4.10152','7200','0','0','20259','0','0','0'),
('101270','18206','547','3','18300','0','-14.0541','-560.051','28.0496','2.82743','7200','0','0','20259','0','0','0'),
('101271','18206','547','3','18300','0','-22.2961','-582.496','1.16364','2.46091','7200','0','0','20259','0','0','0'),
('101272','18206','547','3','18300','0','-37.7495','-590.563','1.16364','1.53589','7200','0','0','20259','0','0','0'),
('101273','18206','547','3','18300','0','-163.208','-573.244','13.9979','0.296706','7200','0','0','20259','0','0','0'),
('101274','18206','547','3','18300','0','-39.8357','-592.474','1.16364','3.07178','7200','0','0','20259','0','0','0'),
('101275','18206','547','3','18300','0','-152.959','-588.344','8.97107','5.13127','7200','0','0','20259','0','0','0'),
('101276','18206','547','3','18300','0','-152.076','-585.827','8.97106','0.366519','7200','0','0','20259','0','0','0'),
('101277','18206','547','3','18300','0','-164.002','-575.651','13.9979','5.09636','7200','0','0','20259','0','0','0'),
('101278','18206','547','3','18300','0','-22.3681','-585.034','1.16364','3.80482','7200','0','0','20259','0','0','0'),
('101279','18206','547','3','18300','0','-67.35','-588.685','37.5631','1.44862','7200','0','0','20259','0','0','0'),
('101280','18206','547','3','18300','0','-176.881','-700.307','40.8833','4.66003','7200','0','0','20259','0','0','0'),
('101281','18206','547','3','18300','0','-188.237','-694.486','40.8833','5.16617','7200','0','0','20259','0','0','0'),
('101282','18206','547','3','18300','0','-190.947','-693.82','40.8833','3.78736','7200','0','0','20259','0','0','0'),
('101283','18206','547','3','18300','0','-178.758','-698.342','40.8833','3.28122','7200','0','0','20259','0','0','0'),
('101284','18206','547','3','18300','0','-33.7518','-585.913','23.7909','2.96706','7200','0','0','20259','0','0','0'),
('101285','18206','547','3','18300','0','-15.9252','-546.979','1.16365','3.22886','7200','0','0','20259','0','0','0'),
('101286','18206','547','3','18300','0','-14.1655','-566.952','1.16364','4.38078','7200','0','0','20259','0','0','0'),
('101287','18206','547','3','18300','0','-28.6516','8.89823','1.75265','3.63029','7200','0','0','20259','0','0','0'),
('101288','18206','547','3','18300','0','-41.4328','9.40508','1.37165','5.41052','7200','0','0','20259','0','0','0'),
('101289','18206','547','3','18300','0','-43.7605','9.13253','1.37165','4.43314','7200','0','0','20259','0','0','0'),
('101290','18206','547','3','18300','0','9.39124','-11.7804','0.685416','4.62512','7200','0','0','20259','0','0','0'),
('101291','18206','547','3','18300','0','7.68906','-10.2118','0.910605','3.15905','7200','0','0','20259','0','0','0'),
('101292','18206','547','3','18300','0','-39.3192','-248.708','0.658435','3.15905','7200','0','0','20259','0','0','0'),
('101293','18206','547','3','18300','0','-95.0168','-267.855','1.46728','5.89921','7200','0','0','20259','0','0','0'),
('101294','18206','547','3','18300','0','-154.646','-197.792','-3.74756','0.139626','7200','0','0','20259','0','0','0'),
('101295','18206','547','3','18300','0','-155.758','-196.114','-3.74756','1.5708','7200','0','0','20259','0','0','0'),
('101296','18206','547','3','18300','0','-91.8373','-148.02','24.9473','2.30383','7200','0','0','20259','0','0','0'),
('101297','18206','547','3','18300','0','-88.3808','-148.338','24.9473','1.11701','7200','0','0','20259','0','0','0'),
('101298','18206','547','3','18300','0','-70.3648','-139.91','1.37165','3.97935','7200','0','0','20259','0','0','0'),
('101299','18206','547','3','18300','0','-70.5757','-138.288','1.37165','2.18166','7200','0','0','20259','0','0','0'),
('101300','18206','547','3','18300','0','-26.602','8.73353','1.75265','5.28835','7200','0','0','20259','0','0','0');


-- Add Missing Group of Bogstrok
DELETE FROM `creature` WHERE `guid` IN (101301,101302,101303,101304,101305,101306);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('101301','17817','547','3','0','0','13.5281','-247.912','1.21057','4.27097','7200','5','0','15488','0','0','1'),
('101302','17817','547','3','0','0','29.6698','-242.561','2.75055','0.5097','7200','5','0','15488','0','0','1'),
('101303','17817','547','3','0','0','32.5076','-231.687','-1.08708','2.30276','7200','5','0','15488','0','0','1'),
('101304','17816','547','3','0','0','-16.2878','-247.732','-1.69494','3.40782','7200','5','0','15488','0','0','1'),
('101305','17816','547','3','0','0','6.63201','-249.964','0.0614992','0.113073','7200','5','0','15488','0','0','1'),
('101306','17816','547','3','0','0','25.8708','-220.551','-1.52212','4.24505','7200','5','0','15488','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (101301);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('101302','101301','3'),
('101303','101301','3'),
('101304','101301','3'),
('101305','101301','3'),
('101306','101301','3');


-- Linked Aggro and Improved Random Movement for Technicians and Collaborators - Mennu Boss Room
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (79703,79708,52364,52354);
DELETE FROM creature_linking WHERE master_guid IN (79703);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('79708','79703','3'),
('52364','79703','3'),
('52354','79703','3');


-- Linked Aggro and Movement for Technicians - Mennu Boss Room
UPDATE creature SET position_x = '117.844749', position_y = '-346.725098', position_z = '3.035531', orientation = '3.371692' WHERE guid = '79365';
UPDATE creature SET position_x = '116.661140', position_y = '-344.144348', position_z = '3.035530', orientation = '3.623015' WHERE guid = '79363';
UPDATE creature SET MovementType=0 WHERE guid IN (79363);
DELETE FROM creature_movement WHERE id IN (79363);
DELETE FROM creature_linking WHERE master_guid IN (79365);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79363','79365','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79365);
DELETE FROM creature_movement WHERE id IN (79365);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79365','1','82.7014','-354.463','3.03563','0','0','0','0','0','0','0','0','0','3.27902','0','0'),
('79365','2','58.016','-363.896','3.03563','0','0','0','0','0','0','0','0','0','3.5649','0','0'),
('79365','3','82.4312','-353.445','3.03563','0','0','0','0','0','0','0','0','0','0.40446','0','0'),
('79365','4','116.405','-345.668','3.03563','0','0','0','0','0','0','0','0','0','0.181407','0','0');


-- Linked Aggro and Improved Random Movement for Technicians and Collaborators - Mennu Boss Room
UPDATE creature SET SpawnDist=4, MovementType=1 WHERE guid IN (79691,79438,52363,79428);
DELETE FROM creature_linking WHERE master_guid IN (79691);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('79438','79691','3'),
('52363','79691','3'),
('79428','79691','3');


-- Mennu Room NPC Cleanup (It Was UGLY)
DELETE FROM creature_addon WHERE guid IN (52359,52361);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('52359','0','0','1','0','69','0','');
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('52361','0','0','1','0','69','0','');

UPDATE creature SET position_x = '40.337502', position_y = '-395.364716', position_z = '3.034528', orientation = '4.727290', SpawnDist=0, MovementType=0 WHERE guid = '52361';
UPDATE creature SET position_x = '36.359802', position_y = '-383.916138', position_z = '3.035600', orientation = '2.989987', SpawnDist=4, MovementType=1 WHERE guid = '79795';
UPDATE creature SET position_x = '36.132225', position_y = '-391.590485', position_z = '3.035600', orientation = '5.879468', SpawnDist=4, MovementType=1 WHERE guid = '79507';
UPDATE creature SET position_x = '46.330509', position_y = '-365.887421', position_z = '3.035600', orientation = '3.523273', SpawnDist=4, MovementType=1 WHERE guid = '79526';
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid = '52358';
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid = '52362';

DELETE FROM creature WHERE guid=52360;
DELETE FROM creature_addon WHERE guid=52360;
DELETE FROM creature_movement WHERE id=52360;
DELETE FROM game_event_creature WHERE guid=52360;
DELETE FROM game_event_creature_data WHERE guid=52360;
DELETE FROM creature_battleground WHERE guid=52360;
DELETE FROM creature_linking WHERE guid=52360 OR master_guid=52360;
DELETE FROM creature WHERE guid=52357;
DELETE FROM creature_addon WHERE guid=52357;
DELETE FROM creature_movement WHERE id=52357;
DELETE FROM game_event_creature WHERE guid=52357;
DELETE FROM game_event_creature_data WHERE guid=52357;
DELETE FROM creature_battleground WHERE guid=52357;
DELETE FROM creature_linking WHERE guid=52357 OR master_guid=52357;
DELETE FROM creature WHERE guid=79536;
DELETE FROM creature_addon WHERE guid=79536;
DELETE FROM creature_movement WHERE id=79536;
DELETE FROM game_event_creature WHERE guid=79536;
DELETE FROM game_event_creature_data WHERE guid=79536;
DELETE FROM creature_battleground WHERE guid=79536;
DELETE FROM creature_linking WHERE guid=79536 OR master_guid=79536;
DELETE FROM creature WHERE guid=52355;
DELETE FROM creature_addon WHERE guid=52355;
DELETE FROM creature_movement WHERE id=52355;
DELETE FROM game_event_creature WHERE guid=52355;
DELETE FROM game_event_creature_data WHERE guid=52355;
DELETE FROM creature_battleground WHERE guid=52355;
DELETE FROM creature_linking WHERE guid=52355 OR master_guid=52355;
DELETE FROM creature WHERE guid=52356;
DELETE FROM creature_addon WHERE guid=52356;
DELETE FROM creature_movement WHERE id=52356;
DELETE FROM game_event_creature WHERE guid=52356;
DELETE FROM game_event_creature_data WHERE guid=52356;
DELETE FROM creature_battleground WHERE guid=52356;
DELETE FROM creature_linking WHERE guid=52356 OR master_guid=52356;


-- Linked Aggro Tempests and Collaborators - Mennu Boss Room
DELETE FROM creature_linking WHERE master_guid IN (79507);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79795','79507','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52361','79507','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52359','79507','3');


-- Linked Aggro Technician and Collaborators - Mennu Boss Room
DELETE FROM creature_linking WHERE master_guid IN (79526);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52362','79526','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52358','79526','3');


-- Linked Aggro and Movement Technician and Collaborators - Ramps Above Mennu Boss Room
UPDATE creature SET id=17962, curhealth=15488 WHERE guid IN (79366,79847);
UPDATE creature SET id=17940, curhealth=12823, curmana=2620 WHERE guid IN (79147);
UPDATE creature SET position_x = '77.332916', position_y = '-409.669922', position_z = '36.155216', orientation = '0.171215' WHERE guid = '79847';
UPDATE creature SET position_x = '77.259911', position_y = '-405.602692', position_z = '36.171982', orientation = '0.062043' WHERE guid = '79366';

DELETE FROM creature_linking WHERE master_guid IN (79147);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79366','79147','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79847','79147','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79147);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79366,79847);
DELETE FROM creature_movement WHERE id IN (79147,79366,79847);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79147','1','78.3688','-407.71','35.9248','0','0','0','0','0','0','0','0','0','0.223035','0','0'),
('79147','2','93.5926','-402.712','33.4546','0','0','0','0','0','0','0','0','0','0.333777','0','0'),
('79147','3','108.017','-397.103','32.1084','0','0','0','0','0','0','0','0','0','0.303146','0','0'),
('79147','4','124.259','-392.14','30.683','0','0','0','0','0','0','0','0','0','0.218323','0','0'),
('79147','5','131.552','-379.839','30.043','0','0','0','0','0','0','0','0','0','1.46632','0','0'),
('79147','6','125.132','-369.406','30.6319','0','0','0','0','0','0','0','0','0','1.63126','0','0'),
('79147','7','114.531','-366.109','31.5007','0','0','0','0','0','0','0','0','0','2.80778','0','0'),
('79147','8','96.8746','-359.36','33.1492','0','0','0','0','0','0','0','0','0','2.93973','0','0'),
('79147','9','88.5531','-356.396','33.9275','0','0','0','0','0','0','0','0','0','2.71668','0','0'),
('79147','10','79.21','-354.059','35.7375','0','0','0','0','0','0','0','0','0','2.95465','0','0'),
('79147','11','89.1128','-356.674','33.8755','0','0','0','0','0','0','0','0','0','6.06326','0','0'),
('79147','12','105.057','-362.932','32.3859','0','0','0','0','0','0','0','0','0','5.91089','0','0'),
('79147','13','123.597','-369.191','30.7557','0','0','0','0','0','0','0','0','0','5.93917','0','0'),
('79147','14','124.448','-390.101','30.718','0','0','0','0','0','0','0','0','0','4.6197','0','0'),
('79147','15','116.305','-393.438','31.3361','0','0','0','0','0','0','0','0','0','3.4471','0','0'),
('79147','16','93.8327','-401.7','33.4334','0','0','0','0','0','0','0','0','0','3.45888','0','0');


-- Linked Aggro and Movement Left Defenders - Ramps Above Mennu Boss Room
DELETE FROM creature_linking WHERE master_guid IN (79246);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79150','79246','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79246);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79150);
DELETE FROM creature_movement WHERE id IN (79246,79150);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79246','1','-15.729','-413.759','71.7439','0','0','0','0','0','0','0','0','0','6.03185','0','0'),
('79246','2','-1.85807','-416.658','65.4543','0','0','0','0','0','0','0','0','0','6.06562','0','0'),
('79246','3','16.8464','-418.139','56.6015','0','0','0','0','0','0','0','0','0','6.27375','0','0'),
('79246','4','38.2038','-419.277','47.6684','0','0','0','0','0','0','0','0','0','6.24312','0','0'),
('79246','5','68.5905','-413.21','38.1034','0','0','0','0','0','0','0','0','0','0.21283','0','0'),
('79246','6','60.0424','-408.551','40.013','0','0','0','0','0','0','0','0','0','2.68527','0','0'),
('79246','7','40.6987','-410.985','46.7938','0','0','0','0','0','0','0','0','0','3.25939','0','0'),
('79246','8','34.5149','-412.743','49.1018','0','0','0','0','0','0','0','0','0','3.01435','0','0'),
('79246','9','10.406','-410.623','59.3828','0','0','0','0','0','0','0','0','0','3.04733','0','0'),
('79246','10','-13.2079','-407.983','70.867','0','0','0','0','0','0','0','0','0','2.9578','0','0'),
('79246','11','-32.3972','-400.011','77.5415','0','0','0','0','0','0','0','0','0','2.74574','0','0'),
('79246','12','-41.8979','-396.04','79.9343','0','0','0','0','0','0','0','0','0','2.74574','0','0'),
('79246','13','-47.9803','-389.5','81.2836','0','0','0','0','0','0','0','0','0','2.26665','0','0'),
('79246','14','-44.7148','-401.662','80.2714','0','0','0','0','0','0','0','0','0','4.9747','0','0'),
('79246','15','-38.1962','-405.187','79.4495','0','0','0','0','0','0','0','0','0','5.9431','0','0');


-- Linked Aggro and Movement Right Defenders - Ramps Above Mennu Boss Room
DELETE FROM creature_linking WHERE master_guid IN (79274);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79275','79274','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79246);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79275);
DELETE FROM creature_movement WHERE id IN (79274,79275);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79274','1','-11.4636','-352.19','70.2096','0','0','0','0','0','0','0','0','0','0.250532','0','0'),
('79274','2','12.0341','-350.128','58.6441','0','0','0','0','0','0','0','0','0','0.13665','0','0'),
('79274','3','37.2942','-348.778','47.9873','0','0','0','0','0','0','0','0','0','0.01884','0','0'),
('79274','4','61.4253','-352.905','39.7005','0','0','0','0','0','0','0','0','0','6.09311','0','0'),
('79274','5','68.693','-354.774','38.081','0','0','0','0','0','0','0','0','0','6.13474','0','0'),
('79274','6','62.525','-345.75','39.4554','0','0','0','0','0','0','0','0','0','2.36797','0','0'),
('79274','7','36.159','-341.281','48.404','0','0','0','0','0','0','0','0','0','3.06305','0','0'),
('79274','8','10.8895','-342.549','59.1436','0','0','0','0','0','0','0','0','0','3.14237','0','0'),
('79274','9','-12.3463','-345.483','70.5673','0','0','0','0','0','0','0','0','0','3.15179','0','0'),
('79274','10','-40.1944','-355.355','79.7112','0','0','0','0','0','0','0','0','0','3.45417','0','0'),
('79274','11','-48.2132','-360.969','80.5698','0','0','0','0','0','0','0','0','0','3.81231','0','0'),
('79274','12','-51.8537','-367.179','81.1288','0','0','0','0','0','0','0','0','0','4.28827','0','0'),
('79274','13','-40.6977','-365.113','79.7771','0','0','0','0','0','0','0','0','0','0.235612','0','0'),
('79274','14','-29.2528','-360.376','76.448','0','0','0','0','0','0','0','0','0','0.368345','0','0');


-- Linked Aggro and Movement Defenders - Ramps Above Mennu Boss Room
DELETE FROM creature WHERE guid IN (52356,52355,79536);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('52356','17958','547','3','0','0','-109.61','-377.985','80.8444','6.16616','7200','0','0','16028','0','0','0'),
('52355','17958','547','3','0','0','-109.578','-382.308','80.8363','6.18894','7200','0','0','16028','0','0','0'),
('79536','17962','547','3','0','0','-113.149','-379.131','81.2528','6.2612','7200','0','0','15488','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (52356);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52355','52356','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79536','52356','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (52356);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (52355,79536);
DELETE FROM creature_movement WHERE id IN (52356,52355,79536);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('52356','1','-94.1642','-378.331','78.7217','0','0','0','0','0','0','0','0','0','6.14181','0','0'),
('52356','2','-65.442','-378.196','79.7191','0','0','0','0','0','0','0','0','0','0.007067','0','0'),
('52356','3','-47.8234','-378.072','81.2796','0','0','0','0','0','0','0','0','0','0.007067','0','0'),
('52356','4','-56.7747','-381.155','81.2457','0','0','0','0','0','0','0','0','0','3.45182','0','0'),
('52356','5','-80.6756','-382.492','78.7217','0','0','0','0','0','0','0','0','0','3.0285','0','0'),
('52356','6','-111.019','-381.947','81.0918','0','0','0','0','0','0','0','0','0','3.11332','0','0'),
('52356','7','-120.41','-381.975','81.273','0','0','0','0','0','0','0','0','0','3.12824','0','0'),
('52356','8','-113.045','-378.358','81.2579','0','0','0','0','0','0','0','0','0','0.413904','0','0');


-- Linked Aggro and Movement Technician and Collaborators - Ramps Above Mennu Boss Room
UPDATE creature SET position_x = '-153.093781', position_y = '-351.868439', position_z = '71.727631', orientation = '6.122964' WHERE guid = '79371';
UPDATE creature SET position_x = '-153.038071', position_y = '-348.087616', position_z = '71.747002', orientation = '6.098617' WHERE guid = '79357';

DELETE FROM creature_linking WHERE master_guid IN (79849);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79371','79849','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79357','79849','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79849);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79371,79357);
DELETE FROM creature_movement WHERE id IN (79849,79371,79357);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79849','1','-129.183','-360.001','79.633','0','0','0','0','0','0','0','0','0','5.98867','0','0'),
('79849','2','-118.328','-367.537','81.1265','0','0','0','0','0','0','0','0','0','5.76247','0','0'),
('79849','3','-118.445','-394.009','81.0743','0','0','0','0','0','0','0','0','0','4.65035','0','0'),
('79849','4','-131.952','-401.757','79.0816','0','0','0','0','0','0','0','0','0','3.63012','0','0'),
('79849','5','-118.676','-393.847','81.0774','0','0','0','0','0','0','0','0','0','0.631466','0','0'),
('79849','6','-117.975','-370.358','81.2919','0','0','0','0','0','0','0','0','0','1.68469','0','0');


-- Linked Aggro and Movement Right Enchantress and Technicians - After Player Jump
DELETE FROM creature_linking WHERE master_guid IN (79372);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79498','79372','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79516','79372','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79372);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79498,79516);
DELETE FROM creature_movement WHERE id IN (79498,79516);


-- Linked Aggro and Movement Center Technician and Collaborators - After Player Jump
DELETE FROM creature_linking WHERE master_guid IN (79367);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79411','79367','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79386','79367','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79367);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79411,79386);
DELETE FROM creature_movement WHERE id IN (79411,79386);


-- Move Weeder Greenthumb Into Proper Position (Add Missing Gossip and Killcredit Script)
UPDATE creature SET position_x = '-293.633179', position_y = '-380.300537', position_z = '30.643810', orientation = '3.026907' WHERE guid = '79440';
UPDATE creature_template SET GossipMenuId=7519 WHERE entry IN (17890);
DELETE FROM `gossip_menu` WHERE `entry`=7519;
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('7519','9118','7519','0');
DELETE FROM `dbscripts_on_gossip` WHERE `id`=7519;
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('7519','0','8','17890','1','0','0','0','0','0','0','0','0','0','0','0','killcredit');


-- Linked Aggro and Movement Right Enchantress and Technicians - After Player Jump
DELETE FROM creature_linking WHERE master_guid IN (79375);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79518','79375','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79509','79375','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79375);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79518,79509);
DELETE FROM creature_movement WHERE id IN (79518,79509);


-- Linked Aggro for Coilfang Champions
DELETE FROM creature_linking WHERE master_guid IN (79435);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79429','79435','3');


-- Linked Aggro Bogstrok - At Rockmar
UPDATE creature SET position_x = '-70.193192', position_y = '-450.102264', position_z = '-1.592125', orientation = '3.318294' WHERE guid = '79846';
UPDATE creature SET position_x = '-80.626877', position_y = '-461.577484', position_z = '-1.592125', orientation = '3.751049' WHERE guid = '79431';

DELETE FROM creature_linking WHERE master_guid IN (79846);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('79538','79846','3'),
('79431','79846','3'),
('79692','79846','3');


-- Linked Aggro Misc Group - At Rockmar
UPDATE creature SET position_x = '-86.966995', position_y = '-510.337555', position_z = '-1.592043', orientation = '2.579238', SpawnDist=3 WHERE guid = '79530';

DELETE FROM creature_linking WHERE master_guid IN (79790);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79699','79790','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79701','79790','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79530','79790','3');


-- Linked Aggro and Movement for Coilfang Defenders
DELETE FROM creature_linking WHERE master_guid IN (79421);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79420','79421','515');
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79420);
DELETE FROM creature_movement WHERE id IN (79420);


-- Linked Aggro Misc Group - Near Rockmar
UPDATE creature SET SpawnDist=4, MovementType=1 WHERE guid = '79425';
UPDATE creature SET SpawnDist=2.5, MovementType=1 WHERE guid IN (79460,79791,79830,52351);

DELETE FROM creature_linking WHERE master_guid IN (79460);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('79791','79460','3'),
('79830','79460','3'),
('52351','79460','3'),
('79425','79460','3');


-- Linked Aggro Enchantress and Champions - Up Slope
DELETE FROM creature_linking WHERE master_guid IN (79709);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('79449','79709','3'),
('79745','79709','3'),
('79710','79709','3');


-- Linked Aggro Misc Group - Up Slope
UPDATE creature SET SpawnDist=3 WHERE guid = '79423';
DELETE FROM creature_linking WHERE master_guid IN (79712);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('79842','79712','3'),
('79843','79712','3'),
('52352','79712','3'),
('79423','79712','3');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79712);
DELETE FROM creature_movement WHERE id IN (79712);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79712','1','-110.45','-591.891','5.80183','0','0','0','0','0','0','0','0','0','5.1569','0','0'),
('79712','2','-114.93','-595.137','7.46083','0','0','0','0','0','0','0','0','0','3.61517','0','0'),
('79712','3','-116.278','-594.244','7.41621','20000','0','0','0','0','378','0','0','0','2.55645','0','0'),
('79712','4','-113.198','-595.249','7.21007','0','0','0','0','0','0','0','0','0','0.011757','0','0'),
('79712','5','-111.658','-587.233','4.9339','0','0','0','0','0','0','0','0','0','1.40663','0','0'),
('79712','6','-112.692','-586.419','4.93238','20000','0','0','0','0','0','378','0','0','2.47477','0','0');

-- Coilfang Observer
UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (52352);
DELETE FROM creature_movement WHERE id IN (52352);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('52352','1','-119.257','-592.661','7.43123','6000','0','0','0','0','0','0','0','0','5.27387','0','0'),
('52352','2','-119.257','-592.661','7.43123','20000','0','0','0','0','0','378','0','0','5.27387','0','0'),
('52352','3','-119.257','-592.661','7.43123','26000','0','0','0','0','0','0','0','0','5.27387','0','0');

-- Coilfang Tempest
UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79842);
DELETE FROM creature_movement WHERE id IN (79842);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79842','1','-115.351','-584.643','4.97746','32000','0','0','0','0','0','0','0','0','6.20593','0','0'),
('79842','2','-115.351','-584.643','4.97746','20000','0','0','0','0','0','0','378','0','6.20593','0','0');


-- Linked Aggro Misc Group - Top of Slope Before Naturist
DELETE FROM creature_linking WHERE master_guid IN (79414);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79418','79414','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79419','79414','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79412','79414','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79414);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79418,79419,79412);
DELETE FROM creature_movement WHERE id IN (79414);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79414','1','-84.0911','-711.26','37.1397','0','0','0','0','0','0','0','0','0','1.72393','0','0'),
('79414','2','-88.0127','-695.263','35.2327','0','0','0','0','0','0','0','0','0','1.8064','0','0'),
('79414','3','-92.2015','-676.346','32.0572','0','0','0','0','0','0','0','0','0','1.80875','0','0'),
('79414','4','-97.9389','-660.759','24.8372','0','0','0','0','0','0','0','0','0','1.89515','0','0'),
('79414','5','-97.4984','-648.84','19.5284','0','0','0','0','0','0','0','0','0','1.53386','0','0'),
('79414','6','-95.5991','-637.224','20.6174','0','0','0','0','0','0','0','0','0','1.38307','0','0'),
('79414','7','-96.1432','-623.575','16.4106','0','0','0','0','0','0','0','0','0','1.54172','0','0'),
('79414','8','-99.546','-638.307','20.2234','0','0','0','0','0','0','0','0','0','4.48539','0','0'),
('79414','9','-102.222','-651.587','20.2289','0','0','0','0','0','0','0','0','0','4.48068','0','0'),
('79414','10','-99.2144','-667.874','27.952','0','0','0','0','0','0','0','0','0','4.86867','0','0'),
('79414','11','-96.3574','-678.267','32.3399','0','0','0','0','0','0','0','0','0','4.87338','0','0'),
('79414','12','-90.2201','-695.992','35.6342','0','0','0','0','0','0','0','0','0','4.99825','0','0'),
('79414','13','-86.5011','-715.519','36.9191','0','0','0','0','0','0','0','0','0','4.86866','0','0'),
('79414','14','-83.9543','-729.734','36.6658','0','0','0','0','0','0','0','0','0','4.8396','0','0'),
('79414','15','-89.3988','-738.455','36.0403','0','0','0','0','0','0','0','0','0','4.13746','0','0'),
('79414','16','-100.22','-745.425','35.4346','0','0','0','0','0','0','0','0','0','3.64423','0','0'),
('79414','17','-111.201','-750.931','36.9869','0','0','0','0','0','0','0','0','0','3.41332','0','0'),
('79414','18','-99.4713','-744.706','35.4234','0','0','0','0','0','0','0','0','0','0.585104','0','0'),
('79414','19','-85.7519','-735.617','36.2493','0','0','0','0','0','0','0','0','0','0.585104','0','0'),
('79414','20','-82.4035','-725.744','36.7559','0','0','0','0','0','0','0','0','0','1.23698','0','0');


-- Linked Aggro Works - Top Of Slope
DELETE FROM creature_linking WHERE master_guid IN (52379);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52378','52379','3');


-- Linked Aggro Works - Top Of Slope
DELETE FROM creature_linking WHERE master_guid IN (52376);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('52377','52376','3');


-- Linked Aggro Bogstrok Group - Final Boss Chamber
DELETE FROM creature_linking WHERE master_guid IN (79852);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('79524','79852','515'),
('79851','79852','515'),
('80044','79852','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (79852);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (79524,79851,80044);
DELETE FROM creature_movement WHERE id IN (79852);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('79852','1','-193.28','-730.644','36.7285','0','5','0','0','0','0','0','0','0','4.88752','0','0'),
('79852','2','-176.133','-737.439','37.6712','0','0','0','0','0','0','0','0','0','5.84885','0','0'),
('79852','3','-152.775','-755.023','37.8924','0','0','0','0','0','0','0','0','0','5.53076','0','0'),
('79852','4','-142.723','-766.83','37.8924','0','0','0','0','0','0','0','0','0','5.36033','0','0'),
('79852','5','-152.162','-754.221','37.8924','0','0','0','0','0','0','0','0','0','2.2156','0','0'),
('79852','6','-166.051','-742.04','37.8924','0','0','0','0','0','0','0','0','0','2.43158','0','0'),
('79852','7','-192.943','-731.203','36.6513','0','0','0','0','0','0','0','0','0','2.73317','0','0'),
('79852','8','-197.918','-719.931','37.6508','0','0','0','0','0','0','0','0','0','1.95799','0','0'),
('79852','9','-196.525','-699.135','37.6758','0','0','0','0','0','0','0','0','0','1.59827','0','0');


-- Linked Aggro Bogstrok Group - Final Boss Chamber
DELETE FROM `creature` WHERE `guid` IN ('107723','107724','107725','107726');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('107723','17817','547','3','0','0','-125.916','-747.339','37.3758','2.60908','7200','0','0','15488','0','0','0'),
('107724','17817','547','3','0','0','-121.776','-749.779','37.0171','2.60908','7200','0','0','15488','0','0','0'),
('107725','17816','547','3','0','0','-123.838','-744.364','37.1563','2.58787','7200','0','0','15488','0','0','0'),
('107726','17816','547','3','0','0','-127.141','-750.718','37.6108','2.61772','7200','0','0','15488','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (107723);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107724','107723','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107725','107723','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107726','107723','515');

UPDATE creature SET MovementType=2, SpawnDist=0 WHERE guid IN (107723);
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (107724,107725,107726);
DELETE FROM creature_movement WHERE id IN (107723);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('107723','1','-134.06','-740.453','37.8923','0','5','0','0','0','0','0','0','0','2.44336','0','0'),
('107723','2','-151.281','-725.953','37.8923','0','0','0','0','0','0','0','0','0','2.37739','0','0'),
('107723','3','-172.5','-712.411','37.8923','0','0','0','0','0','0','0','0','0','2.51719','0','0'),
('107723','4','-196.669','-701.407','37.7803','0','0','0','0','0','0','0','0','0','2.67349','0','0'),
('107723','5','-201.412','-687.799','37.4671','0','0','0','0','0','0','0','0','0','1.67289','0','0'),
('107723','6','-196.17','-703.307','37.8924','0','0','0','0','0','0','0','0','0','5.05717','0','0'),
('107723','7','-175.41','-712.587','37.8924','0','0','0','0','0','0','0','0','0','5.82607','0','0'),
('107723','8','-149.446','-730.941','37.8924','0','0','0','0','0','0','0','0','0','5.67057','0','0'),
('107723','9','-132.762','-742.739','37.8924','0','0','0','0','0','0','0','0','0','5.81429','0','0'),
('107723','10','-125.391','-755.768','37.494','0','0','0','0','0','0','0','0','0','5.26766','0','0'),
('107723','11','-131.26','-744.295','37.8934','0','0','0','0','0','0','0','0','0','2.04281','0','0');


-- Linked Aggro Misc Group - Final Boss Chamber
UPDATE creature SET position_x = '-194.348877', position_y = '-762.058105', position_z = '42.026356', orientation = '1.628124' WHERE guid = '79844';
UPDATE creature SET position_x = '-186.089584', position_y = '-765.180054', position_z = '42.236408', orientation = '1.035148' WHERE guid = '79713';
UPDATE creature SET position_x = '-178.193283', position_y = '-769.627319', position_z = '42.270947', orientation = '0.768898' WHERE guid = '79711';
UPDATE creature SET SpawnDist=4, MovementType=1 WHERE guid IN (79845,79844,79713,79711);

DELETE FROM creature_linking WHERE master_guid IN (79845);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values
('79844','79845','3'),
('79713','79845','3'),
('79711','79845','3');


-- Quagmirran (Pathing Out of Water on Hostile LOS) - Triggered by ACID Script (100 Yard Hostile OOC LOS)
UPDATE creature SET MovementType=0, SpawnDist=0 WHERE guid IN (80260);
DELETE FROM creature_movement_template WHERE entry IN (17942);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('17942','1','-258.402','-677.332','15.458','0','0','0','0','0','0','0','0','0','5.7837','0','0'),
('17942','2','-231.27','-690.677','20.919','0','0','0','0','0','0','0','0','0','5.80053','0','0'),
('17942','3','-212.899','-700.883','31.7988','0','0','0','0','0','0','0','0','0','5.81781','0','0'),
('17942','4','-202.813','-706.271','37.512','0','0','0','0','0','0','0','0','0','5.81545','0','0'),
('17942','5','-194.425','-709.766','37.893','21600000','3','0','0','0','0','0','0','0','5.93091','0','0');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=3;
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('3','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','GENERIC - Disable Waypoint Movement');


-- ======================
-- Gameobject Spawn Fixes 
-- ======================
-- Minerals and Herbs Not Spawned in Heroic Mode
UPDATE gameobject SET SpawnMask=3, SpawnTimeSecs=86400 WHERE map=547 AND ID IN (181270,181275,181276,181278,181556,181569);



-- ===========================================
-- Creature Spawn Time Fixes (24 Hour Respawn) - Confirmed No Special Short Spawn Time NPC
-- ===========================================
UPDATE creature SET SpawnTimeSecs=86400 WHERE map IN (547);




























