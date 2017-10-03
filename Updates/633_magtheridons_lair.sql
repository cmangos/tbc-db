-- ======================================================================
-- ==========          Magtheridon's Lair Development          ==========
-- ======================================================================

-- ==========
-- MISC FIXES
-- ==========
UPDATE creature SET SpawnTimeSecsMin=7200, SpawnTimeSecsMax=7200 WHERE id IN (18829); -- As Per TBC Dungeon Guide Respawn Time

-- Link All Hellfire Warders to Magtheridon to Aggro if Magtheridon Aggros
DELETE FROM creature_linking WHERE guid IN (90988,90990,91248,91249,90986,90987);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90988','91254','1');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90990','91254','1');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91248','91254','1');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91249','91254','1');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90986','91254','1');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90987','91254','1');

-- Link Hellfire Warders to Hellfire Warders For Aggro
DELETE FROM creature_linking_template WHERE entry IN (18829);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('18829','544','18829','15','40');


-- =========================
-- NPC Mechanic Immune Masks
-- =========================
-- Bosses
UPDATE creature_template SET MechanicImmuneMask=1+2+4+8+16+32+64+128+256+512+1024+2048+4096+8192+65536+131072+524288+2097152+4194304+8388608+33554432+67108864+536870912 WHERE entry IN (17257);
-- Hellfire Warder
UPDATE creature_template SET MechanicImmuneMask=1+2+4+8+16+32+64+128+256+512+1024+2048+4096+8192+65536+131072+524288+2097152+4194304+8388608+67108864+536870912 WHERE entry IN (18829);


-- ====================
-- First Group Of 3 NPC
-- ====================
DELETE FROM creature_linking WHERE guid IN (90988,90990);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90988','90989','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90990','90989','3');


-- =====================
-- Second Group Of 3 NPC - Right Side Channelers (Green Channel)
-- =====================
UPDATE creature SET MovementType=2 WHERE guid IN (91247,91248,91249);

DELETE FROM creature_movement WHERE id IN (91249,91247,91248);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(91247,1,-0.181343,67.1853,22.8294,5000,1882901,1.5708),
(91248,1,6.12531,69.0678,22.9075,5000,1882901,2.07694),
(91249,1,-8.90767,68.377,22.6632,5000,1882901,1.16937);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1882901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1882901,1,15,33346,0,15384,30,1,0,0,0,0,0,0,0,0,'Cast Green Beam at Trigger'),
(1882901,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 0:idle');

DELETE FROM creature_linking WHERE guid IN (91247,91248);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91247','91249','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91248','91249','3');

-- =====================
-- Third Group Of 3 NPC - Left Side Channelers (Red Channel)
-- =====================
UPDATE creature SET MovementType=2 WHERE guid IN (90985,90986,90987);

DELETE FROM creature_movement WHERE id IN (90985,90986,90987);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(90985,1,2.00162,-64.4008,22.8575,0.645772,0,1882902),
(90986,1,2.69777,-60.936,22.8984,4.95674,0,1882902),
(90987,1,5.55054,-64.0838,22.9179,2.86234,0,1882902);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1882902; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1882902,1,15,33827,0,15384,30,1,0,0,0,0,0,0,0,0,'Cast Hellfire Warder Channel Visual at Trigger'),
(1882902,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

DELETE FROM creature_linking WHERE guid IN (90985,90986);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90985','90987','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90986','90987','3');

-- =====================
-- Fourth Group Of 3 NPC - Pathing
-- =====================
UPDATE creature SET position_x = '-53.937073', position_y = '58.845356', position_z = '3.100102', orientation = '0.356661' WHERE guid = '90991';
UPDATE creature SET position_x = '-54.837761', position_y = '60.284191', position_z = '3.075867', orientation = '0.173576' WHERE guid = '90992';
UPDATE creature SET position_x = '-53.515583', position_y = '57.126961', position_z = '3.039914', orientation = '0.321231' WHERE guid = '90993';

UPDATE creature SET MovementType=2 WHERE guid IN (90991);
DELETE FROM creature_movement WHERE id IN (90991);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(90991,1,-49.6813,60.5927,5.03416,0.332226,0,0),
(90991,2,-37.0806,63.5505,11.4187,0.234052,0,0),
(90991,3,-15.339,64.4607,22.4051,0.037702,0,0),
(90991,4,-2.82082,60.3236,22.7537,5.91719,0,0),
(90991,5,10.4314,54.2387,22.9883,5.7821,0,0),
(90991,6,18.6907,49.4066,25.5468,5.75383,0,0),
(90991,7,42.6337,20.2855,45.0879,5.32736,0,0),
(90991,8,42.6019,-5.68907,45.0774,4.71632,0,0),
(90991,9,41.2016,-15.4674,44.9791,4.52075,0,0),
(90991,10,30.0538,-32.4034,35.263,4.13748,0,0),
(90991,11,14.3028,-49.8232,22.9866,3.97726,0,0),
(90991,12,-13.0309,-62.9285,22.5601,3.57121,0,0),
(90991,13,-36.8669,-60.4307,11.6268,2.99551,0,0),
(90991,14,-64.109,-49.4102,-0.356022,2.67899,0,0),
(90991,15,-79.3555,-36.7386,-0.222637,2.43395,0,0),
(90991,16,-86.1129,-25.0452,-0.408269,2.12057,0,0),
(90991,17,-83.6407,-29.8983,-0.407861,5.13415,0,0),
(90991,18,-80.0049,-37.4373,-0.16519,5.24253,0,0),
(90991,19,-64.1558,-51.1257,-0.356127,5.57633,0,0),
(90991,20,-35.592,-62.0832,12.3951,6.04835,0,0),
(90991,21,-13.6475,-63.2063,22.5574,0.000001,0,0),
(90991,22,6.73354,-54.1176,22.9273,0.469669,0,0),
(90991,23,15.6039,-49.7295,22.9852,0.509725,0,0),
(90991,24,31.6304,-31.8703,36.0042,0.764979,0,0),
(90991,25,42.8399,-15.4249,45.1253,1.02495,0,0),
(90991,26,44.0306,4.02115,45.0505,1.58808,0,0),
(90991,27,40.6251,19.6828,44.7934,1.51739,0,0),
(90991,28,28.8451,37.0172,34.6125,2.19441,0,0),
(90991,29,18.3277,51.5737,24.4037,2.18341,0,0),
(90991,30,10.3613,58.283,22.9413,2.2054,0,0),
(90991,31,-2.81051,60.1499,22.7567,3.01436,0,0),
(90991,32,-16.115,66.385,22.0908,2.70334,0,0),
(90991,33,-37.9759,64.8516,11.1452,3.1683,0,0),
(90991,34,-51.0157,60.8371,4.48624,3.53744,0,0),
(90991,35,-75.4553,45.1516,-0.396156,3.77306,0,0),
(90991,36,-58.4703,56.2286,1.37021,0.471243,0,0);

DELETE FROM creature_linking WHERE guid IN (90992,90993);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90992','90991','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('90993','90991','515');


