-- ==================================
-- Auchindoun: The Mana Tombs
-- ==================================

-- ========================================================
-- All Bosses and Heroic Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ========================================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (18341,20267,18343,20268,22930,18344,20266);


-- ==============
-- Misc NPC Fixes
-- ==============
UPDATE creature_template SET UnitFlags=UnitFlags|64, ExtraFlags=ExtraFlags|64 WHERE entry IN (18430,20253);

-- =========================
-- Missing Equipment Entries
-- =========================



-- ======================
-- Special NPC Loot Fixes
-- ======================
-- ------------------------------------------------------
-- Tavarok (Normal / Heroic) - Mineral Gather From Corpse
-- ------------------------------------------------------
UPDATE creature_template SET CreatureTypeFlags=CreatureTypeFlags|512, SkinningLootId=60001 WHERE entry IN (18343,20268);

DELETE FROM skinning_loot_template WHERE entry=60001;
insert into `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('60001','39001','100','0','-39001','1','0','Special TBC NPC (Mineral Gathering) - Special Corpse Loot');




-- ================================
-- Remove Incorrect or Wrong Spawns
-- ================================
DELETE FROM creature WHERE guid=91246;
DELETE FROM creature_addon WHERE guid=91246;
DELETE FROM creature_movement WHERE id=91246;
DELETE FROM game_event_creature WHERE guid=91246;
DELETE FROM game_event_creature_data WHERE guid=91246;
DELETE FROM creature_battleground WHERE guid=91246;
DELETE FROM creature_linking WHERE guid=91246 OR master_guid=91246;
DELETE FROM creature WHERE guid=91245;
DELETE FROM creature_addon WHERE guid=91245;
DELETE FROM creature_movement WHERE id=91245;
DELETE FROM game_event_creature WHERE guid=91245;
DELETE FROM game_event_creature_data WHERE guid=91245;
DELETE FROM creature_battleground WHERE guid=91245;
DELETE FROM creature_linking WHERE guid=91245 OR master_guid=91245;


-- =========================================
-- Dungeon Aggro Linking and Missing Pathing
-- =========================================
-- Linked Aggro Scavenger and Crypt Raider
DELETE FROM creature_linking WHERE master_guid IN (83305);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83304','83305','3');


-- Linked Movement and Aggro Scavenger and Crypt Raider
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (83301,83302);
DELETE FROM creature_movement WHERE id IN (83301,83302);
DELETE FROM creature_linking WHERE master_guid IN (83302);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83301','83302','515');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (83302);
DELETE FROM creature_movement WHERE id IN (83302);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('83302','1','-68.4671','-16.5295','-0.946325','0','0','0','0','0','0','0','0','0','1.00453','0','0'),
('83302','2','-50.0854','1.97216','-0.948157','0','0','0','0','0','0','0','0','0','0.717857','0','0'),
('83302','3','-38.5007','3.36018','-0.954319','0','0','0','0','0','0','0','0','0','6.24392','0','0'),
('83302','4','-48.6085','-1.04486','-0.950053','0','0','0','0','0','0','0','0','0','3.52408','0','0'),
('83302','5','-67.1109','-20.188','-0.953261','0','0','0','0','0','0','0','0','0','3.84138','0','0'),
('83302','6','-66.9051','-30.807','-0.953261','0','0','0','0','0','0','0','0','0','4.68569','0','0'),
('83302','7','-69.5803','-18.5848','-0.953261','0','0','0','0','0','0','0','0','0','1.29512','0','0');


-- Linked Aggro Crypt Raiders
DELETE FROM creature_linking WHERE master_guid IN (83307);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83306','83307','3');


-- Linked Aggro Sorcerer and Crypt Raiders - Pandemonius Room
DELETE FROM creature_linking WHERE master_guid IN (83313);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83311','83313','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83312','83313','3');


-- Linked Aggro Sorcerer and Crypt Raiders and Scavenger - Pandemonius Room
DELETE FROM creature_linking WHERE master_guid IN (83316);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83317','83316','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83318','83316','3');


-- Linked Aggro Sorcerer and Scavenger - Pandemonius Room
DELETE FROM creature_linking WHERE master_guid IN (83310);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83309','83310','3');


-- Linked Aggro Sorcerer and Crypt Raiders - Pandemonius Room
DELETE FROM creature_linking WHERE master_guid IN (83321);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83314','83321','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83319','83321','3');


-- Linked Movement and Aggro Sorcerer and Crypt Raider - Pandemonius Room
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (83315,83320);
DELETE FROM creature_movement WHERE id IN (83315,83320);
DELETE FROM creature_linking WHERE master_guid IN (83315);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83320','83315','515');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (83315);
DELETE FROM creature_movement WHERE id IN (83315);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('83315','1','-51.1677','-88.944','-2.04667','0','0','0','0','0','0','0','0','0','2.13158','0','0'),
('83315','2','-56.08','-84.4303','-2.10972','0','0','0','0','0','0','0','0','0','2.55883','0','0'),
('83315','3','-61.3633','-84.3612','-1.81563','0','0','0','0','0','0','0','0','0','3.21857','0','0'),
('83315','4','-70.5759','-85.0718','-2.11637','0','0','0','0','0','0','0','0','0','3.21857','0','0'),
('83315','5','-77.9965','-82.3342','-1.88259','0','0','0','0','0','0','0','0','0','2.78817','0','0'),
('83315','6','-81.9147','-83.0498','-1.94223','0','0','0','0','0','0','0','0','0','3.32224','0','0'),
('83315','7','-87.0246','-92.3296','-1.95846','0','0','0','0','0','0','0','0','0','4.16262','0','0'),
('83315','8','-90.2182','-103.755','-0.800048','0','0','0','0','0','0','0','0','0','4.41316','0','0'),
('83315','9','-77.9137','-107.509','-0.441177','0','0','0','0','0','0','0','0','0','5.85908','0','0'),
('83315','10','-67.7309','-109.059','-0.392731','0','0','0','0','0','0','0','0','0','0.040848','0','0'),
('83315','11','-58.6939','-107.919','-0.67805','0','0','0','0','0','0','0','0','0','0.218348','0','0'),
('83315','12','-51.6266','-105.093','-0.101909','0','0','0','0','0','0','0','0','0','0.589056','0','0'),
('83315','13','-48.2706','-98.235','-0.692868','0','0','0','0','0','0','0','0','0','1.03124','0','0');


-- Pandemonius
UPDATE creature SET position_x = '-70.654488', position_y = '-123.279633', position_z = '-1.279336', orientation = '1.423929', SpawnDist=5, MovementType=1 WHERE guid = '91163';


-- Linked Aggro Sorcerer and Crypt Raider - After Pandemonius
DELETE FROM creature_linking WHERE master_guid IN (91239);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91238','91239','3');


-- Misc Group - After Pandemonius
DELETE FROM creature_linking WHERE master_guid IN (91228);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91226','91228','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91227','91228','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91229','91228','3');


-- Linked Aggro Sorcerer and Priests - After Pandemonius
DELETE FROM creature_linking WHERE master_guid IN (91244);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91242','91244','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91243','91244','3');


-- Linked Aggro Mana Leeches - After Pandemonius
DELETE FROM creature_linking WHERE master_guid IN (91218);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91219','91218','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91220','91218','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91221','91218','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91222','91218','3');


-- Linked Aggro Sorcerer and Priests - After Pandemonius
UPDATE creature SET position_x = '-34.143997', position_y = '-223.415634', position_z = '-0.250586', orientation = '2.747324' WHERE guid = '91155';
DELETE FROM creature_linking WHERE master_guid IN (91156);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91155','91156','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91154','91156','3');


-- Linked Aggro and Pathing for Sorcerer and Priest
UPDATE creature SET id=18313, position_x = '-38.561333', position_y = '-226.180069', position_z = '-0.325425', orientation = '2.927186' WHERE guid = '91241';

UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (91240,91241);
DELETE FROM creature_movement WHERE id IN (91240,91241);
DELETE FROM creature_linking WHERE master_guid IN (91241);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83320','91241','515');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91241);
DELETE FROM creature_movement WHERE id IN (91241);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91241','1','-57.5143','-221.873','0.05455','0','0','0','0','0','0','0','0','0','2.71827','0','0'),
('91241','2','-76.2576','-223.04','-0.142771','0','0','0','0','0','0','0','0','0','3.16752','0','0'),
('91241','3','-60.0163','-219.235','0.126113','0','0','0','0','0','0','0','0','0','0.137454','0','0'),
('91241','4','-37.6652','-223.11','-0.352581','0','0','0','0','0','0','0','0','0','6.25335','0','0');


-- Linked Aggro Mana Leeches - After Pandemonius
DELETE FROM creature_linking WHERE master_guid IN (91223);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91224','91223','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91225','91223','3');


-- Misc Group - After Pandemonius
DELETE FROM creature_linking WHERE master_guid IN (91212);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91213','91212','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91214','91212','3');


-- Linked Aggro Sorcerer and Priests - After Pandemonius
DELETE FROM creature_linking WHERE master_guid IN (91151);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91152','91151','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91153','91151','3');


-- Linked Aggro and Pathing for Priests - After Pandemonius
UPDATE creature SET position_x = '-124.241776', position_y = '-214.733719', position_z = '-0.073988', orientation = '5.895207' WHERE guid = '91216';

UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (91215,91216);
DELETE FROM creature_movement WHERE id IN (91215,91216);
DELETE FROM creature_linking WHERE master_guid IN (91215);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91216','91215','515');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91215);
DELETE FROM creature_movement WHERE id IN (91215);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91215','1','-107.135','-214.479','-1.00393','0','0','0','0','0','0','0','0','0','6.02559','0','0'),
('91215','2','-124.756','-213.821','-0.111925','0','0','0','0','0','0','0','0','0','2.94683','0','0'),
('91215','3','-132.259','-210.266','-0.475064','0','0','0','0','0','0','0','0','0','2.73556','0','0'),
('91215','4','-143.641','-225.131','-0.669352','0','0','0','0','0','0','0','0','0','4.04324','0','0'),
('91215','5','-134.662','-214.177','-0.48754','0','0','0','0','0','0','0','0','0','0.850602','0','0'),
('91215','6','-128.114','-210.812','-0.29519','0','0','0','0','0','0','0','0','0','0.446908','0','0');


-- Nexus Terror Pathing - After Pandemonius
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91160);
DELETE FROM creature_movement WHERE id IN (91160);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91160','1','-106.529','-218.153','-0.671122','0','0','0','0','0','0','0','0','0','5.28417','0','0'),
('91160','2','-94.9212','-226.041','-0.365311','0','0','0','0','0','0','0','0','0','5.73813','0','0'),
('91160','3','-82.499','-234.901','-0.048239','0','0','0','0','0','0','0','0','0','5.68159','0','0'),
('91160','4','-88.9317','-230.329','0.31296','0','0','0','0','0','0','0','0','0','2.60754','0','0'),
('91160','5','-99.2986','-218.81','-1.17585','0','0','0','0','0','0','0','0','0','2.35857','0','0'),
('91160','6','-118.682','-203.117','-1.17595','0','0','0','0','0','0','0','0','0','2.36092','0','0');


-- Linked Aggro Sorcerer and Priests - After Pandemonius
DELETE FROM creature_linking WHERE master_guid IN (91208);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91209','91208','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91210','91208','3');


-- Linked Aggro Misc Group - Tavarok Room
DELETE FROM creature_linking WHERE master_guid IN (83340);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83341','83340','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83342','83340','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83343','83340','3');


-- Nexus Terror Pathing - Tavarok Room
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (83346);
DELETE FROM creature_movement WHERE id IN (83346);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('83346','1','-213.174','-248.978','-0.977498','0','0','0','0','0','0','0','0','0','1.18755','0','0'),
('83346','2','-203.93','-237.499','-0.957305','0','0','0','0','0','0','0','0','0','0.862392','0','0'),
('83346','3','-204.707','-221.252','-0.649856','0','0','0','0','0','0','0','0','0','1.70434','0','0'),
('83346','4','-207.851','-208.513','1.16599','0','0','0','0','0','0','0','0','0','1.7601','0','0'),
('83346','5','-205.224','-221.322','-0.658456','0','0','0','0','0','0','0','0','0','4.61659','0','0'),
('83346','6','-203.462','-239.905','-0.955492','0','0','0','0','0','0','0','0','0','4.54826','0','0');


-- Linked Aggro Misc Group - Tavarok Room
DELETE FROM creature_linking WHERE master_guid IN (91124);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91125','91124','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91126','91124','3');


-- Linked Aggro and Pathing Darkcasters Pathing - Tavarok Room
UPDATE creature SET position_x = '-211.961273', position_y = '-206.109512', position_z = '0.783887', orientation = '5.369788' WHERE guid = '83344';

UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (83344,83345);
DELETE FROM creature_movement WHERE id IN (83344,83345);
DELETE FROM creature_linking WHERE master_guid IN (83345);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83344','83345','515');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (83345);
DELETE FROM creature_movement WHERE id IN (83345);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('83345','1','-207.482','-208.05','1.21497','0','0','0','0','0','0','0','0','0','4.82001','0','0'),
('83345','2','-208.388','-222.004','-0.755589','0','0','0','0','0','0','0','0','0','4.79409','0','0'),
('83345','3','-213.647','-246.964','-0.955485','0','0','0','0','0','0','0','0','0','4.42103','0','0'),
('83345','4','-209.359','-237.864','-0.955485','0','0','0','0','0','0','0','0','0','1.2166','0','0'),
('83345','5','-208.284','-226.69','-0.955485','0','0','0','0','0','0','0','0','0','1.57003','0','0'),
('83345','6','-211.068','-212.156','0.600003','0','0','0','0','0','0','0','0','0','1.8622','0','0'),
('83345','7','-220.308','-203.289','-0.034487','0','0','0','0','0','0','0','0','0','2.38606','0','0'),
('83345','8','-229.036','-196.609','-1.08687','0','0','0','0','0','0','0','0','0','2.45989','0','0'),
('83345','9','-237.224','-191.676','-0.953153','0','0','0','0','0','0','0','0','0','2.79447','0','0'),
('83345','10','-221.731','-200.68','-0.205754','0','0','0','0','0','0','0','0','0','5.69416','0','0'),
('83345','11','-208.58','-208.257','1.09395','0','0','0','0','0','0','0','0','0','5.58735','0','0');


-- Fix Some NPC That Should Random Move
UPDATE creature SET SpawnDist=4, MovementType=1 WHERE guid IN (83348,91186,91187);


-- Linked Aggro Darkcaster and Priest - Tavarok Room
UPDATE creature SET id=18317 WHERE guid IN (91186);
DELETE FROM creature_linking WHERE master_guid IN (91186);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91187','91186','3');


-- Linked Aggro Mana Leeches - Tavarok Room
DELETE FROM creature_linking WHERE master_guid IN (91188);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91189','91188','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91190','91188','3');


-- Linked Aggro Darkcaster and Priest - Tavarok Room
UPDATE creature SET position_x = '-256.122192', position_y = '-159.776428', position_z = '-0.953200', orientation = '3.054434' WHERE guid = '83347';
DELETE FROM creature_linking WHERE master_guid IN (83347);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83348','83347','3');


-- Linked Aggro Misc Group - Tavarok Room
DELETE FROM creature_linking WHERE master_guid IN (91121);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91122','91121','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('86396','91121','3');


-- Nexus Terror Pathing - Tavarok Room
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91185);
DELETE FROM creature_movement WHERE id IN (91185);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91185','1','-282.774','-182.071','-1.04198','0','0','0','0','0','0','0','0','0','3.00101','0','0'),
('91185','2','-271.283','-159.754','-2.22956','0','0','0','0','0','0','0','0','0','0.965257','0','0'),
('91185','3','-259.347','-158.022','-1.06405','0','0','0','0','0','0','0','0','0','0.14373','0','0'),
('91185','4','-272.184','-160.583','-2.30457','0','0','0','0','0','0','0','0','0','3.59556','0','0'),
('91185','5','-285.075','-184.305','-1.03008','0','0','0','0','0','0','0','0','0','4.29613','0','0'),
('91185','6','-260.98','-183.951','-0.665579','0','0','0','0','0','0','0','0','0','0.036133','0','0');


-- Linked Aggro Dark Casters - Tavarok Room
DELETE FROM creature_linking WHERE master_guid IN (83338);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83339','83338','3');


-- Link Aggro Mana Leeches - After Tavarok Room
UPDATE creature SET position_x = '-379.217926', position_y = '-222.013870', position_z = '-0.958474', orientation = '1.062645' WHERE guid = '91233';
DELETE FROM creature_linking WHERE master_guid IN (91231);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91232','91231','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91233','91231','3');


-- Linked Aggro and Pathing Priest and Stalkers - After Tavarok Room
UPDATE creature SET position_x = '-375.405548', position_y = '-197.664078', position_z = '-0.959906', orientation = '4.710035' WHERE guid = '83331';

UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (83329,83330,83331);
DELETE FROM creature_movement WHERE id IN (83329,83330,83331);
DELETE FROM creature_linking WHERE master_guid IN (83329);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83330','83329','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83331','83329','515');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (83329);
DELETE FROM creature_movement WHERE id IN (83329);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('83329','1','-373.131','-218.537','-0.959388','0','0','0','0','0','0','0','0','0','4.52861','0','0'),
('83329','2','-373.105','-238.094','-0.957918','0','0','0','0','0','0','0','0','0','4.74538','0','0'),
('83329','3','-373.159','-219.322','-0.957918','0','0','0','0','0','0','0','0','0','1.57708','0','0'),
('83329','4','-373.284','-199.4','-0.957918','0','0','0','0','0','0','0','0','0','1.57708','0','0'),
('83329','5','-373.354','-188.369','-0.960164','0','0','0','0','0','0','0','0','0','1.57708','0','0'),
('83329','6','-373.279','-198.468','-0.960164','0','0','0','0','0','0','0','0','0','4.76266','0','0');


-- Linked Aggro and Pathing Darkcaster and Stalker - After Tavarok Room
UPDATE creature SET position_x = '-363.696625', position_y = '-173.340500', position_z = '-0.958735', orientation = '0.732784' WHERE guid = '91172';

UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (91173,91172);
DELETE FROM creature_movement WHERE id IN (91173,91172);
DELETE FROM creature_linking WHERE master_guid IN (91173);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91172','91173','515');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91173);
DELETE FROM creature_movement WHERE id IN (91173);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91173','1','-363.095','-166.467','-0.958735','0','0','0','0','0','0','0','0','0','1.09721','0','0'),
('91173','2','-363.858','-160.312','-0.958735','0','0','0','0','0','0','0','0','0','1.69411','0','0'),
('91173','3','-367.381','-155.692','-0.958735','0','0','0','0','0','0','0','0','0','2.22269','0','0'),
('91173','4','-372.034','-153.512','-0.958735','0','0','0','0','0','0','0','0','0','2.70335','0','0'),
('91173','5','-377.024','-154.472','-0.958735','0','0','0','0','0','0','0','0','0','3.33167','0','0'),
('91173','6','-380.718','-157.007','-0.956973','0','0','0','0','0','0','0','0','0','3.74322','0','0'),
('91173','7','-383.756','-161.811','-0.949288','0','0','0','0','0','0','0','0','0','4.14848','0','0'),
('91173','8','-383.116','-167.868','-0.958527','0','0','0','0','0','0','0','0','0','4.81764','0','0'),
('91173','9','-379.09','-172.278','-0.958527','0','0','0','0','0','0','0','0','0','5.45224','0','0'),
('91173','10','-374.542','-174.996','-0.958527','0','0','0','0','0','0','0','0','0','5.74441','0','0'),
('91173','11','-369.525','-175.13','-0.958527','0','0','0','0','0','0','0','0','0','6.25649','0','0'),
('91173','12','-365.398','-172.63','-0.958527','0','0','0','0','0','0','0','0','0','0.358937','0','0');


-- Link Aggro Darkcaster and Sorcerer - After Tavarok Room
DELETE FROM creature_linking WHERE master_guid IN (83335);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83336','83335','3');


-- Link Aggro Darkcaster and Sorcerer - After Tavarok Room
DELETE FROM creature_linking WHERE master_guid IN (83332);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83333','83332','3');


-- Random Movement For Nexus Terror - After Tavarok Room
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid = '91235';


-- Link Aggro Theurgist and Stalkers - After Tavarok Room
DELETE FROM creature_linking WHERE master_guid IN (91166);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91165','91166','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91164','91166','3');


-- Link Aggro Spellbinders - After Tavarok Room
UPDATE creature SET id=18314 WHERE guid IN (91179);
DELETE FROM creature_linking WHERE master_guid IN (91179);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91180','91179','3');


-- Nexus Terror Pathing - Stairs Room
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91234);
DELETE FROM creature_movement WHERE id IN (91234);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91234','1','-381.532','-63.9462','-0.95873','0','0','0','0','0','0','0','0','0','1.02968','0','0'),
('91234','2','-373.859','-58.4536','-0.95873','0','0','0','0','0','0','0','0','0','0.552938','0','0'),
('91234','3','-370.031','-58.3934','-0.963069','0','0','0','0','0','0','0','0','0','0.015725','0','0'),
('91234','4','-366.174','-60.1933','-0.960014','0','0','0','0','0','0','0','0','0','5.84652','0','0'),
('91234','5','-363.401','-64.3568','-0.960014','0','0','0','0','0','0','0','0','0','5.58734','0','0'),
('91234','6','-360.455','-71.6346','-0.960014','0','0','0','0','0','0','0','0','0','5.03756','0','0'),
('91234','7','-363.839','-63.4913','-0.960014','0','0','0','0','0','0','0','0','0','2.11431','0','0'),
('91234','8','-370.398','-58.5865','-0.961497','0','0','0','0','0','0','0','0','0','2.49994','0','0'),
('91234','9','-380.132','-60.454','-0.96026','0','0','0','0','0','0','0','0','0','3.33246','0','0'),
('91234','10','-385.05','-66.7028','-0.96026','0','0','0','0','0','0','0','0','0','4.04561','0','0'),
('91234','11','-385.156','-72.6797','-0.96026','0','0','0','0','0','0','0','0','0','4.90719','0','0');


-- Link Aggro Spellbinders and Stalker - Stairs Room
DELETE FROM creature_linking WHERE master_guid IN (91182);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91183','91182','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91184','91182','3');


-- Link Aggro Spellbinders and Stalker - Stairs Room
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (91174,91175,91176);
DELETE FROM creature_linking WHERE master_guid IN (91174);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91175','91174','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91176','91174','3');


-- Link Aggro Misc Group - Stairs Room
DELETE FROM creature_linking WHERE master_guid IN (91167);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91168','91167','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91169','91167','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91170','91167','3');


-- Linked Aggro and Pathing Spellbinders - Final Boss Room
UPDATE creature SET position_x = '-321.008057', position_y = '8.035716', position_z = '16.793634', orientation = '6.170106', SpawnDist=0, MovementType=0 WHERE guid = '91203';
UPDATE creature SET position_x = '-318.931885', position_y = '12.176610', position_z = '16.966560', orientation = '6.142618', SpawnDist=0, MovementType=0 WHERE guid = '91202';

DELETE FROM creature_movement WHERE id IN (91203);
DELETE FROM creature_linking WHERE master_guid IN (91203);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91202','91203','515');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91203);
DELETE FROM creature_movement WHERE id IN (91203);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91203','1','-308.329','4.39094','16.6836','0','0','0','0','0','0','0','0','0','6.11042','0','0'),
('91203','2','-291.197','3.89066','16.7884','0','0','0','0','0','0','0','0','0','0.000807','0','0'),
('91203','3','-262.375','5.20316','16.7856','0','0','0','0','0','0','0','0','0','0.172808','0','0'),
('91203','4','-282.805','4.64257','16.7864','0','0','0','0','0','0','0','0','0','3.19581','0','0'),
('91203','5','-298.492','4.56114','16.7887','0','0','0','0','0','0','0','0','0','3.18403','0','0'),
('91203','6','-320.538','8.03506','16.7917','0','0','0','0','0','0','0','0','0','3.00731','0','0');


-- Link Aggro Spellbinder Thurgist Group - Final Boss Room
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (91204,91205,91206);
DELETE FROM creature_linking WHERE master_guid IN (91204);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91205','91204','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91206','91204','3');


-- Nexus Terror Pathing - Final Boss Room
UPDATE creature SET position_x = '-285.064728', position_y = '0.591321', position_z = '16.786257', orientation = '1.219743' WHERE guid = '91194';
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91194);
DELETE FROM creature_movement WHERE id IN (91194);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91194','1','-279.342','13.4469','18.1128','0','0','0','0','0','0','0','0','0','0.950355','0','0'),
('91194','2','-272.79','25.3689','21.7845','0','0','0','0','0','0','0','0','0','1.24959','0','0'),
('91194','3','-268.572','31.4666','24.3607','0','0','0','0','0','0','0','0','0','0.832545','0','0'),
('91194','4','-274.577','21.3575','20.511','0','0','0','0','0','0','0','0','0','4.24353','0','0'),
('91194','5','-284.049','7.4308','16.7873','0','0','0','0','0','0','0','0','0','3.93251','0','0'),
('91194','6','-284.896','-0.247323','16.7873','0','0','0','0','0','0','0','0','0','4.77524','0','0'),
('91194','7','-285.129','-6.24572','16.6856','0','0','0','0','0','0','0','0','0','4.78702','0','0'),
('91194','8','-285.54','0.26651','16.7874','0','0','0','0','0','0','0','0','0','1.54647','0','0');


-- Link Aggro Misc Group - Final Boss Room
DELETE FROM creature_linking WHERE master_guid IN (91197);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91198','91197','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91199','91197','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91200','91197','3');


-- Nexus Terror Pathing - Final Boss Room
UPDATE creature SET position_x = '-227.458206', position_y = '8.951720', position_z = '16.786737', orientation = '3.207590' WHERE guid = '91201';
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (91201);
DELETE FROM `creature_movement` WHERE `id`=91201;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('91201','1','-248.044','8.94805','16.785','0','0','0','0','0','0','0','0','0','3.15026','0','0'),
('91201','2','-217.958','9.05456','16.7878','0','0','0','0','0','0','0','0','0','6.25808','0','0'),
('91201','3','-197.048','9.2896','16.7714','0','0','0','0','0','0','0','0','0','6.23295','0','0'),
('91201','4','-216.399','9.11772','16.7874','0','0','0','0','0','0','0','0','0','3.10863','0','0');


-- Link Aggro Mana Leeches - Final Boss Room
DELETE FROM creature_linking WHERE master_guid IN (91139);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91140','91139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91141','91139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91142','91139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91143','91139','3');


-- Link Aggro Mana Leeches - Final Boss Room
DELETE FROM creature_linking WHERE master_guid IN (91134);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91135','91134','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91136','91134','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91137','91134','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91138','91134','3');



-- ======================
-- Gameobject Spawn Fixes 
-- ======================
-- Minerals and Herbs Not Spawned in Heroic Mode
UPDATE gameobject SET SpawnMask=3, SpawnTimeSecs=86400 WHERE map=557 AND ID IN (181270,181275,181276,181278,181556,181569);


-- Spawn Missing Shaffar's Stasis Chamber (Heroic Only)
UPDATE gameobject_template SET size=3 WHERE entry IN (185519,185522,185460);
DELETE FROM `gameobject` WHERE `guid` IN (11940,11941,11935,11936);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('11940','185522','557','2','-235.7991','-13.00704','17.05684','1.361356','0','0','0','0','600000','100','1'),
('11941','185460','557','2','-235.8613','-12.97968','17.05966','1.553341','0','0','0','0','600000','255','1'),
('11935','185519','557','2','-107.662','-102.516','-0.420004','0.707648','0','0','0','0','7200','100','1'),
('11936','185460','557','2','7.909665','-223.0374','-0.934313','1.97222','0','0','0','0','7200','255','1');

DELETE FROM `dbscripts_on_go_template_use` WHERE `id`=185522;
insert into `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('185522','2','10','22930','600000','0','0','0','0','0','0','0','-235.7991','-13.00704','17.05684','1.361356','Spawn Yor');



-- ===========================================
-- Creature Spawn Time Fixes (24 Hour Respawn) - Confirmed No Special Short Spawn Time NPC
-- ===========================================
UPDATE creature SET SpawnTimeSecs=86400 WHERE map IN (557);

















