-- MISSING FINAL VENDOR: http://db.hellground.net/?npc=26305
-- Horde: http://db.hellground.net/?npc=26304
-- (Marshal's Dreadweave Stalkers: In Patch 2.1.2, this item was replaced by [Veteran's Dreadweave Stalkers] and is no longer available. )
-- http://wowwiki.wikia.com/wiki/Marshal's_Dreadweave_Stalkers

-- =========================
-- Arena NPC General Cleanup
-- =========================
-- Remove Old Arena Organizer and Battlemasters (Respawned Multiple Times For Game Event Linking)
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (18897,18895,19861,19859,19856,19858,19909,19911,19912,19915,19923,19925,20497,20499,21235,26378));
-- Remove Gossips from guids - ToDo: Recheck
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (18895,19856,19858,19909,19911,19912,19915,19923,19925,20497,20499));
DELETE FROM creature WHERE id IN (18897,18895,19861,19859,19856,19858,19909,19911,19912,19915,19923,19925,20497,20499,21235,26378);

-- ======================================
-- OLD DATABASE SEASON 1 VENDOR TEMPLATES
-- ======================================
-- Vixton Pinchwhistle
DELETE FROM npc_vendor WHERE entry IN (20278);

-- Karynna, Olus, Soryn, and Kayri. 
DELETE FROM npc_vendor WHERE entry IN (26090,26089,26091,26092);

-- Misc PvP Item Vendors
DELETE FROM npc_vendor WHERE entry IN (23446,23447,26394,24670,24520,26395,26398);


-- ======================================
-- OLD DATABASE SEASON 2 VENDOR TEMPLATES
-- ======================================
-- Season 2 PvP Complete Vendors (DURING DIFFERENT SEASON ???)
UPDATE creature_template SET VendorTemplateId=0 WHERE VendorTemplateId=501;
DELETE FROM npc_vendor_template WHERE entry IN (501);

-- Season 2 PvP Armor Vendors (VendorTemplateId = 502)
UPDATE creature_template SET VendorTemplateId=0 WHERE VendorTemplateId=502;
DELETE FROM npc_vendor_template WHERE entry IN (502);

-- Season 2 PvP Weapon Vendors (VendorTemplateId = 503)
UPDATE creature_template SET VendorTemplateId=0 WHERE VendorTemplateId=503;
DELETE FROM npc_vendor_template WHERE entry IN (503);

-- Season 2 PvP Weapon Vendors (VendorTemplateId = 504)
UPDATE creature_template SET VendorTemplateId=0 WHERE VendorTemplateId=504;
DELETE FROM npc_vendor_template WHERE entry IN (504);


-- ======================================
-- OLD DATABASE SEASON 3 VENDOR TEMPLATES
-- ======================================
-- Season 3 PvP Complete Vendors (DURING DIFFERENT SEASON ???)
UPDATE creature_template SET VendorTemplateId=0 WHERE VendorTemplateId=508;
DELETE FROM npc_vendor_template WHERE entry IN (508);


-- ======================================
-- OLD DATABASE SEASON 4 VENDOR TEMPLATES
-- ======================================
-- Season 4 PvP Complete Vendors (DURING DIFFERENT SEASON ???)
UPDATE creature_template SET VendorTemplateId=0 WHERE VendorTemplateId=500;
DELETE FROM npc_vendor_template WHERE entry IN (500);



-- ============================================================================================
-- ==========         Pre Arena PvP Seasons - PvP Offering Prior To Season 1         ==========
-- ==========                       Before January 30, 2007                          ==========
-- ==========                       (Prior To Patch 2.0.6)                           ==========
-- ============================================================================================
-- -----------------------------------------------------------------------------
-- Sergeant Major Clate (12785) (All Seasons) L60 PvP Armor - Alliance
-- -----------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE entry IN (12785);
UPDATE creature_template SET VendorTemplateId=540 WHERE entry IN (12785);

-- --------------------------------------------------------------------------------
-- Lieutenant Jackspring (12784) (All Seasons) L60 PvP Weapons - Alliance
-- --------------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE entry IN (12784);
UPDATE creature_template SET VendorTemplateId=541 WHERE entry IN (12784);

-- ------------------------------------------------------------------------------
-- First Sergeant Hola'mahi (12795) (All Seasons) L60 PvP Armor - Horde
-- ------------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE entry IN (12795);
UPDATE creature_template SET VendorTemplateId=542 WHERE entry IN (12795);

-- ------------------------------------------------------------------------
-- Stone Guard Zarg (12794) (All Seasons) L60 PvP Weapons - Horde
-- ------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE entry IN (12794);
UPDATE creature_template SET VendorTemplateId=543 WHERE entry IN (12794);

-- ---------------------------------------------------------------------------------------------------------------
-- Normal Version of Captain Dirgehammer (12777) (Prior To Season 3) - L70 PvP Armor + L70 PvP Belts/Boots/Bracers (Was Only Sold Until Start of Season 2)
-- ---------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (14);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('14','12777','449','1','0','0','-6.9852','-6.68433','5.57096','1.25664','180','180','0','0','11828','0','0','0');
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=548 WHERE entry IN (12777);

-- ---------------------------------------------------------------------------------------------
-- Normal Version of Captain O'Neal (12782) (Prior to Season 3) - L70 PvP Weapons 
-- ---------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (23);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23','12782','449','1','0','0','7.67861','33.5746','1.13917','3.75246','180','180','0','0','11828','0','0','0');
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=546 WHERE entry IN (12782);

-- ----------------------------------------------------------------------------------------------------------
-- Normal Version of Lady Palanseer (12792) (Prior To Season 3) - L70 PvP Armor + L70 PvP Belts/Boots/Bracers (Was Only Sold Until Start of Season 2)
-- ----------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (86418);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('86418','12792','450','1','0','0','262.328','86.2516','25.7205','3.23834','180','180','0','0','11828','0','0','0');
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=549 WHERE entry IN (12792);

-- ---------------------------------------------------------------------------------------------------
-- Normal Version of Sergeant Thunderhorn (14581) (Prior to Season 3) - L70 PvP Weapons 
-- ---------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (86420);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('86420','14581','450','1','0','0','243.532','104.221','25.7195','4.85973','180','180','0','0','11828','0','0','0');
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=547 WHERE entry IN (14581);



-- ==================================================================================
-- ==========         Arena PvP Season 1 - Complete Implementation         ==========
-- ==========          January 30, 2007 - June 19, 2007 20 Weeks           ==========
-- ==========                (Released During Patch 2.0.6)                 ==========
-- ==================================================================================
-- -------------------------------------------------------------------
-- Vixton Pinchwhistle (Area 52) - Entry 20278 - Selling Season 1 Gear
-- -------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105900);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105900','20278','530','1','0','0','3070.16','3635.11','143.864','0.750492','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105900);
insert into `game_event_creature` (`guid`, `event`) values('105900','53'); -- Link Vixton Pinchwhistle to Season 1
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=550 WHERE entry IN (20278); -- Season 1 Full Price

-- "King" Dond (18897) - Nagrand Arena Organizer
DELETE FROM creature WHERE guid IN (102000);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102000','18897','530','1','0','0','-2160.02','6666.19','2.58939','5.2709','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102000);
insert into `game_event_creature` (`guid`, `event`) values('102000','53');

-- Ear-Biter (18895) - Nagrand Arena Battlemaster
DELETE FROM creature WHERE guid IN (102004);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102004','18895','530','1','0','0','-2165.33','6647.25','0.38844','6.19592','300','300','0','0','349300','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102004);
insert into `game_event_creature` (`guid`, `event`) values('102004','53');

-- Bip Nigstrom (19861) - Gadgetzan Arena Organizer
DELETE FROM creature WHERE guid IN (102008);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102008','19861','1','1','0','0','-7139.31','-3761.98','9.54388','1.78024','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102008);
insert into `game_event_creature` (`guid`, `event`) values('102008','53');

-- Max Luna (19859) - Gadgetzan Arena Battlemaster
DELETE FROM creature WHERE guid IN (102012);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102012','19859','1','1','0','0','-7124.54','-3804.47','8.75568','5.46288','300','300','0','0','349300','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102012);
insert into `game_event_creature` (`guid`, `event`) values('102012','53');

-- Steamwheedle Sam (19856) - Blade's Edge Mountains Arena Organizer
DELETE FROM creature WHERE guid IN (102016);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102016','19856','530','1','0','0','2898.4','5981.79','2.21152','1.01229','300','300','0','0','8200','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102016);
insert into `game_event_creature` (`guid`, `event`) values('102016','53');

-- "Lefty" Puddemup (19858) - Blade's Edge Mountains Arena Battlemaster
DELETE FROM creature WHERE guid IN (102020);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102020','19858','530','1','0','0','2879.13','5979.45','6.24018','0.628319','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102020);
insert into `game_event_creature` (`guid`, `event`) values('102020','53');

-- Rex Pixem (19909) - Undercity Arena Battlemaster
DELETE FROM creature WHERE guid IN (102024);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102024','19909','0','1','0','0','1320.44','294.078','-63.6294','2.42601','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102024);
insert into `game_event_creature` (`guid`, `event`) values('102024','53');

-- Beka Zipwhistle (19911) - Stormwind Arena Battlemaster
DELETE FROM creature WHERE guid IN (102028);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102028','19911','0','1','0','0','-8385.38','276.966','120.886','2.6855','300','300','0','0','7100','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102028);
insert into `game_event_creature` (`guid`, `event`) values('102028','53');

-- Zeggon Botsnap (19912) - Orgrimmar Arena Battlemaster
DELETE FROM creature WHERE guid IN (102032);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102032','19912','1','1','0','0','1987.4','-4813.11','56.8491','1.62316','300','300','0','0','10020','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102032);
insert into `game_event_creature` (`guid`, `event`) values('102032','53');

-- Max Xim (19915) - Ironforge Arena Battlemaster
DELETE FROM creature WHERE guid IN (102036);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102036','19915','0','1','0','0','-5037.97','-1269.55','510.408','3.47321','300','300','0','0','7700','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102036);
insert into `game_event_creature` (`guid`, `event`) values('102036','53');

-- Bipp Glizzitor (19923) - Silvermoon City Arena Battlemaster
DELETE FROM creature WHERE guid IN (102040);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102040','19923','530','1','0','0','9850.44','-7559.91','19.3374','5.044','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102040);
insert into `game_event_creature` (`guid`, `event`) values('102040','53');

-- Miglik Blotstrom (19925) - Exodar Arena Battlemaster
DELETE FROM creature WHERE guid IN (102044);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102044','19925','530','1','0','0','-3725.25','-11688.3','-105.53','3.66519','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102044);
insert into `game_event_creature` (`guid`, `event`) values('102044','53');

-- Fima Five-Fingers (20497) - Darnassus Arena Battlemaster
DELETE FROM creature WHERE guid IN (102048);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102048','20497','1','1','0','0','9976.69','2318.62','1330.87','0.296706','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102048);
insert into `game_event_creature` (`guid`, `event`) values('102048','53');

-- Fizim Blastwrench (20499) - Thunder Bluff Arena Battlemaster
DELETE FROM creature WHERE guid IN (102052);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102052','20499','1','1','0','0','-1384.06','-98.7066','159.018','3.03687','300','300','0','0','11000','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102052);
insert into `game_event_creature` (`guid`, `event`) values('102052','53');

-- "Backstab" Bindo Gearbomb (21235) - Shattrath City Arena Battlemaster
DELETE FROM creature WHERE guid IN (102056);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102056','21235','530','1','0','0','-1959.81','5174.2','-37.8594','0.470746','300','300','0','0','7200','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102056);
insert into `game_event_creature` (`guid`, `event`) values('102056','53');



-- ==================================================================================
-- ==========         Arena PvP Season 2 - Complete Implementation         ==========
-- ==========          June 20, 2007 - November 26, 2007 23 Weeks          ==========
-- ==========                (Released During Patch 2.1.2)                 ==========
-- ==================================================================================

-- -----------------------------------------------------------------------------------
-- Vixton Pinchwhistle (Area 52) - Entry 20278 - Selling Season 1 Gear at 15% Discount
-- -----------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105901);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105901','20278','530','1','0','0','3070.16','3635.11','143.864','0.750492','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105901);
insert into `game_event_creature` (`guid`, `event`) values('105901','54'); -- Link Vixton Pinchwhistle to Season 2
DELETE FROM game_event_creature_data WHERE guid IN (105901) AND event IN (54);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) values('105901','0','0','0','551','0','0','54');  -- Season 1 with 15% Discount
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry IN (20278);

-- -------------------------------------------------------------------
-- Krixel Pinchwhistle (Area 52) - Entry 23396 - Selling Season 2 Gear
-- -------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105902);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105902','23396','530','1','0','0','3073.46','3634.58','143.78','1.52405','120','120','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105902);
insert into `game_event_creature` (`guid`, `event`) values('105902','54'); -- Link Krixel Pinchwhistle to Season 2
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=560 WHERE entry IN (23396); -- Season 2 Full Price

-- --------------------------------------------------------------------------------------------------------------------------------
-- Lieutenant Tristia (Season 2 Version) (Stormwind)  - Entry 23446 - Selling Season 2 Items (Items Not Part of the Sets) For Honor - Veteran Stuff
-- --------------------------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (18);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('18','23446','449','1','0','0','-7.53458','34.93','1.13917','5.37561','300','300','0','0','7048','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (18);
insert into `game_event_creature` (`guid`, `event`) values('18','54'); -- Link Lieutenant Tristia to Season 2
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=564 WHERE entry IN (23446);

-- -----------------------------------------------------------------------------------------------------------------
-- Sergeant Kien (Appeared in Season 2 Then Replaced By Doris Volanthius in Season 3 and 4) (Orgrimar) - Entry 23447 - Selling Season 2 Items (Items Not Part of the Sets) For Honor - Veteran Stuff
-- -----------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (12819);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('12819','23447','450','1','0','0','257.869','90.6915','25.7206','3.71126','120','120','0','0','32400','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (12819);
insert into `game_event_creature` (`guid`, `event`) values('12819','54'); -- Link Sergeant Kien to Season 2
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=564 WHERE entry IN (23447);

-- ----------------------------------------------------------------------------------------------------------------------
-- Normal Version of Captain Dirgehammer (12777) (During Season 2) - L70 PvP Armor Only (No L70 Epic Belts/Boots/Bracers)
-- ----------------------------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (14) AND event IN (53);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) values('14','0','0','0','544','0','0','54');  -- Season 2

-- -----------------------------------------------------------------------------------------------------------------
-- Normal Version of Lady Palanseer (12792) (During Season 2) - L70 PvP Armor Only (No L70 Epic Belts/Boots/Bracers)
-- -----------------------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (86418) AND event IN (53);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) values('86418','0','0','0','545','0','0','54');  -- Season 2


-- "King" Dond (18897) - Nagrand Arena Organizer
DELETE FROM creature WHERE guid IN (102001);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102001','18897','530','1','0','0','-2160.02','6666.19','2.58939','5.2709','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102001);
insert into `game_event_creature` (`guid`, `event`) values('102001','54');

-- Ear-Biter (18895) - Nagrand Arena Battlemaster
DELETE FROM creature WHERE guid IN (102005);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102005','18895','530','1','0','0','-2165.33','6647.25','0.38844','6.19592','300','300','0','0','349300','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102005);
insert into `game_event_creature` (`guid`, `event`) values('102005','54');

-- Bip Nigstrom (19861) - Gadgetzan Arena Organizer
DELETE FROM creature WHERE guid IN (102009);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102009','19861','1','1','0','0','-7139.31','-3761.98','9.54388','1.78024','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102009);
insert into `game_event_creature` (`guid`, `event`) values('102009','54');

-- Max Luna (19859) - Gadgetzan Arena Battlemaster
DELETE FROM creature WHERE guid IN (102013);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102013','19859','1','1','0','0','-7124.54','-3804.47','8.75568','5.46288','300','300','0','0','349300','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102013);
insert into `game_event_creature` (`guid`, `event`) values('102013','54');

-- Steamwheedle Sam (19856) - Blade's Edge Mountains Arena Organizer
DELETE FROM creature WHERE guid IN (102017);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102017','19856','530','1','0','0','2898.4','5981.79','2.21152','1.01229','300','300','0','0','8200','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102017);
insert into `game_event_creature` (`guid`, `event`) values('102017','54');

-- "Lefty" Puddemup (19858) - Blade's Edge Mountains Arena Battlemaster
DELETE FROM creature WHERE guid IN (102021);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102021','19858','530','1','0','0','2879.13','5979.45','6.24018','0.628319','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102021);
insert into `game_event_creature` (`guid`, `event`) values('102021','54');

-- Rex Pixem (19909) - Undercity Arena Battlemaster
DELETE FROM creature WHERE guid IN (102025);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102025','19909','0','1','0','0','1320.44','294.078','-63.6294','2.42601','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102025);
insert into `game_event_creature` (`guid`, `event`) values('102025','54');

-- Beka Zipwhistle (19911) - Stormwind Arena Battlemaster
DELETE FROM creature WHERE guid IN (102029);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102029','19911','0','1','0','0','-8385.38','276.966','120.886','2.6855','300','300','0','0','7100','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102029);
insert into `game_event_creature` (`guid`, `event`) values('102029','54');

-- Zeggon Botsnap (19912) - Orgrimmar Arena Battlemaster
DELETE FROM creature WHERE guid IN (102033);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102033','19912','1','1','0','0','1987.4','-4813.11','56.8491','1.62316','300','300','0','0','10020','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102033);
insert into `game_event_creature` (`guid`, `event`) values('102033','54');

-- Max Xim (19915) - Ironforge Arena Battlemaster
DELETE FROM creature WHERE guid IN (102037);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102037','19915','0','1','0','0','-5037.97','-1269.55','510.408','3.47321','300','300','0','0','7700','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102037);
insert into `game_event_creature` (`guid`, `event`) values('102037','54');

-- Bipp Glizzitor (19923) - Silvermoon City Arena Battlemaster
DELETE FROM creature WHERE guid IN (102041);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102041','19923','530','1','0','0','9850.44','-7559.91','19.3374','5.044','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102041);
insert into `game_event_creature` (`guid`, `event`) values('102041','54');

-- Miglik Blotstrom (19925) - Exodar Arena Battlemaster
DELETE FROM creature WHERE guid IN (102045);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102045','19925','530','1','0','0','-3725.25','-11688.3','-105.53','3.66519','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102045);
insert into `game_event_creature` (`guid`, `event`) values('102045','54');

-- Fima Five-Fingers (20497) - Darnassus Arena Battlemaster
DELETE FROM creature WHERE guid IN (102049);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102049','20497','1','1','0','0','9976.69','2318.62','1330.87','0.296706','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102049);
insert into `game_event_creature` (`guid`, `event`) values('102049','54');

-- Fizim Blastwrench (20499) - Thunder Bluff Arena Battlemaster
DELETE FROM creature WHERE guid IN (102053);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102053','20499','1','1','0','0','-1384.06','-98.7066','159.018','3.03687','300','300','0','0','11000','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102053);
insert into `game_event_creature` (`guid`, `event`) values('102053','54');

-- "Backstab" Bindo Gearbomb (21235) - Shattrath City Arena Battlemaster
DELETE FROM creature WHERE guid IN (102057);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102057','21235','530','1','0','0','-1959.81','5174.2','-37.8594','0.470746','300','300','0','0','7200','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102057);
insert into `game_event_creature` (`guid`, `event`) values('102057','54');



-- ==================================================================================
-- ==========         Arena PvP Season 3 - Complete Implementation         ==========
-- ==========          November 28, 2007 - June 23, 2008 29 Weeks          ==========
-- ==========                (Released During Patch 2.3.0)                 ==========
-- ==================================================================================
-- --------------------------------------------------------------------------------------------------
-- Captain Dirgehammer (Season 3 Version) (Stormwind) - Entry 24672 - Selling Season 1 Armor For Honor
-- --------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (14) AND event IN (55);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) values('14','24672','0','0','0','0','55'); -- Set Season 3 Version of Captain Dirgehammer During Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=552 WHERE entry IN (24672); -- Season 1 Armor For Honor

-- ------------------------------------------------------------------------------------------------
-- Captain O'Neal (Season 3 Version) (Stormwind) - Entry 24671 - Selling Season 1 Weapons For Honor
-- ------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (23) AND event IN (55);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) values('23','24671','0','0','0','0','55'); -- Set Season 3 Version of Captain O'Neal During Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=553 WHERE entry IN (24671); -- Season 1 Weapons For Honor

-- --------------------------------------------------------------------------------------------------------------------------------
-- Lieutenant Tristia (Season 3 Version) (Stormwind) - Entry 24670 - Selling Season 3 Items PLUS Veteran Rings from Season 2 (Items Not Part of the Sets) For Honor 
-- --------------------------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105917);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105917','24670','449','1','0','0','-7.53458','34.93','1.13917','5.37561','300','300','0','0','7048','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105917);
insert into `game_event_creature` (`guid`, `event`) values('105917','55'); -- Link Lieutenant Tristia to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=572 WHERE entry IN (24670);

-- -----------------------------------------------------------------------------------------------------------------------------
-- Doris Volanthius (Season 3 Version) (Orgrimar) - Entry 24520 - Selling Season 3 Items PLUS Veteran Rings from Season 2 (Items Not Part of the Sets) For Honor - THIS ID IS SHARED WITH SEASON 2 VERSION SINCE SEASON 2 ID IS UNKNOWN
-- -----------------------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105918);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105918','24520','450','1','0','0','257.869','90.6915','25.7206','3.71126','120','120','0','0','32400','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105918);
insert into `game_event_creature` (`guid`, `event`) values('105918','55'); -- Link Doris Volanthius to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=572 WHERE entry IN (24520);

-- --------------------------------------------------------------------------------------------
-- Lady Palanseer (Season 3 Version) (Orgrimar) - Entry 24668 - Selling Season 1 Armor For Honor
-- --------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (86418) AND event IN (55);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) values('86418','24668','0','0','0','0','55'); -- Set Season 3 Version of Lady Palanseer During Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=552 WHERE entry IN (24668); -- Season 1 Armor For Honor

-- -----------------------------------------------------------------------------------------------------
-- Sergeant Thunderhorn (Season 3 Version) (Orgrimar) - Entry 24667 - Selling Season 1 Weapons For Honor
-- -----------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (86420) AND event IN (55);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) values('86420','24667','0','0','0','0','55'); -- Set Season 3 Version of Sergeant Thunderhorn During Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=553 WHERE entry IN (24667); -- Season 1 Weapons For Honor

-- ---------------------------------------------------------------------------------
-- Krixel Pinchwhistle (Area 52) Entry 23396 - Selling Season 2 Gear at 15% Discount
-- ---------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105903);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105903','23396','530','1','0','0','3073.99','3633.34','143.779','2.09012','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105903);
insert into `game_event_creature` (`guid`, `event`) values('105903','55'); -- Link Krixel Pinchwhistle to Season 3
DELETE FROM game_event_creature_data WHERE guid IN (105903) AND event IN (55);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) values('105903','0','0','0','561','0','0','55');  -- Season 2 with 15% Discount
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry IN (23396);

-- ---------------------------------------------------------------------
-- Leeni "Smiley" Smalls (Area 52) - Entry 24392 - Selling Season 3 Gear
-- ---------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (17676);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('17676','24392','530','1','0','0','3070.16','3635.11','143.864','0.750492','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (17676);
insert into `game_event_creature` (`guid`, `event`) values('17676','55'); -- Link Leeni "Smiley" Smalls to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=570 WHERE entry IN (24392); -- Season 3 Full Price

-- ---------------------------------------------------------------------
-- Explodyne Fizzlespurt (Nagrand) - Entry 18898 - Selling Season 3 Gear
-- ---------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (67872);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('67872','18898','530','1','0','0','-2163.33','6659.34','0.1057','6.17846','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (67872);
insert into `game_event_creature` (`guid`, `event`) values('67872','55'); -- Link Explodyne Fizzlespurt to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=570 WHERE entry IN (18898); -- Season 3 Full Price

-- ---------------------------------------------------------------------------------------
-- Grikkin Copperspring (Season 3 Version) (Nagrand) - Entry 25176 - Selling Season 3 Gear
-- ---------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105904,75951);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105904','25176','530','1','0','0','-2159.54','6636.09','0.493227','0.613407','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105904);
insert into `game_event_creature` (`guid`, `event`) values('105904','55'); -- Link Explodyne Fizzlespurt to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=570 WHERE entry IN (25176); -- Season 3 Full Price

-- ------------------------------------------------------------------------------------------------------
-- Meminnie (Blade's Edge Mountains) - Entry 19857 - Selling Season 3 Gear (ONLY APPEARS DURING SEASON 3)
-- ------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (70996,75914);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('70996','19857','530','1','0','0','2884.45','5982.34','3.38883','0.872665','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (70996);
insert into `game_event_creature` (`guid`, `event`) values('70996','55'); -- Link Meminnie to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=570 WHERE entry IN (19857); -- Season 3 Full Price

-- -----------------------------------------------------------------------------------------------------
-- Frixee Brasstumbler (Season 3 Version) (Blade's Edge Mountains) - Entry 25179 - Selling Season 3 Gear
-- -----------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105905);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105905','25179','530','1','0','0','2890.67','5981.48','2.78978','1.20321','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105905);
insert into `game_event_creature` (`guid`, `event`) values('105905','55'); -- Link Frixee Brasstumbler to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=570 WHERE entry IN (25179); -- Season 3 Full Price

-- --------------------------------------------------------------------
-- Ecton Brasstumbler (Gadgetzan) - Entry 25178 - Selling Season 3 Gear
-- --------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (23111);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23111','25178','1','1','0','0','-7122.35','-3770.29','9.76704','0.872665','180','180','0','0','11828','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (23111);
insert into `game_event_creature` (`guid`, `event`) values('23111','55'); -- Link Ecton Brasstumbler to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=570 WHERE entry IN (25178); -- Season 3 Full Price

-- ------------------------------------------------------------------------------------------------------
-- Evee Copperspring (Season 3 Version) (Gadgetzan) - Entry 25177 - Selling Season 2 Gear at 15% Discount
-- ------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105912,21776);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105912','25177','1','1','0','0','-7120.42','-3773.96','9.0225','0.418879','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105912);
insert into `game_event_creature` (`guid`, `event`) values('105912','55'); -- Link Evee Copperspring to Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=561 WHERE entry IN (25177); -- Season 2 with 15% Discount

-- "King" Dond (18897) - Nagrand Arena Organizer
DELETE FROM creature WHERE guid IN (102002);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102002','18897','530','1','0','0','-2160.02','6666.19','2.58939','5.2709','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102002);
insert into `game_event_creature` (`guid`, `event`) values('102002','55');

-- Ear-Biter (18895) - Nagrand Arena Battlemaster
DELETE FROM creature WHERE guid IN (102006);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102006','18895','530','1','0','0','-2165.33','6647.25','0.38844','6.19592','300','300','0','0','349300','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102006);
insert into `game_event_creature` (`guid`, `event`) values('102006','55');

-- Bip Nigstrom (19861) - Gadgetzan Arena Organizer
DELETE FROM creature WHERE guid IN (102010);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102010','19861','1','1','0','0','-7139.31','-3761.98','9.54388','1.78024','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102010);
insert into `game_event_creature` (`guid`, `event`) values('102010','55');

-- Max Luna (19859) - Gadgetzan Arena Battlemaster
DELETE FROM creature WHERE guid IN (102014);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102014','19859','1','1','0','0','-7124.54','-3804.47','8.75568','5.46288','300','300','0','0','349300','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102014);
insert into `game_event_creature` (`guid`, `event`) values('102014','55');

-- Steamwheedle Sam (19856) - Blade's Edge Mountains Arena Organizer
DELETE FROM creature WHERE guid IN (102018);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102018','19856','530','1','0','0','2898.4','5981.79','2.21152','1.01229','300','300','0','0','8200','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102018);
insert into `game_event_creature` (`guid`, `event`) values('102018','55');

-- "Lefty" Puddemup (19858) - Blade's Edge Mountains Arena Battlemaster
DELETE FROM creature WHERE guid IN (102022);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102022','19858','530','1','0','0','2879.13','5979.45','6.24018','0.628319','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102022);
insert into `game_event_creature` (`guid`, `event`) values('102022','55');

-- Rex Pixem (19909) - Undercity Arena Battlemaster
DELETE FROM creature WHERE guid IN (102026);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102026','19909','0','1','0','0','1320.44','294.078','-63.6294','2.42601','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102026);
insert into `game_event_creature` (`guid`, `event`) values('102026','55');

-- Beka Zipwhistle (19911) - Stormwind Arena Battlemaster
DELETE FROM creature WHERE guid IN (102030);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102030','19911','0','1','0','0','-8385.38','276.966','120.886','2.6855','300','300','0','0','7100','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102030);
insert into `game_event_creature` (`guid`, `event`) values('102030','55');

-- Zeggon Botsnap (19912) - Orgrimmar Arena Battlemaster
DELETE FROM creature WHERE guid IN (102034);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102034','19912','1','1','0','0','1987.4','-4813.11','56.8491','1.62316','300','300','0','0','10020','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102034);
insert into `game_event_creature` (`guid`, `event`) values('102034','55');

-- Max Xim (19915) - Ironforge Arena Battlemaster
DELETE FROM creature WHERE guid IN (102038);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102038','19915','0','1','0','0','-5037.97','-1269.55','510.408','3.47321','300','300','0','0','7700','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102038);
insert into `game_event_creature` (`guid`, `event`) values('102038','55');

-- Bipp Glizzitor (19923) - Silvermoon City Arena Battlemaster
DELETE FROM creature WHERE guid IN (102042);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102042','19923','530','1','0','0','9850.44','-7559.91','19.3374','5.044','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102042);
insert into `game_event_creature` (`guid`, `event`) values('102042','55');

-- Miglik Blotstrom (19925) - Exodar Arena Battlemaster
DELETE FROM creature WHERE guid IN (102046);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102046','19925','530','1','0','0','-3725.25','-11688.3','-105.53','3.66519','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102046);
insert into `game_event_creature` (`guid`, `event`) values('102046','55');

-- Fima Five-Fingers (20497) - Darnassus Arena Battlemaster
DELETE FROM creature WHERE guid IN (102050);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102050','20497','1','1','0','0','9976.69','2318.62','1330.87','0.296706','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102050);
insert into `game_event_creature` (`guid`, `event`) values('102050','55');

-- Fizim Blastwrench (20499) - Thunder Bluff Arena Battlemaster
DELETE FROM creature WHERE guid IN (102054);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102054','20499','1','1','0','0','-1384.06','-98.7066','159.018','3.03687','300','300','0','0','11000','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102054);
insert into `game_event_creature` (`guid`, `event`) values('102054','55');

-- "Backstab" Bindo Gearbomb (21235) - Shattrath City Arena Battlemaster
DELETE FROM creature WHERE guid IN (102058);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102058','21235','530','1','0','0','-1959.81','5174.2','-37.8594','0.470746','300','300','0','0','7200','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102058);
insert into `game_event_creature` (`guid`, `event`) values('102058','55');



-- ==================================================================================
-- ==========         Arena PvP Season 4 - Complete Implementation         ==========
-- ==========          June 24, 2008 - October 14, 2008 17 Weeks           ==========
-- ==========                (Released During Patch 2.4.2)                 ==========
-- ==================================================================================
-- --------------------------------------------------------------------------------------------------
-- Captain Dirgehammer (Season 4 Version) (Stormwind) - Entry 26393 - Selling Season 2 Armor For Honor
-- --------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (14) AND event IN (56);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) values('14','26393','0','0','0','0','56'); -- Set Season 4 Version of Captain Dirgehammer During Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=562 WHERE entry IN (26393); -- Season 2 Armor For Honor

-- ------------------------------------------------------------------------------------------------
-- Captain O'Neal (Season 4 Version) (Stormwind) - Entry 26394 - Selling Season 2 Weapons For Honor
-- ------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (23) AND event IN (56);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) values('23','26394','0','0','0','0','56'); -- Set Season 4 Version of Captain O'Neal During Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=563 WHERE entry IN (26394); -- Season 2 Weapons For Honor

-- --------------------------------------------------------------------------------------------------------------------------------
-- Lieutenant Tristia (Season 4 Version) (Stormwind) - Entry 26395 - Selling Season 3 Vindicator and Season 4 Brutal Gladiator Items (Items Not Part of the Sets) For Honor 
-- --------------------------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105919);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105919','26395','449','1','0','0','-7.53458','34.93','1.13917','5.37561','300','300','0','0','7048','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105919);
insert into `game_event_creature` (`guid`, `event`) values('105919','56'); -- Link Lieutenant Tristia to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=581 WHERE entry IN (26395);

-- -----------------------------------------------------------------------------------------------------------------------------
-- Doris Volanthius (Season 4 Version) (Orgrimar) - Entry 26398 - Selling Season 3 Vindicator and Season 4 Brutal Gladiator Items (Items Not Part of the Sets) For Honor 
-- -----------------------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105920);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105920','26398','450','1','0','0','257.869','90.6915','25.7206','3.71126','120','120','0','0','32400','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105920);
insert into `game_event_creature` (`guid`, `event`) values('105920','56'); -- Link Doris Volanthius to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=581 WHERE entry IN (26398);

-- --------------------------------------------------------------------------------------------------
-- Lady Palanseer (Season 4 Version) (Ogrimar) - Entry 26397 - Selling Season 2 Armor For Honor
-- --------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (86418) AND event IN (56);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) values('86418','26397','0','0','0','0','56'); -- Set Season 4 Version of Lady Palanseer During Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=562 WHERE entry IN (26397); -- Season 2 Armor For Honor

-- -----------------------------------------------------------------------------------------------------
-- Sergeant Thunderhorn (Season 4 Version) (Orgrimar) - Entry 26396 - Selling Season 2 Weapons For Honor
-- -----------------------------------------------------------------------------------------------------
DELETE FROM game_event_creature_data WHERE guid IN (86420) AND event IN (56);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) values('86420','26396','0','0','0','0','56'); -- Set Season 4 Version of Sergeant Thunderhorn During Season 3
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=563 WHERE entry IN (26396); -- Season 2 Weapons For Honor

-- -------------------------------------------------------------------------------------
-- Leeni "Smiley" Smalls (Area 52) - Entry 24392 - Selling Season 3 Gear at 15% Discount
-- -------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105906);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105906','24392','530','1','0','0','3073.99','3633.34','143.779','2.09012','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105906);
insert into `game_event_creature` (`guid`, `event`) values('105906','56'); -- Link Leeni "Smiley" Smalls to Season 4
DELETE FROM game_event_creature_data WHERE guid IN (105906) AND event IN (56);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) values('105906','0','0','0','571','0','0','56');  -- Season 3 with 15% Discount
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry IN (24392);

-- ---------------------------------------------------------------------
-- Big Zokk Torquewrench (Area 52) - Entry 26352 - Selling Season 4 Gear
-- ---------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (91798);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('91798','26352','530','1','0','0','3070.16','3635.11','143.864','0.750492','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (91798);
insert into `game_event_creature` (`guid`, `event`) values('91798','56'); -- Link Big Zokk Torquewrench to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=580 WHERE entry IN (26352); -- Season 4 Full Price

-- -------------------------------------------------------------------------------------
-- Explodyne Fizzlespurt (Nagrand) - Entry 18898 - Selling Season 3 Gear at 15% Discount
-- -------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105907);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105907','18898','530','1','0','0','-2159.54','6636.09','0.493227','0.613407','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105907);
insert into `game_event_creature` (`guid`, `event`) values('105907','56'); -- Link Explodyne Fizzlespurt to Season 4
DELETE FROM game_event_creature_data WHERE guid IN (105907) AND event IN (56);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) values('105907','0','0','0','571','0','0','56');  -- Season 3 with 15% Discount
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry IN (18898); -- Season 3 with 15% Discount ***** (DISABLED WAITING FOR CORE SUPPORT) *****

-- ---------------------------------------------------------------------------------------
-- Grikkin Copperspring (Season 4 Version) (Nagrand) - Entry 26383 - Selling Season 4 Gear
-- ---------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105908);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105908','26383','530','1','0','0','-2163.33','6659.34','0.1057','6.17846','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105908);
insert into `game_event_creature` (`guid`, `event`) values('105908','56'); -- Link Grikkin Copperspring to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=580 WHERE entry IN (26383); -- Season 4 Full Price

-- ----------------------------------------------------------------------------------
-- Meminnie (Blade's Edge Mountains) - Entry 19857 - Selling Season 3 at 15% Discount
-- ----------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105909);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105909','19857','530','1','0','0','2890.67','5981.48','2.78978','1.20321','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105909);
insert into `game_event_creature` (`guid`, `event`) values('105909','56'); -- Link Meminnie to Season 4
DELETE FROM game_event_creature_data WHERE guid IN (105909) AND event IN (56);
insert into `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) values('105909','0','0','0','571','0','0','56');  -- Season 3 with 15% Discount
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=571 WHERE entry IN (19857);

-- -----------------------------------------------------------------------------------------------------
-- Frixee Brasstumbler (Season 4 Version) (Blade's Edge Mountains) - Entry 26384 - Selling Season 4 Gear
-- -----------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105910);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105910','26384','530','1','0','0','2884.45','5982.34','3.38883','0.872665','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105910);
insert into `game_event_creature` (`guid`, `event`) values('105910','56'); -- Link Frixee Brasstumbler to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=580 WHERE entry IN (26384); -- Season 4 Full Price

-- --------------------------------------------------------------------
-- Ecton Brasstumbler (Gadgetzan) - Entry 25178 - Selling Season 4 Gear
-- --------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105911);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105911','25178','1','1','0','0','-7122.35','-3770.29','9.76704','0.872665','180','180','0','0','11828','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105911);
insert into `game_event_creature` (`guid`, `event`) values('105911','56'); -- Link Ecton Brasstumbler to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=580 WHERE entry IN (25178); -- Season 4 Full Price

-- -----------------------------------------------------------------------------------
-- Evee Copperspring (Season 4 Version) (Gadgetzan) - Entry 26378 - Selling Season 3 Gear at 15% Discount
-- -----------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105913);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105913','26378','1','1','0','0','-7120.42','-3773.96','9.0225','0.418879','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105913);
insert into `game_event_creature` (`guid`, `event`) values('105913','56'); -- Link Evee Copperspring to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=571 WHERE entry IN (26378); -- Season 3 With 15% Discount

-- -------------------------------------------------------------------------------------
-- Ontok Shatterhorn (Shattrath City - Lower City) - Entry 27668 - Selling Season 4 Gear
-- -------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (105914,1823);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105914','27668','530','1','0','0','-1968.69','5171.64','-38.3121','0.424065','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105914);
insert into `game_event_creature` (`guid`, `event`) values('105914','56'); -- Link Ontok Shatterhorn to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=580 WHERE entry IN (27668); -- Season 4 Full Price

-- ------------------------------------------------------------------------------------
-- Drelik Blastpipe (Shattrath City - Aldor Rise) - Entry 27721 - Selling Season 4 Gear
-- ------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (75475);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('75475','27721','530','1','0','0','-1878.14','5652.75','127.457','4.51526','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (75475);
insert into `game_event_creature` (`guid`, `event`) values('75475','56'); -- Link Drelik Blastpipe to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=580 WHERE entry IN (27721); -- Season 4 Full Price

-- ---------------------------------------------------------------------------------------
-- Drolig Blastpipe (Shattrath City - Scryer's Tier) - Entry 27722 - Selling Season 4 Gear
-- ---------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (79018);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('79018','27722','530','1','0','0','-2116.46','5386.03','53.8074','5.97531','180','180','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (79018);
insert into `game_event_creature` (`guid`, `event`) values('79018','56'); -- Link Drolig Blastpipe to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=580 WHERE entry IN (27722); -- Season 4 Full Price

-- -------------------------------------------------------------------------------------
-- Griz Gutshank (Blackrock Depths - Grim Guzzler) - Entry 28225 - Selling Season 4 Gear
-- -------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (1881);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('1881','28225','230','1','0','0','872.331','-135.744','-49.7576','3.84395','180','180','0','0','3052','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (1881);
insert into `game_event_creature` (`guid`, `event`) values('1881','56'); -- Link Griz Gutshank to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=580 WHERE entry IN (28225); -- Season 4 Full Price

-- -----------------------------------------------------------
-- Slobbermouth 28227 and Snaggletooth 28226 (Griz Bodyguards) - MOVE THEM TO PROPER SPAWN LOCATIONS
-- -----------------------------------------------------------
DELETE FROM creature WHERE guid IN (105915,105916);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105915','28226','230','1','0','0','870.685','-139.139','-49.7589','3.64473','180','180','0','0','2614','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105916','28227','230','1','0','0','868.815','-135.761','-49.759','3.67615','180','180','0','0','2614','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (105915,105916);
insert into `game_event_creature` (`guid`, `event`) values('105915','56'); -- Link Snaggletooth to Season 4
insert into `game_event_creature` (`guid`, `event`) values('105916','56'); -- Link Slobbermouth to Season 4

-- ------------------------------------------------------------------------------------------
-- Karynna (Isle of Quel'Danas) - Entry 26090 - Selling Season 1 Gear (For Tier 4/5/6 Tokens) - NEED MORE RESEARCH IF PVP SEASON NPC OR REGULAR SPAWNED NPC
-- ------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (93956);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('93956','26090','530','1','0','0','12669','-6955.39','36.2519','6.25358','180','180','0','0','6300','8925','0','0');
-- insert into `game_event_creature` (`guid`, `event`) values('93956','56'); -- Link Karynna to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=554 WHERE entry IN (26090); -- Season 1 Tier 4 Token Prices

-- ------------------------------------------------------------------------------------------
-- Olus (Isle of Quel'Danas) - Entry 26091 - Selling Season 1 Gear (For Tier 4/5/6 Tokens) - NEED MORE RESEARCH IF PVP SEASON NPC OR REGULAR SPAWNED NPC
-- ------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (93959);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('93959','26091','530','1','0','0','12678.7','-6972.44','36.2525','1.9392','180','180','0','0','8400','7196','0','0');
-- insert into `game_event_creature` (`guid`, `event`) values('93959','56'); -- Link Karynna to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=554 WHERE entry IN (26091); -- Season 1 Tier 4 Token Prices

-- ------------------------------------------------------------------------------------------
-- Soryn (Isle of Quel'Danas) - Entry 26092 - Selling Season 1 Gear (For Tier 4/5/6 Tokens) - NEED MORE RESEARCH IF PVP SEASON NPC OR REGULAR SPAWNED NPC
-- ------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (93958);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('93958','26092','530','1','0','0','12687','-6942.73','36.2523','4.49695','180','180','0','0','4890','7196','0','0');
-- insert into `game_event_creature` (`guid`, `event`) values('93958','56'); -- Link Karynna to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=554 WHERE entry IN (26092); -- Season 1 Tier 4 Token Prices

-- ------------------------------------------------------------------------------------------
-- Kayri (Isle of Quel'Danas) - Entry 26089 - Selling Season 1 Gear (For Tier 4/5/6 Tokens) - NEED MORE RESEARCH IF PVP SEASON NPC OR REGULAR SPAWNED NPC
-- ------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (93960);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('93960','26089','530','1','0','0','12686.7','-6972.61','36.2519','1.84288','180','180','0','0','6986','0','0','0');
-- insert into `game_event_creature` (`guid`, `event`) values('93960','56'); -- Link Karynna to Season 4
UPDATE creature_template SET NPCFlags=NPCFlags|128, VendorTemplateId=554 WHERE entry IN (26089); -- Season 1 Tier 4 Token Prices

-- "King" Dond (18897) - Nagrand Arena Organizer
DELETE FROM creature WHERE guid IN (102003);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102003','18897','530','1','0','0','-2160.02','6666.19','2.58939','5.2709','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102003);
insert into `game_event_creature` (`guid`, `event`) values('102003','56');

-- Ear-Biter (18895) - Nagrand Arena Battlemaster
DELETE FROM creature WHERE guid IN (102007);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102007','18895','530','1','0','0','-2165.33','6647.25','0.38844','6.19592','300','300','0','0','349300','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102007);
insert into `game_event_creature` (`guid`, `event`) values('102007','56');

-- Bip Nigstrom (19861) - Gadgetzan Arena Organizer
DELETE FROM creature WHERE guid IN (102011);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102011','19861','1','1','0','0','-7139.31','-3761.98','9.54388','1.78024','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102011);
insert into `game_event_creature` (`guid`, `event`) values('102011','56');

-- Max Luna (19859) - Gadgetzan Arena Battlemaster
DELETE FROM creature WHERE guid IN (102015);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102015','19859','1','1','0','0','-7124.54','-3804.47','8.75568','5.46288','300','300','0','0','349300','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102015);
insert into `game_event_creature` (`guid`, `event`) values('102015','56');

-- Steamwheedle Sam (19856) - Blade's Edge Mountains Arena Organizer
DELETE FROM creature WHERE guid IN (102019);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102019','19856','530','1','0','0','2898.4','5981.79','2.21152','1.01229','300','300','0','0','8200','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102019);
insert into `game_event_creature` (`guid`, `event`) values('102019','56');

-- "Lefty" Puddemup (19858) - Blade's Edge Mountains Arena Battlemaster
DELETE FROM creature WHERE guid IN (102023);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102023','19858','530','1','0','0','2879.13','5979.45','6.24018','0.628319','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102023);
insert into `game_event_creature` (`guid`, `event`) values('102023','56');

-- Rex Pixem (19909) - Undercity Arena Battlemaster
DELETE FROM creature WHERE guid IN (102027);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102027','19909','0','1','0','0','1320.44','294.078','-63.6294','2.42601','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102027);
insert into `game_event_creature` (`guid`, `event`) values('102027','56');

-- Beka Zipwhistle (19911) - Stormwind Arena Battlemaster
DELETE FROM creature WHERE guid IN (102031);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102031','19911','0','1','0','0','-8385.38','276.966','120.886','2.6855','300','300','0','0','7100','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102031);
insert into `game_event_creature` (`guid`, `event`) values('102031','56');

-- Zeggon Botsnap (19912) - Orgrimmar Arena Battlemaster
DELETE FROM creature WHERE guid IN (102035);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102035','19912','1','1','0','0','1987.4','-4813.11','56.8491','1.62316','300','300','0','0','10020','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102035);
insert into `game_event_creature` (`guid`, `event`) values('102035','56');

-- Max Xim (19915) - Ironforge Arena Battlemaster
DELETE FROM creature WHERE guid IN (102039);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102039','19915','0','1','0','0','-5037.97','-1269.55','510.408','3.47321','300','300','0','0','7700','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102039);
insert into `game_event_creature` (`guid`, `event`) values('102039','56');

-- Bipp Glizzitor (19923) - Silvermoon City Arena Battlemaster
DELETE FROM creature WHERE guid IN (102043);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102043','19923','530','1','0','0','9850.44','-7559.91','19.3374','5.044','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102043);
insert into `game_event_creature` (`guid`, `event`) values('102043','56');

-- Miglik Blotstrom (19925) - Exodar Arena Battlemaster
DELETE FROM creature WHERE guid IN (102047);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102047','19925','530','1','0','0','-3725.25','-11688.3','-105.53','3.66519','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102047);
insert into `game_event_creature` (`guid`, `event`) values('102047','56');

-- Fima Five-Fingers (20497) - Darnassus Arena Battlemaster
DELETE FROM creature WHERE guid IN (102051);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102051','20497','1','1','0','0','9976.69','2318.62','1330.87','0.296706','300','300','0','0','6986','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102051);
insert into `game_event_creature` (`guid`, `event`) values('102051','56');

-- Fizim Blastwrench (20499) - Thunder Bluff Arena Battlemaster
DELETE FROM creature WHERE guid IN (102055);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102055','20499','1','1','0','0','-1384.06','-98.7066','159.018','3.03687','300','300','0','0','11000','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102055);
insert into `game_event_creature` (`guid`, `event`) values('102055','56');

-- "Backstab" Bindo Gearbomb (21235) - Shattrath City Arena Battlemaster
DELETE FROM creature WHERE guid IN (102059);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`,`spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('102059','21235','530','1','0','0','-1959.81','5174.2','-37.8594','0.470746','300','300','0','0','7200','0','0','0');
DELETE FROM game_event_creature WHERE guid IN (102059);
insert into `game_event_creature` (`guid`, `event`) values('102059','56');

-- Reapply Gossips to new guids
INSERT INTO `npc_gossip` (`npc_guid`, `textid`)
(SELECT `guid`,  10215 AS `textid` FROM `creature` WHERE `id` IN (18895,19858,19909,19911,19912,19915,19923,19925,20497,20499));
INSERT INTO `npc_gossip` (`npc_guid`, `textid`)
(SELECT `guid`,  10608 AS `textid` FROM `creature` WHERE `id` = 19856);


-- ======================================================================================
-- ==========         Arena PvP Season Active Condition Implementation         ==========
-- ======================================================================================
DELETE FROM conditions WHERE condition_entry IN (504,505,506,507);
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('504','12','53','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('505','12','54','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('506','12','55','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('507','12','56','0');



-- ===========================================================================================
-- ==========         Pre Arena PvP Season - Vendor Template Implementation         ==========
-- ===========================================================================================
-- --------------------------------------------------
-- Level 60 PvP Armor - Alliance
-- --------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (540); -- These Never Chage During Seasons - Same Vendor with Same Items

-- Druid
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16452','0','0','463','21','Field Marshal\'s Dragonhide Breastplate');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16451','0','0','464','21','Field Marshal\'s Dragonhide Helmet');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16449','0','0','465','21','Field Marshal\'s Dragonhide Spaulders');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16459','0','0','465','21','Marshal\'s Dragonhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16448','0','0','541','21','Marshal\'s Dragonhide Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16450','0','0','542','21','Marshal\'s Dragonhide Legguards');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23294','0','0','652','21','Knight-Captain\'s Dragonhide Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23295','0','0','653','21','Knight-Captain\'s Dragonhide Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23280','0','0','428','21','Knight-Lieutenant\'s Dragonhide Grips');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23281','0','0','427','21','Knight-Lieutenant\'s Dragonhide Treads');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23308','0','0','444','21','Lieutenant Commander\'s Dragonhide Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23309','0','0','427','21','Lieutenant Commander\'s Dragonhide Shoulders');


-- Hunter
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16466','0','0','463','15','Field Marshal\'s Chain Breastplate');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16465','0','0','464','15','Field Marshal\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16468','0','0','465','15','Field Marshal\'s Chain Spaulders');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16462','0','0','465','15','Marshal\'s Chain Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16463','0','0','541','15','Marshal\'s Chain Grips');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16467','0','0','542','15','Marshal\'s Chain Legguards');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23292','0','0','652','15','Knight-Captain\'s Chain Hauberk');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23293','0','0','653','15','Knight-Captain\'s Chain Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23278','0','0','427','15','Knight-Lieutenant\'s Chain Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23279','0','0','428','15','Knight-Lieutenant\'s Chain Vices');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23306','0','0','444','15','Lieutenant Commander\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23307','0','0','427','15','Lieutenant Commander\'s Chain Shoulders');


-- Mage
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16441','0','0','464','18','Field Marshal\'s Coronet');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16444','0','0','465','18','Field Marshal\'s Silk Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16443','0','0','463','18','Field Marshal\'s Silk Vestments');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16437','0','0','465','18','Marshal\'s Silk Footwraps');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16440','0','0','541','18','Marshal\'s Silk Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16442','0','0','542','18','Marshal\'s Silk Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23304','0','0','653','18','Knight-Captain\'s Silk Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23305','0','0','652','18','Knight-Captain\'s Silk Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23290','0','0','428','18','Knight-Lieutenant\'s Silk Handwraps');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23291','0','0','427','18','Knight-Lieutenant\'s Silk Walkers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23318','0','0','444','18','Lieutenant Commander\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23319','0','0','427','18','Lieutenant Commander\'s Silk Mantle');


-- Paladin
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16473','0','0','463','14','Field Marshal\'s Lamellar Chestplate');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16474','0','0','464','14','Field Marshal\'s Lamellar Faceguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16476','0','0','465','14','Field Marshal\'s Lamellar Pauldrons');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16472','0','0','465','14','Marshal\'s Lamellar Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16471','0','0','541','14','Marshal\'s Lamellar Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16475','0','0','542','14','Marshal\'s Lamellar Legplates');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23272','0','0','652','14','Knight-Captain\'s Lamellar Breastplate');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23273','0','0','653','14','Knight-Captain\'s Lamellar Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23274','0','0','428','14','Knight-Lieutenant\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23275','0','0','427','14','Knight-Lieutenant\'s Lamellar Sabatons');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23276','0','0','444','14','Lieutenant Commander\'s Lamellar Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23277','0','0','427','14','Lieutenant Commander\'s Lamellar Shoulders');


-- Priest
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17602','0','0','464','112','Field Marshal\'s Headdress');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17604','0','0','465','112','Field Marshal\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17605','0','0','463','112','Field Marshal\'s Satin Vestments');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17608','0','0','541','112','Marshal\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17603','0','0','542','112','Marshal\'s Satin Pants');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17607','0','0','465','112','Marshal\'s Satin Sandals');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23302','0','0','653','112','Knight-Captain\'s Satin Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23303','0','0','652','112','Knight-Captain\'s Satin Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23288','0','0','428','112','Knight-Lieutenant\'s Satin Handwraps');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23289','0','0','427','112','Knight-Lieutenant\'s Satin Walkers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23316','0','0','444','112','Lieutenant Commander\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23317','0','0','427','112','Lieutenant Commander\'s Satin Mantle');


-- Rogue
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16453','0','0','463','16','Field Marshal\'s Leather Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16457','0','0','465','16','Field Marshal\'s Leather Epaulets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16455','0','0','464','16','Field Marshal\'s Leather Mask');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16446','0','0','465','16','Marshal\'s Leather Footguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16454','0','0','541','16','Marshal\'s Leather Handgrips');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16456','0','0','542','16','Marshal\'s Leather Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23298','0','0','652','16','Knight-Captain\'s Leather Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23299','0','0','653','16','Knight-Captain\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23284','0','0','428','16','Knight-Lieutenant\'s Leather Grips');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23285','0','0','427','16','Knight-Lieutenant\'s Leather Walkers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23312','0','0','444','16','Lieutenant Commander\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23313','0','0','427','16','Lieutenant Commander\'s Leather Shoulders');


-- Warlock
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17578','0','0','464','19','Field Marshal\'s Coronal');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17581','0','0','463','19','Field Marshal\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17580','0','0','465','19','Field Marshal\'s Dreadweave Shoulders');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17583','0','0','465','19','Marshal\'s Dreadweave Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17584','0','0','541','19','Marshal\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','17579','0','0','542','19','Marshal\'s Dreadweave Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23296','0','0','653','19','Knight-Captain\'s Dreadweave Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23297','0','0','652','19','Knight-Captain\'s Dreadweave Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23282','0','0','428','19','Knight-Lieutenant\'s Dreadweave Handwraps');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23283','0','0','427','19','Knight-Lieutenant\'s Dreadweave Walkers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23310','0','0','444','19','Lieutenant Commander\'s Dreadweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23311','0','0','427','19','Lieutenant Commander\'s Dreadweave Spaulders');


-- Warrior
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16477','0','0','463','13','Field Marshal\'s Plate Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16478','0','0','464','13','Field Marshal\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16480','0','0','465','13','Field Marshal\'s Plate Shoulderguards');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16483','0','0','465','13','Marshal\'s Plate Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16484','0','0','541','13','Marshal\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','16479','0','0','542','13','Marshal\'s Plate Legguards');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23300','0','0','652','13','Knight-Captain\'s Plate Hauberk');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23301','0','0','653','13','Knight-Captain\'s Plate Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23286','0','0','428','13','Knight-Lieutenant\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23287','0','0','427','13','Knight-Lieutenant\'s Plate Greaves');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23314','0','0','444','13','Lieutenant Commander\'s Plate Helmet');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','23315','0','0','427','13','Lieutenant Commander\'s Plate Shoulders');


-- Shaman
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29609','0','0','463','17','Field Marshal\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29610','0','0','464','17','Field Marshal\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29611','0','0','465','17','Field Marshal\'s Mail Spaulders');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29606','0','0','465','17','Marshal\'s Mail Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29607','0','0','541','17','Marshal\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29608','0','0','542','17','Marshal\'s Mail Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29596','0','0','652','17','Knight-Captain\'s Mail Hauberk');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29597','0','0','653','17','Knight-Captain\'s Mail Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29594','0','0','427','17','Knight-Lieutenant\'s Mail Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29595','0','0','428','17','Knight-Lieutenant\'s Mail Vices');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29598','0','0','444','17','Lieutenant Commander\'s Mail Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('540','29599','0','0','427','17','Lieutenant Commander\'s Mail Pauldrons');



-- --------------------------------------------------
-- Level 60 PvP Armor - Horde
-- --------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (542); -- These Never Chage During Seasons - Same Vendor with Same Items

-- Druid
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16551','0','0','465','21','Warlord\'s Dragonhide Epaulets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16549','0','0','463','21','Warlord\'s Dragonhide Hauberk');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16550','0','0','464','21','Warlord\'s Dragonhide Helmet');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16554','0','0','465','21','General\'s Dragonhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16555','0','0','541','21','General\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16552','0','0','542','21','General\'s Dragonhide Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22877','0','0','652','21','Legionnaire\'s Dragonhide Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22878','0','0','653','21','Legionnaire\'s Dragonhide Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22863','0','0','428','21','Blood Guard\'s Dragonhide Grips');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22852','0','0','427','21','Blood Guard\'s Dragonhide Treads');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23253','0','0','444','21','Champion\'s Dragonhide Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23254','0','0','427','21','Champion\'s Dragonhide Shoulders');


-- Hunter
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16565','0','0','463','15','Warlord\'s Chain Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16566','0','0','464','15','Warlord\'s Chain Helmet');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16568','0','0','465','15','Warlord\'s Chain Shoulders');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16569','0','0','465','15','General\'s Chain Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16571','0','0','541','15','General\'s Chain Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16567','0','0','542','15','General\'s Chain Legguards');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22874','0','0','652','15','Legionnaire\'s Chain Hauberk');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22875','0','0','653','15','Legionnaire\'s Chain Legguards');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22843','0','0','427','15','Blood Guard\'s Chain Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22862','0','0','428','15','Blood Guard\'s Chain Vices');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23251','0','0','444','15','Champion\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23252','0','0','427','15','Champion\'s Chain Shoulders');


-- Mage
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16536','0','0','465','18','Warlord\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16533','0','0','464','18','Warlord\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16535','0','0','463','18','Warlord\'s Silk Raiment');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16539','0','0','465','18','General\'s Silk Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16540','0','0','541','18','General\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16534','0','0','542','18','General\'s Silk Trousers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22883','0','0','653','18','Legionnaire\'s Silk Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22886','0','0','652','18','Legionnaire\'s Silk Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22870','0','0','428','18','Blood Guard\'s Silk Handwraps');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22860','0','0','427','18','Blood Guard\'s Silk Walkers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23263','0','0','444','18','Champion\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23264','0','0','427','18','Champion\'s Silk Mantle');


-- Paladin
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29615','0','0','463','14','Warlord\'s Lamellar Chestplate');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29616','0','0','464','14','Warlord\'s Lamellar Faceguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29617','0','0','465','14','Warlord\'s Lamellar Pauldrons');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29612','0','0','465','14','General\'s Lamellar Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29613','0','0','541','14','General\'s Lamellar Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29614','0','0','542','14','General\'s Lamellar Legplates');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29602','0','0','652','14','Legionnaire\'s Lamellar Breastplate');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29603','0','0','653','14','Legionnaire\'s Lamellar Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29600','0','0','428','14','Blood Guard\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29601','0','0','427','14','Blood Guard\'s Lamellar Sabatons');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29604','0','0','444','14','Champion\'s Lamellar Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','29605','0','0','427','14','Champion\'s Lamellar Shoulders');


-- Priest
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17623','0','0','464','112','Warlord\'s Satin Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17622','0','0','465','112','Warlord\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17624','0','0','463','112','Warlord\'s Satin Robes');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17618','0','0','465','112','General\'s Satin Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17620','0','0','541','112','General\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17625','0','0','542','112','General\'s Satin Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22882','0','0','653','112','Legionnaire\'s Satin Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22885','0','0','652','112','Legionnaire\'s Satin Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22869','0','0','428','112','Blood Guard\'s Satin Handwraps');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22859','0','0','427','112','Blood Guard\'s Satin Walkers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23261','0','0','444','112','Champion\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23262','0','0','427','112','Champion\'s Satin Mantle');


-- Rogue
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16563','0','0','463','16','Warlord\'s Leather Breastplate');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16561','0','0','464','16','Warlord\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16562','0','0','465','16','Warlord\'s Leather Spaulders');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16564','0','0','542','16','General\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16560','0','0','541','16','General\'s Leather Mitts');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16558','0','0','465','16','General\'s Leather Treads');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22879','0','0','652','16','Legionnaire\'s Leather Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22880','0','0','653','16','Legionnaire\'s Leather Legguards');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22864','0','0','428','16','Blood Guard\'s Leather Grips');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22856','0','0','427','16','Blood Guard\'s Leather Walkers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23257','0','0','444','16','Champion\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23258','0','0','427','16','Champion\'s Leather Shoulders');


-- Warlock
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17591','0','0','464','19','Warlord\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17590','0','0','465','19','Warlord\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17592','0','0','463','19','Warlord\'s Dreadweave Robe');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17586','0','0','465','19','General\'s Dreadweave Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17588','0','0','541','19','General\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','17593','0','0','542','19','General\'s Dreadweave Pants');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22881','0','0','653','19','Legionnaire\'s Dreadweave Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22884','0','0','652','19','Legionnaire\'s Dreadweave Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22865','0','0','428','19','Blood Guard\'s Dreadweave Handwraps');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22855','0','0','427','19','Blood Guard\'s Dreadweave Walkers');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23255','0','0','444','19','Champion\'s Dreadweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23256','0','0','427','19','Champion\'s Dreadweave Spaulders');


-- Warrior
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16541','0','0','463','13','Warlord\'s Plate Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16542','0','0','464','13','Warlord\'s Plate Headpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16544','0','0','465','13','Warlord\'s Plate Shoulders');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16545','0','0','465','13','General\'s Plate Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16548','0','0','541','13','General\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16543','0','0','542','13','General\'s Plate Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22872','0','0','652','13','Legionnaire\'s Plate Hauberk');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22873','0','0','653','13','Legionnaire\'s Plate Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22868','0','0','428','13','Blood Guard\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22858','0','0','427','13','Blood Guard\'s Plate Greaves');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23244','0','0','444','13','Champion\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23243','0','0','427','13','Champion\'s Plate Shoulders');


-- Shaman
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16577','0','0','463','17','Warlord\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16578','0','0','464','17','Warlord\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16580','0','0','465','17','Warlord\'s Mail Spaulders');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16573','0','0','465','17','General\'s Mail Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16574','0','0','541','17','General\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','16579','0','0','542','17','General\'s Mail Leggings');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22876','0','0','652','17','Legionnaire\'s Mail Hauberk');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22887','0','0','653','17','Legionnaire\'s Mail Legguards');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22857','0','0','427','17','Blood Guard\'s Mail Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','22867','0','0','428','17','Blood Guard\'s Mail Vices');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23259','0','0','444','17','Champion\'s Mail Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('542','23260','0','0','427','17','Champion\'s Mail Pauldrons');


-- --------------------------------------------------
-- Level 70 PvP Armor - Alliance (Offered Until Season 3 Except During Season 1 - Also Sells Marshal's Epic L70 Boots / Belts / Bracers During Season 1)
-- --------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (544); 

-- Druid
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31589','0','0','2261','21','Grand Marshal\'s Kodohide Gloves'); -- Grand Marshal's Refuge
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31590','0','0','2263','21','Grand Marshal\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31591','0','0','2265','21','Grand Marshal\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31592','0','0','2267','21','Grand Marshal\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31593','0','0','2259','21','Grand Marshal\'s Kodohide Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28618','0','0','2261','21','Grand Marshal\'s Dragonhide Gloves'); -- Grand Marshal's Sanctuary
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28619','0','0','2263','21','Grand Marshal\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28620','0','0','2265','21','Grand Marshal\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28622','0','0','2267','21','Grand Marshal\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28623','0','0','2259','21','Grand Marshal\'s Dragonhide Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28719','0','0','2261','21','Grand Marshal\'s Wyrmhide Gloves'); -- Grand Marshal's Wildhide
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28720','0','0','2263','21','Grand Marshal\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28721','0','0','2265','21','Grand Marshal\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28722','0','0','2267','21','Grand Marshal\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28723','0','0','2259','21','Grand Marshal\'s Wyrmhide Tunic');


-- Hunter
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28614','0','0','2261','15','Grand Marshal\'s Chain Gauntlets'); -- Grand Marshal's Pursuit
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28615','0','0','2263','15','Grand Marshal\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28616','0','0','2265','15','Grand Marshal\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28617','0','0','2267','15','Grand Marshal\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28613','0','0','2259','15','Grand Marshal\'s Chain Armor');


-- Mage
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28716','0','0','2261','18','Grand Marshal\'s Silk Handguards'); -- Grand Marshal's Regalia
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28715','0','0','2263','18','Grand Marshal\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28718','0','0','2265','18','Grand Marshal\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28714','0','0','2267','18','Grand Marshal\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28717','0','0','2259','18','Grand Marshal\'s Silk Raiment');


-- Paladin
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28680','0','0','2261','14','Grand Marshal\'s Lamellar Gauntlets'); -- Grand Marshal's Aegis
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28681','0','0','2263','14','Grand Marshal\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28724','0','0','2265','14','Grand Marshal\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28683','0','0','2267','14','Grand Marshal\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28679','0','0','2259','14','Grand Marshal\'s Lamellar Chestpiece');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31631','0','0','2261','14','Grand Marshal\'s Ornamented Gloves'); -- Grand Marshal's Redemption
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31632','0','0','2263','14','Grand Marshal\'s Ornamented Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31633','0','0','2265','14','Grand Marshal\'s Ornamented Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31634','0','0','2267','14','Grand Marshal\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31630','0','0','2259','14','Grand Marshal\'s Ornamented Chestplate');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28710','0','0','2261','14','Grand Marshal\'s Scaled Gauntlets'); -- Grand Marshal's Vindication
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28711','0','0','2263','14','Grand Marshal\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28712','0','0','2265','14','Grand Marshal\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28713','0','0','2267','14','Grand Marshal\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28709','0','0','2259','14','Grand Marshal\'s Scaled Chestpiece');


-- Priest
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31620','0','0','2261','112','Grand Marshal\'s Mooncloth Mitts'); -- Grand Marshal's Investiture
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31622','0','0','2263','112','Grand Marshal\'s Mooncloth Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31623','0','0','2265','112','Grand Marshal\'s Mooncloth Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31624','0','0','2267','112','Grand Marshal\'s Mooncloth Shoulderpads');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31625','0','0','2259','112','Grand Marshal\'s Mooncloth Vestments');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28704','0','0','2261','112','Grand Marshal\'s Satin Gloves'); -- Grand Marshal's Raiment
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28705','0','0','2263','112','Grand Marshal\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28706','0','0','2265','112','Grand Marshal\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28707','0','0','2267','112','Grand Marshal\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28708','0','0','2259','112','Grand Marshal\'s Satin Robe');


-- Rogue
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28684','0','0','2261','16','Grand Marshal\'s Leather Gloves'); -- Grand Marshal's Vestments
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28685','0','0','2263','16','Grand Marshal\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28686','0','0','2265','16','Grand Marshal\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28687','0','0','2267','16','Grand Marshal\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28688','0','0','2259','16','Grand Marshal\'s Leather Tunic');


-- Warlock
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28624','0','0','2261','19','Grand Marshal\'s Dreadweave Gloves'); -- Grand Marshal's Dreadgear
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28625','0','0','2263','19','Grand Marshal\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28626','0','0','2265','19','Grand Marshal\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28627','0','0','2267','19','Grand Marshal\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28628','0','0','2259','19','Grand Marshal\'s Dreadweave Robe');


-- Warrior
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28700','0','0','2261','13','Grand Marshal\'s Plate Gauntlets'); -- Grand Marshal's Battlegear
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28701','0','0','2263','13','Grand Marshal\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28702','0','0','2265','13','Grand Marshal\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28703','0','0','2267','13','Grand Marshal\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28699','0','0','2259','13','Grand Marshal\'s Plate Chestpiece');


-- Shaman
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28690','0','0','2261','17','Grand Marshal\'s Linked Gauntlets'); -- Grand Marshal's Earthshaker
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28691','0','0','2263','17','Grand Marshal\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28692','0','0','2265','17','Grand Marshal\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28693','0','0','2267','17','Grand Marshal\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28689','0','0','2259','17','Grand Marshal\'s Linked Armor');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28695','0','0','2261','17','Grand Marshal\'s Mail Gauntlets'); -- Grand Marshal's Thunderfist
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28696','0','0','2263','17','Grand Marshal\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28697','0','0','2265','17','Grand Marshal\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28698','0','0','2267','17','Grand Marshal\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','28694','0','0','2259','17','Grand Marshal\'s Mail Armor');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31641','0','0','2261','17','Grand Marshal\'s Ringmail Gloves'); -- Grand Marshal's Wartide
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31642','0','0','2263','17','Grand Marshal\'s Ringmail Headpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31643','0','0','2265','17','Grand Marshal\'s Ringmail Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31644','0','0','2267','17','Grand Marshal\'s Ringmail Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('544','31640','0','0','2259','17','Grand Marshal\'s Ringmail Chestguard');



-- --------------------------------------------------
-- Level 70 PvP Armor - Horde (Offered Until Season 3)
-- --------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (545);

-- Druid
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31584','0','0','2261','21','High Warlord\'s Kodohide Gloves'); -- High Warlord's Refuge
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31585','0','0','2263','21','High Warlord\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31586','0','0','2265','21','High Warlord\'s Kodohide Legguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31587','0','0','2267','21','High Warlord\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31588','0','0','2259','21','High Warlord\'s Kodohide Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28811','0','0','2261','21','High Warlord\'s Dragonhide Gloves'); -- High Warlord's Sanctuary
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28812','0','0','2263','21','High Warlord\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28813','0','0','2265','21','High Warlord\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28814','0','0','2267','21','High Warlord\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28815','0','0','2259','21','High Warlord\'s Dragonhide Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28871','0','0','2261','21','High Warlord\'s Wyrmhide Gloves'); -- High Warlord's Wildhide
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28872','0','0','2263','21','High Warlord\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28873','0','0','2265','21','High Warlord\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28874','0','0','2267','21','High Warlord\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28875','0','0','2259','21','High Warlord\'s Wyrmhide Tunic');


-- Hunter
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28806','0','0','2261','15','High Warlord\'s Chain Gauntlets'); -- High Warlord's Pursuit
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28807','0','0','2263','15','High Warlord\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28808','0','0','2265','15','High Warlord\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28809','0','0','2267','15','High Warlord\'s Chain Spaulder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28805','0','0','2259','15','High Warlord\'s Chain Armor');


-- Mage
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28868','0','0','2261','18','High Warlord\'s Silk Handguards'); -- High Warlord's Regalia
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28867','0','0','2263','18','High Warlord\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28870','0','0','2265','18','High Warlord\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28866','0','0','2267','18','High Warlord\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28869','0','0','2259','18','High Warlord\'s Silk Raiment');


-- Paladin
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28832','0','0','2261','14','High Warlord\'s Lamellar Gauntlets'); -- High Warlord's Aegis
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28833','0','0','2263','14','High Warlord\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28834','0','0','2265','14','High Warlord\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28835','0','0','2267','14','High Warlord\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28831','0','0','2259','14','High Warlord\'s Lamellar Chestpiece');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31636','0','0','2261','14','High Warlord\'s Ornamented Gloves'); -- High Warlord's Redemption
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31637','0','0','2263','14','High Warlord\'s Ornamented Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31638','0','0','2265','14','High Warlord\'s Ornamented Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31639','0','0','2267','14','High Warlord\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31635','0','0','2259','14','High Warlord\'s Ornamented Chestplate');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28862','0','0','2261','14','High Warlord\'s Scaled Gauntlets'); -- High Warlord's Vindication
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28863','0','0','2263','14','High Warlord\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28864','0','0','2265','14','High Warlord\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28865','0','0','2267','14','High Warlord\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28861','0','0','2259','14','High Warlord\'s Scaled Chestpiece');


-- Priest
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31621','0','0','2261','112','High Warlord\'s Mooncloth Mitts'); -- High Warlord's Investiture
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31626','0','0','2263','112','High Warlord\'s Mooncloth Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31627','0','0','2265','112','High Warlord\'s Mooncloth Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31628','0','0','2267','112','High Warlord\'s Mooncloth Shoulderpads');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31629','0','0','2259','112','High Warlord\'s Mooncloth Vestments');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28856','0','0','2261','112','High Warlord\'s Satin Gloves'); -- High Warlord's Raiment
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28857','0','0','2263','112','High Warlord\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28858','0','0','2265','112','High Warlord\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28859','0','0','2267','112','High Warlord\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28860','0','0','2259','112','High Warlord\'s Satin Robe');


-- Rogue
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28836','0','0','2261','16','High Warlord\'s Leather Gloves'); -- High Warlord's Vestments
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28837','0','0','2263','16','High Warlord\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28838','0','0','2265','16','High Warlord\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28839','0','0','2267','16','High Warlord\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28840','0','0','2259','16','High Warlord\'s Leather Tunic');


-- Warlock
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28817','0','0','2261','19','High Warlord\'s Dreadweave Gloves'); -- High Warlord's Dreadgear
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28818','0','0','2263','19','High Warlord\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28819','0','0','2265','19','High Warlord\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28820','0','0','2267','19','High Warlord\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28821','0','0','2259','19','High Warlord\'s Dreadweave Robe');


-- Warrior
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28852','0','0','2261','13','High Warlord\'s Plate Gauntlets'); -- High Warlord's Battlegear
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28853','0','0','2263','13','High Warlord\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28854','0','0','2265','13','High Warlord\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28855','0','0','2267','13','High Warlord\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28851','0','0','2259','13','High Warlord\'s Plate Chestpiece');


-- Shaman
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28842','0','0','2261','17','High Warlord\'s Linked Gauntlets'); -- High Warlord's Earthshaker
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28843','0','0','2263','17','High Warlord\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28844','0','0','2265','17','High Warlord\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28845','0','0','2267','17','High Warlord\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28841','0','0','2259','17','High Warlord\'s Linked Armor');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28847','0','0','2261','17','High Warlord\'s Mail Gauntlets'); -- High Warlord's Thunderfist
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28848','0','0','2263','17','High Warlord\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28849','0','0','2265','17','High Warlord\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28850','0','0','2267','17','High Warlord\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','28846','0','0','2259','17','High Warlord\'s Mail Armor');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31647','0','0','2261','17','High Warlord\'s Ringmail Gloves'); -- High Warlord's Wartide
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31648','0','0','2263','17','High Warlord\'s Ringmail Headpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31649','0','0','2265','17','High Warlord\'s Ringmail Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31650','0','0','2267','17','High Warlord\'s Ringmail Shoulderpads');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('545','31646','0','0','2259','17','High Warlord\'s Ringmail Chestguard');


-- --------------------------------------------------
-- Level 70 PvP Armor - Alliance (Offered During Season 1 - Also Sells Marshal's Epic L70 Boots / Belts / Bracers During Season 1)
-- --------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (548); 

-- Druid
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31589','0','0','2261','21','Grand Marshal\'s Kodohide Gloves'); -- Grand Marshal's Refuge
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31590','0','0','2263','21','Grand Marshal\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31591','0','0','2265','21','Grand Marshal\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31592','0','0','2267','21','Grand Marshal\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31593','0','0','2259','21','Grand Marshal\'s Kodohide Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28618','0','0','2261','21','Grand Marshal\'s Dragonhide Gloves'); -- Grand Marshal's Sanctuary
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28619','0','0','2263','21','Grand Marshal\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28620','0','0','2265','21','Grand Marshal\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28622','0','0','2267','21','Grand Marshal\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28623','0','0','2259','21','Grand Marshal\'s Dragonhide Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28719','0','0','2261','21','Grand Marshal\'s Wyrmhide Gloves'); -- Grand Marshal's Wildhide
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28720','0','0','2263','21','Grand Marshal\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28721','0','0','2265','21','Grand Marshal\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28722','0','0','2267','21','Grand Marshal\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28723','0','0','2259','21','Grand Marshal\'s Wyrmhide Tunic');


-- Hunter
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28614','0','0','2261','15','Grand Marshal\'s Chain Gauntlets'); -- Grand Marshal's Pursuit
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28615','0','0','2263','15','Grand Marshal\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28616','0','0','2265','15','Grand Marshal\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28617','0','0','2267','15','Grand Marshal\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28613','0','0','2259','15','Grand Marshal\'s Chain Armor');


-- Mage
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28716','0','0','2261','18','Grand Marshal\'s Silk Handguards'); -- Grand Marshal's Regalia
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28715','0','0','2263','18','Grand Marshal\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28718','0','0','2265','18','Grand Marshal\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28714','0','0','2267','18','Grand Marshal\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28717','0','0','2259','18','Grand Marshal\'s Silk Raiment');


-- Paladin
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28680','0','0','2261','14','Grand Marshal\'s Lamellar Gauntlets'); -- Grand Marshal's Aegis
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28681','0','0','2263','14','Grand Marshal\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28724','0','0','2265','14','Grand Marshal\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28683','0','0','2267','14','Grand Marshal\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28679','0','0','2259','14','Grand Marshal\'s Lamellar Chestpiece');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31631','0','0','2261','14','Grand Marshal\'s Ornamented Gloves'); -- Grand Marshal's Redemption
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31632','0','0','2263','14','Grand Marshal\'s Ornamented Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31633','0','0','2265','14','Grand Marshal\'s Ornamented Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31634','0','0','2267','14','Grand Marshal\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31630','0','0','2259','14','Grand Marshal\'s Ornamented Chestplate');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28710','0','0','2261','14','Grand Marshal\'s Scaled Gauntlets'); -- Grand Marshal's Vindication
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28711','0','0','2263','14','Grand Marshal\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28712','0','0','2265','14','Grand Marshal\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28713','0','0','2267','14','Grand Marshal\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28709','0','0','2259','14','Grand Marshal\'s Scaled Chestpiece');


-- Priest
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31620','0','0','2261','112','Grand Marshal\'s Mooncloth Mitts'); -- Grand Marshal's Investiture
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31622','0','0','2263','112','Grand Marshal\'s Mooncloth Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31623','0','0','2265','112','Grand Marshal\'s Mooncloth Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31624','0','0','2267','112','Grand Marshal\'s Mooncloth Shoulderpads');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31625','0','0','2259','112','Grand Marshal\'s Mooncloth Vestments');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28704','0','0','2261','112','Grand Marshal\'s Satin Gloves'); -- Grand Marshal's Raiment
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28705','0','0','2263','112','Grand Marshal\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28706','0','0','2265','112','Grand Marshal\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28707','0','0','2267','112','Grand Marshal\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28708','0','0','2259','112','Grand Marshal\'s Satin Robe');


-- Rogue
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28684','0','0','2261','16','Grand Marshal\'s Leather Gloves'); -- Grand Marshal's Vestments
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28685','0','0','2263','16','Grand Marshal\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28686','0','0','2265','16','Grand Marshal\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28687','0','0','2267','16','Grand Marshal\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28688','0','0','2259','16','Grand Marshal\'s Leather Tunic');


-- Warlock
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28624','0','0','2261','19','Grand Marshal\'s Dreadweave Gloves'); -- Grand Marshal's Dreadgear
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28625','0','0','2263','19','Grand Marshal\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28626','0','0','2265','19','Grand Marshal\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28627','0','0','2267','19','Grand Marshal\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28628','0','0','2259','19','Grand Marshal\'s Dreadweave Robe');


-- Warrior
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28700','0','0','2261','13','Grand Marshal\'s Plate Gauntlets'); -- Grand Marshal's Battlegear
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28701','0','0','2263','13','Grand Marshal\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28702','0','0','2265','13','Grand Marshal\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28703','0','0','2267','13','Grand Marshal\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28699','0','0','2259','13','Grand Marshal\'s Plate Chestpiece');


-- Shaman
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28690','0','0','2261','17','Grand Marshal\'s Linked Gauntlets'); -- Grand Marshal's Earthshaker
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28691','0','0','2263','17','Grand Marshal\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28692','0','0','2265','17','Grand Marshal\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28693','0','0','2267','17','Grand Marshal\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28689','0','0','2259','17','Grand Marshal\'s Linked Armor');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28695','0','0','2261','17','Grand Marshal\'s Mail Gauntlets'); -- Grand Marshal's Thunderfist
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28696','0','0','2263','17','Grand Marshal\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28697','0','0','2265','17','Grand Marshal\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28698','0','0','2267','17','Grand Marshal\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28694','0','0','2259','17','Grand Marshal\'s Mail Armor');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31641','0','0','2261','17','Grand Marshal\'s Ringmail Gloves'); -- Grand Marshal's Wartide
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31642','0','0','2263','17','Grand Marshal\'s Ringmail Headpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31643','0','0','2265','17','Grand Marshal\'s Ringmail Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31644','0','0','2267','17','Grand Marshal\'s Ringmail Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31640','0','0','2259','17','Grand Marshal\'s Ringmail Chestguard');


-- L70 Epic Boots/Belts/Bracers
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28973','0','0','169','0','Marshal\'s Chain Bracers'); -- Vendor 9435 Pvpcurrency-honor-both20 Warsong gulch mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28974','0','0','172','0','Marshal\'s Chain Girdle'); -- Vendor 14280 Pvpcurrency-honor-both40 Arathi basin mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28975','0','0','171','0','Marshal\'s Chain Sabatons'); -- Vendor 14280 Pvpcurrency-honor-both40 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28976','0','0','172','0','Marshal\'s Dragonhide Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28977','0','0','171','0','Marshal\'s Dragonhide Boots'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28978','0','0','169','0','Marshal\'s Dragonhide Bracers'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28980','0','0','172','0','Marshal\'s Dreadweave Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28981','0','0','169','0','Marshal\'s Dreadweave Cuffs'); -- 9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28982','0','0','171','0','Marshal\'s Dreadweave Stalkers'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31596','0','0','172','0','Marshal\'s Kodohide Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31597','0','0','171','0','Marshal\'s Kodohide Boots'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','31599','0','0','169','0','Marshal\'s Kodohide Bracers'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28983','0','0','172','0','Marshal\'s Lamellar Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28984','0','0','169','0','Marshal\'s Lamellar Bracers'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28985','0','0','171','0','Marshal\'s Lamellar Greaves'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28986','0','0','172','0','Marshal\'s Leather Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28987','0','0','171','0','Marshal\'s Leather Boots'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28988','0','0','169','0','Marshal\'s Leather Bracers'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28989','0','0','169','0','Marshal\'s Linked Bracers'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28990','0','0','172','0','Marshal\'s Linked Girdle'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28991','0','0','171','0','Marshal\'s Linked Sabatons'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28992','0','0','169','0','Marshal\'s Mail Bracers'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28993','0','0','172','0','Marshal\'s Mail Girdle'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28994','0','0','171','0','Marshal\'s Mail Sabatons'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28995','0','0','172','0','Marshal\'s Plate Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28996','0','0','169','0','Marshal\'s Plate Bracers'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28997','0','0','171','0','Marshal\'s Plate Greaves'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28998','0','0','172','0','Marshal\'s Scaled Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','28999','0','0','169','0','Marshal\'s Scaled Bracers'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','29000','0','0','171','0','Marshal\'s Scaled Greaves'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','29001','0','0','172','0','Marshal\'s Silk Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','29002','0','0','169','0','Marshal\'s Silk Cuffs'); -- 	9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','29003','0','0','171','0','Marshal\'s Silk Footguards'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','29004','0','0','172','0','Marshal\'s Wyrmhide Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','29005','0','0','171','0','Marshal\'s Wyrmhide Boots'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('548','29006','0','0','169','0','Marshal\'s Wyrmhide Bracers'); -- 	9,435 20 WSG


-- --------------------------------------------------
-- Level 70 PvP Armor - Horde (Offered During Season 1 - Also Sells General's Epic L70 Boots / Belts / Bracers During Season 1)
-- --------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (549);

-- Druid
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31584','0','0','2261','21','High Warlord\'s Kodohide Gloves'); -- High Warlord's Refuge
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31585','0','0','2263','21','High Warlord\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31586','0','0','2265','21','High Warlord\'s Kodohide Legguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31587','0','0','2267','21','High Warlord\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31588','0','0','2259','21','High Warlord\'s Kodohide Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28811','0','0','2261','21','High Warlord\'s Dragonhide Gloves'); -- High Warlord's Sanctuary
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28812','0','0','2263','21','High Warlord\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28813','0','0','2265','21','High Warlord\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28814','0','0','2267','21','High Warlord\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28815','0','0','2259','21','High Warlord\'s Dragonhide Tunic');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28871','0','0','2261','21','High Warlord\'s Wyrmhide Gloves'); -- High Warlord's Wildhide
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28872','0','0','2263','21','High Warlord\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28873','0','0','2265','21','High Warlord\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28874','0','0','2267','21','High Warlord\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28875','0','0','2259','21','High Warlord\'s Wyrmhide Tunic');


-- Hunter
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28806','0','0','2261','15','High Warlord\'s Chain Gauntlets'); -- High Warlord's Pursuit
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28807','0','0','2263','15','High Warlord\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28808','0','0','2265','15','High Warlord\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28809','0','0','2267','15','High Warlord\'s Chain Spaulder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28805','0','0','2259','15','High Warlord\'s Chain Armor');


-- Mage
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28868','0','0','2261','18','High Warlord\'s Silk Handguards'); -- High Warlord's Regalia
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28867','0','0','2263','18','High Warlord\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28870','0','0','2265','18','High Warlord\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28866','0','0','2267','18','High Warlord\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28869','0','0','2259','18','High Warlord\'s Silk Raiment');


-- Paladin
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28832','0','0','2261','14','High Warlord\'s Lamellar Gauntlets'); -- High Warlord's Aegis
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28833','0','0','2263','14','High Warlord\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28834','0','0','2265','14','High Warlord\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28835','0','0','2267','14','High Warlord\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28831','0','0','2259','14','High Warlord\'s Lamellar Chestpiece');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31636','0','0','2261','14','High Warlord\'s Ornamented Gloves'); -- High Warlord's Redemption
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31637','0','0','2263','14','High Warlord\'s Ornamented Headguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31638','0','0','2265','14','High Warlord\'s Ornamented Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31639','0','0','2267','14','High Warlord\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31635','0','0','2259','14','High Warlord\'s Ornamented Chestplate');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28862','0','0','2261','14','High Warlord\'s Scaled Gauntlets'); -- High Warlord's Vindication
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28863','0','0','2263','14','High Warlord\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28864','0','0','2265','14','High Warlord\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28865','0','0','2267','14','High Warlord\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28861','0','0','2259','14','High Warlord\'s Scaled Chestpiece');


-- Priest
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31621','0','0','2261','112','High Warlord\'s Mooncloth Mitts'); -- High Warlord's Investiture
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31626','0','0','2263','112','High Warlord\'s Mooncloth Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31627','0','0','2265','112','High Warlord\'s Mooncloth Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31628','0','0','2267','112','High Warlord\'s Mooncloth Shoulderpads');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31629','0','0','2259','112','High Warlord\'s Mooncloth Vestments');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28856','0','0','2261','112','High Warlord\'s Satin Gloves'); -- High Warlord's Raiment
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28857','0','0','2263','112','High Warlord\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28858','0','0','2265','112','High Warlord\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28859','0','0','2267','112','High Warlord\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28860','0','0','2259','112','High Warlord\'s Satin Robe');


-- Rogue
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28836','0','0','2261','16','High Warlord\'s Leather Gloves'); -- High Warlord's Vestments
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28837','0','0','2263','16','High Warlord\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28838','0','0','2265','16','High Warlord\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28839','0','0','2267','16','High Warlord\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28840','0','0','2259','16','High Warlord\'s Leather Tunic');


-- Warlock
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28817','0','0','2261','19','High Warlord\'s Dreadweave Gloves'); -- High Warlord's Dreadgear
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28818','0','0','2263','19','High Warlord\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28819','0','0','2265','19','High Warlord\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28820','0','0','2267','19','High Warlord\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28821','0','0','2259','19','High Warlord\'s Dreadweave Robe');


-- Warrior
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28852','0','0','2261','13','High Warlord\'s Plate Gauntlets'); -- High Warlord's Battlegear
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28853','0','0','2263','13','High Warlord\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28854','0','0','2265','13','High Warlord\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28855','0','0','2267','13','High Warlord\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28851','0','0','2259','13','High Warlord\'s Plate Chestpiece');


-- Shaman
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28842','0','0','2261','17','High Warlord\'s Linked Gauntlets'); -- High Warlord's Earthshaker
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28843','0','0','2263','17','High Warlord\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28844','0','0','2265','17','High Warlord\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28845','0','0','2267','17','High Warlord\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28841','0','0','2259','17','High Warlord\'s Linked Armor');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28847','0','0','2261','17','High Warlord\'s Mail Gauntlets'); -- High Warlord's Thunderfist
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28848','0','0','2263','17','High Warlord\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28849','0','0','2265','17','High Warlord\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28850','0','0','2267','17','High Warlord\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28846','0','0','2259','17','High Warlord\'s Mail Armor');

insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31647','0','0','2261','17','High Warlord\'s Ringmail Gloves'); -- High Warlord's Wartide
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31648','0','0','2263','17','High Warlord\'s Ringmail Headpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31649','0','0','2265','17','High Warlord\'s Ringmail Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31650','0','0','2267','17','High Warlord\'s Ringmail Shoulderpads');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31646','0','0','2259','17','High Warlord\'s Ringmail Chestguard');


-- L70 Epic Boots/Belts/Bracers
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28451','0','0','169','0','General\'s Chain Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28450','0','0','172','0','General\'s Chain Girdle'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28449','0','0','171','0','General\'s Chain Sabatons'); -- 		14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28443','0','0','172','0','General\'s Dragonhide Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28444','0','0','171','0','General\'s Dragonhide Boots'); -- 		14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28445','0','0','169','0','General\'s Dragonhide Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28404','0','0','172','0','General\'s Dreadweave Belt'); -- 	14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28405','0','0','169','0','General\'s Dreadweave Cuffs'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28402','0','0','171','0','General\'s Dreadweave Stalkers'); -- 	14,280 40 EOTS	
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31594','0','0','172','0','General\'s Kodohide Belt'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31595','0','0','171','0','General\'s Kodohide Boots'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','31598','0','0','169','0','General\'s Kodohide Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28641','0','0','172','0','General\'s Lamellar Belt'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28643','0','0','169','0','General\'s Lamellar Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28642','0','0','171','0','General\'s Lamellar Greaves'); -- 		14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28423','0','0','172','0','General\'s Leather Belt'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28422','0','0','171','0','General\'s Leather Boots'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28424','0','0','169','0','General\'s Leather Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28605','0','0','169','0','General\'s Linked Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28629','0','0','172','0','General\'s Linked Girdle'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28630','0','0','171','0','General\'s Linked Sabatons'); -- 		14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28638','0','0','169','0','General\'s Mail Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28639','0','0','172','0','General\'s Mail Girdle'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28640','0','0','171','0','General\'s Mail Sabatons'); -- 	14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28385','0','0','172','0','General\'s Plate Belt'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28381','0','0','169','0','General\'s Plate Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28383','0','0','171','0','General\'s Plate Greaves'); -- 		14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28644','0','0','172','0','General\'s Scaled Belt'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28646','0','0','169','0','General\'s Scaled Bracers'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28645','0','0','171','0','General\'s Scaled Greaves'); -- 		14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28409','0','0','172','0','General\'s Silk Belt'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28411','0','0','169','0','General\'s Silk Cuffs'); -- 		9,435 20 WSG
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28410','0','0','171','0','General\'s Silk Footguards'); -- 		14,280 40 EOTS
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28446','0','0','172','0','General\'s Wyrmhide Belt'); -- 		14,280 40 AB
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28447','0','0','171','0','General\'s Wyrmhide Boots'); -- 	14,280 40 EOTS	
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('549','28448','0','0','169','0','General\'s Wyrmhide Bracers'); -- 		9,435 20 WSG



-- ----------------------------------------------------
-- Level 60 - PvP Weapons - Alliance
-- ----------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (541);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','12584','0','0','565','0','Grand Marshal\'s Longsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18825','0','0','565','0','Grand Marshal\'s Aegis');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18827','0','0','565','0','Grand Marshal\'s Handaxe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18830','0','0','131','0','Grand Marshal\'s Sunderer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18833','0','0','567','0','Grand Marshal\'s Bullseye');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18836','0','0','567','0','Grand Marshal\'s Repeater');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18838','0','0','565','0','Grand Marshal\'s Dirk');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18843','0','0','565','0','Grand Marshal\'s Right Hand Blade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18847','0','0','565','0','Grand Marshal\'s Left Hand Blade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18855','0','0','567','0','Grand Marshal\'s Hand Cannon');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18865','0','0','565','0','Grand Marshal\'s Punisher');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18867','0','0','131','0','Grand Marshal\'s Battle Hammer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18869','0','0','131','0','Grand Marshal\'s Glaive');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18873','0','0','131','0','Grand Marshal\'s Stave');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','18876','0','0','131','0','Grand Marshal\'s Claymore');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','23451','0','0','565','0','Grand Marshal\'s Mageblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','23452','0','0','567','0','Grand Marshal\'s Tome of Power');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','23453','0','0','567','0','Grand Marshal\'s Tome of Restoration');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','23454','0','0','565','0','Grand Marshal\'s Warhammer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','23455','0','0','131','0','Grand Marshal\'s Demolisher');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('541','23456','0','0','565','0','Grand Marshal\'s Swiftblade');


-- ----------------------------------------------------
-- Level 60 - PvP Weapons - Horde
-- ----------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (543);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','16345','0','0','565','0','High Warlord\'s Blade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18826','0','0','565','0','High Warlord\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18828','0','0','565','0','High Warlord\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18831','0','0','131','0','High Warlord\'s Battle Axe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18835','0','0','567','0','High Warlord\'s Recurve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18837','0','0','567','0','High Warlord\'s Crossbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18840','0','0','565','0','High Warlord\'s Razor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18844','0','0','565','0','High Warlord\'s Right Claw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18848','0','0','565','0','High Warlord\'s Left Claw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18860','0','0','567','0','High Warlord\'s Street Sweeper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18866','0','0','565','0','High Warlord\'s Bludgeon');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18868','0','0','131','0','High Warlord\'s Pulverizer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18871','0','0','131','0','High Warlord\'s Pig Sticker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18874','0','0','131','0','High Warlord\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','18877','0','0','131','0','High Warlord\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','23464','0','0','565','0','High Warlord\'s Battle Mace');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','23465','0','0','131','0','High Warlord\'s Destroyer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','23466','0','0','565','0','High Warlord\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','23467','0','0','565','0','High Warlord\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','23468','0','0','565','0','High Warlord\'s Tome of Destruction');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('543','23469','0','0','565','0','High Warlord\'s Tome of Mending');


-- ----------------------------------------------------
-- Level 70 - PvP Weapons - Alliance
-- ----------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (546);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28940','0','0','348','0','Grand Marshal\'s Barricade'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor 
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28941','0','0','348','0','Grand Marshal\'s Battletome'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28942','0','0','131','0','Grand Marshal\'s Bonegrinder'); -- 30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28943','0','0','131','0','Grand Marshal\'s Warblade'); -- 30,600 Honor points and 40 Alterac Valley marks. 
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28944','0','0','348','0','Grand Marshal\'s Cleaver'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28945','0','0','131','0','Grand Marshal\'s Decapitator'); -- 30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28946','0','0','348','0','Grand Marshal\'s Hacker'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor 
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28947','0','0','348','0','Grand Marshal\'s Left Ripper'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28948','0','0','131','0','Grand Marshal\'s Maul'); --  30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28949','0','0','131','0','Grand Marshal\'s Painsaw'); -- 30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28950','0','0','348','0','Grand Marshal\'s Bonecracker'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28951','0','0','348','0','Grand Marshal\'s Pummeler'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28952','0','0','348','0','Grand Marshal\'s Quickblade'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28953','0','0','348','0','Grand Marshal\'s Right Ripper'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor 
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28954','0','0','348','0','Grand Marshal\'s Shanker'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28955','0','0','348','0','Grand Marshal\'s Shiv'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28956','0','0','348','0','Grand Marshal\'s Slicer'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28957','0','0','348','0','Grand Marshal\'s Spellblade'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28959','0','0','131','0','Grand Marshal\'s War Staff'); --  30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('546','28960','0','0','2271','0','Grand Marshal\'s Heavy Crossbow'); -- 16320 Pvpcurrency-honor-both40 Alterac valley mark of honor


-- ----------------------------------------------------
-- Level 70 - PvP Weapons - Horde
-- ----------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (547);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28293','0','0','131','0','High Warlord\'s Claymore'); -- 30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28917','0','0','131','0','High Warlord\'s Bonegrinder'); -- 30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28918','0','0','131','0','High Warlord\'s Decapitator'); -- 30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28919','0','0','131','0','High Warlord\'s Maul'); -- 30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28920','0','0','348','0','High Warlord\'s Cleaver'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28921','0','0','348','0','High Warlord\'s Hacker'); -- -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor 
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28922','0','0','348','0','High Warlord\'s Left Ripper');  -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28923','0','0','131','0','High Warlord\'s Painsaw'); -- 30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28924','0','0','348','0','High Warlord\'s Bonecracker'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28925','0','0','348','0','High Warlord\'s Pummeler'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28926','0','0','348','0','High Warlord\'s Quickblade'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28928','0','0','348','0','High Warlord\'s Right Ripper'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor 
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28929','0','0','348','0','High Warlord\'s Shanker'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28930','0','0','348','0','High Warlord\'s Shiv'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28931','0','0','348','0','High Warlord\'s Spellblade'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28933','0','0','2271','0','High Warlord\'s Heavy Crossbow'); -- 16320 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28935','0','0','131','0','High Warlord\'s War Staff'); --  30600 Pvpcurrency-honor-both40 Alterac valley mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28937','0','0','348','0','High Warlord\'s Slicer'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28938','0','0','348','0','High Warlord\'s Battletome'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('547','28939','0','0','348','0','High Warlord\'s Barricade'); -- 15300 Pvpcurrency-honor-both20 Eye of the storm mark of honor 


-- =========================================================================================
-- ==========         Arena PvP Season 1 - Vendor Template Implementation         ==========
-- =========================================================================================
-- --------------------------------------------------------------
-- Arena PvP Season 1 Vendor Template - Current Season Full Price
-- --------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (550);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28302','0','0','2285','504','Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28299','0','0','1664','504','Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28334','0','0','2285','504','Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28335','0','0','2286','504','Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28331','0','0','2285','504','Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28332','0','0','2285','504','Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28333','0','0','2288','504','Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28308','0','0','2285','504','Gladiator\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28298','0','0','1664','504','Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28126','0','0','2286','504','Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28127','0','0','2285','504','Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28128','0','0','2285','504','Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28129','0','0','2288','504','Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28130','0','0','2285','504','Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24556','0','0','2286','504','Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24553','0','0','2285','504','Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24555','0','0','2285','504','Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24554','0','0','2288','504','Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24552','0','0','2285','504','Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28346','0','0','2285','504','Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','30186','0','0','2288','504','Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','30187','0','0','2285','504','Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','30188','0','0','2286','504','Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','30200','0','0','2285','504','Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','30201','0','0','2285','504','Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','32450','0','0','2285','504','Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24550','0','0','1664','504','Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28309','0','0','2285','504','Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28294','0','0','1664','504','Gladiator\'s Heavy Crossbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28355','0','0','2285','504','Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31375','0','0','2286','504','Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31376','0','0','2285','504','Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31377','0','0','2285','504','Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31378','0','0','2288','504','Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31379','0','0','2285','504','Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27702','0','0','2285','504','Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27703','0','0','2286','504','Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27704','0','0','2285','504','Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27705','0','0','2285','504','Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27706','0','0','2288','504','Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25834','0','0','2286','504','Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25830','0','0','2285','504','Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25833','0','0','2285','504','Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25832','0','0','2288','504','Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25831','0','0','2285','504','Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28314','0','0','2285','504','Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28356','0','0','2285','504','Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25997','0','0','2285','504','Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','26000','0','0','2286','504','Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25998','0','0','2285','504','Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','26001','0','0','2285','504','Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25999','0','0','2288','504','Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27469','0','0','2285','504','Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27470','0','0','2286','504','Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27471','0','0','2285','504','Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27472','0','0','2285','504','Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27473','0','0','2288','504','Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28476','0','0','1664','504','Gladiator\'s Maul');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31409','0','0','2286','504','Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31410','0','0','2285','504','Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31411','0','0','2285','504','Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31412','0','0','2288','504','Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31413','0','0','2285','504','Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31613','0','0','2285','504','Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31614','0','0','2286','504','Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31616','0','0','2285','504','Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31618','0','0','2285','504','Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31619','0','0','2288','504','Gladiator\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28300','0','0','1664','504','Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24544','0','0','2285','504','Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24549','0','0','2286','504','Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24545','0','0','2285','504','Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24547','0','0','2285','504','Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24546','0','0','2288','504','Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28305','0','0','2285','504','Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28307','0','0','2285','504','Gladiator\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','32452','0','0','2285','504','Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28313','0','0','2285','504','Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31396','0','0','2285','504','Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31397','0','0','2286','504','Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31400','0','0','2285','504','Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31406','0','0','2285','504','Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','31407','0','0','2288','504','Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','32451','0','0','2285','504','Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27707','0','0','2286','504','Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27708','0','0','2285','504','Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27709','0','0','2285','504','Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27710','0','0','2288','504','Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27711','0','0','2285','504','Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27879','0','0','2285','504','Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27880','0','0','2286','504','Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27881','0','0','2285','504','Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27882','0','0','2285','504','Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','27883','0','0','2288','504','Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28312','0','0','2285','504','Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28358','0','0','2285','504','Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28310','0','0','2285','504','Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25854','0','0','2288','504','Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25855','0','0','2285','504','Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25857','0','0','2286','504','Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25856','0','0','2285','504','Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','25858','0','0','2285','504','Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28295','0','0','2285','504','Gladiator\'s Slicer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28297','0','0','2285','504','Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28357','0','0','2285','504','Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28320','0','0','2285','504','Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28319','0','0','2285','504','Gladiator\'s War Edge');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','24557','0','0','1664','504','Gladiator\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28136','0','0','2286','504','Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28137','0','0','2285','504','Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28138','0','0','2285','504','Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28139','0','0','2288','504','Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('550','28140','0','0','2285','504','Gladiator\'s Wyrmhide Tunic');

-- ----------------------------------------------------------------------
-- Arena PvP Season 1 Vendor Template - During Season 2 with 15% Discount
-- ----------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (551);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28302','0','0','22','505','Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28299','0','0','26','505','Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28334','0','0','22','505','Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28335','0','0','21','505','Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28331','0','0','22','505','Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28332','0','0','22','505','Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28333','0','0','24','505','Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28308','0','0','22','505','Gladiator\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28298','0','0','26','505','Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28126','0','0','21','505','Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28127','0','0','22','505','Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28128','0','0','22','505','Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28129','0','0','24','505','Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28130','0','0','22','505','Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24556','0','0','21','505','Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24553','0','0','22','505','Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24555','0','0','22','505','Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24554','0','0','24','505','Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24552','0','0','22','505','Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28346','0','0','22','505','Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','30186','0','0','24','505','Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','30187','0','0','22','505','Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','30188','0','0','21','505','Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','30200','0','0','22','505','Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','30201','0','0','22','505','Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','32450','0','0','22','505','Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24550','0','0','26','505','Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28309','0','0','22','505','Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28294','0','0','26','505','Gladiator\'s Heavy Crossbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28355','0','0','22','505','Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31375','0','0','21','505','Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31376','0','0','22','505','Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31377','0','0','22','505','Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31378','0','0','24','505','Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31379','0','0','22','505','Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27702','0','0','22','505','Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27703','0','0','21','505','Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27704','0','0','22','505','Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27705','0','0','22','505','Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27706','0','0','24','505','Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25834','0','0','21','505','Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25830','0','0','22','505','Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25833','0','0','22','505','Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25832','0','0','24','505','Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25831','0','0','22','505','Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28314','0','0','22','505','Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28356','0','0','22','505','Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25997','0','0','22','505','Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','26000','0','0','21','505','Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25998','0','0','22','505','Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','26001','0','0','22','505','Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25999','0','0','24','505','Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27469','0','0','22','505','Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27470','0','0','21','505','Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27471','0','0','22','505','Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27472','0','0','22','505','Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27473','0','0','24','505','Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28476','0','0','26','505','Gladiator\'s Maul');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31409','0','0','21','505','Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31410','0','0','22','505','Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31411','0','0','22','505','Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31412','0','0','24','505','Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31413','0','0','22','505','Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31613','0','0','22','505','Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31614','0','0','21','505','Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31616','0','0','22','505','Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31618','0','0','22','505','Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31619','0','0','24','505','Gladiator\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28300','0','0','26','505','Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24544','0','0','22','505','Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24549','0','0','21','505','Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24545','0','0','22','505','Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24547','0','0','22','505','Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24546','0','0','24','505','Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28305','0','0','22','505','Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28307','0','0','22','505','Gladiator\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','32452','0','0','22','505','Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28313','0','0','22','505','Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31396','0','0','22','505','Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31397','0','0','21','505','Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31400','0','0','22','505','Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31406','0','0','22','505','Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','31407','0','0','24','505','Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','32451','0','0','22','505','Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27707','0','0','21','505','Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27708','0','0','22','505','Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27709','0','0','22','505','Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27710','0','0','24','505','Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27711','0','0','22','505','Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27879','0','0','22','505','Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27880','0','0','21','505','Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27881','0','0','22','505','Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27882','0','0','22','505','Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','27883','0','0','24','505','Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28312','0','0','22','505','Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28358','0','0','22','505','Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28310','0','0','22','505','Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25854','0','0','24','505','Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25855','0','0','22','505','Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25857','0','0','21','505','Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25856','0','0','22','505','Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','25858','0','0','22','505','Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28295','0','0','22','505','Gladiator\'s Slicer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28297','0','0','22','505','Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28357','0','0','22','505','Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28320','0','0','22','505','Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28319','0','0','22','505','Gladiator\'s War Edge');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','24557','0','0','26','505','Gladiator\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28136','0','0','21','505','Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28137','0','0','22','505','Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28138','0','0','22','505','Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28139','0','0','24','505','Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('551','28140','0','0','22','505','Gladiator\'s Wyrmhide Tunic');


-- -------------------------------------------------------------------------
-- Arena PvP Season 1 Vendor Template - Armor During Season 3 Sold For Honor
-- -------------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (552);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24544','0','0','2279','506','Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24545','0','0','2280','506','Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24546','0','0','2278','506','Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24547','0','0','2281','506','Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24549','0','0','2277','506','Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24552','0','0','2279','506','Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24553','0','0','2280','506','Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24554','0','0','2278','506','Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24555','0','0','2281','506','Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','24556','0','0','2277','506','Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25830','0','0','2280','506','Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25831','0','0','2279','506','Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25832','0','0','2278','506','Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25833','0','0','2281','506','Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25834','0','0','2277','506','Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25854','0','0','2278','506','Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25855','0','0','2280','506','Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25856','0','0','2279','506','Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25857','0','0','2277','506','Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25858','0','0','2281','506','Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25997','0','0','2279','506','Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25998','0','0','2280','506','Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','25999','0','0','2278','506','Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','26000','0','0','2277','506','Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','26001','0','0','2281','506','Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27469','0','0','2279','506','Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27470','0','0','2277','506','Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27471','0','0','2280','506','Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27472','0','0','2281','506','Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27473','0','0','2278','506','Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27702','0','0','2279','506','Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27703','0','0','2277','506','Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27704','0','0','2280','506','Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27705','0','0','2281','506','Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27706','0','0','2278','506','Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27707','0','0','2277','506','Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27708','0','0','2280','506','Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27709','0','0','2281','506','Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27710','0','0','2278','506','Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27711','0','0','2279','506','Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27879','0','0','2279','506','Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27880','0','0','2277','506','Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27881','0','0','2280','506','Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27882','0','0','2281','506','Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','27883','0','0','2278','506','Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28126','0','0','2277','506','Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28127','0','0','2280','506','Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28128','0','0','2281','506','Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28129','0','0','2278','506','Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28130','0','0','2279','506','Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28136','0','0','2277','506','Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28137','0','0','2280','506','Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28138','0','0','2281','506','Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28139','0','0','2278','506','Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28140','0','0','2279','506','Gladiator\'s Wyrmhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28331','0','0','2280','506','Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28332','0','0','2281','506','Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28333','0','0','2278','506','Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28334','0','0','2279','506','Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','28335','0','0','2277','506','Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','30186','0','0','2278','506','Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','30187','0','0','2280','506','Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','30188','0','0','2277','506','Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','30200','0','0','2279','506','Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','30201','0','0','2281','506','Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31375','0','0','2277','506','Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31376','0','0','2280','506','Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31377','0','0','2281','506','Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31378','0','0','2278','506','Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31379','0','0','2279','506','Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31396','0','0','2279','506','Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31397','0','0','2277','506','Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31400','0','0','2280','506','Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31406','0','0','2281','506','Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31407','0','0','2278','506','Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31409','0','0','2277','506','Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31410','0','0','2280','506','Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31411','0','0','2281','506','Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31412','0','0','2278','506','Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31413','0','0','2279','506','Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31613','0','0','2279','506','Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31614','0','0','2277','506','Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31616','0','0','2280','506','Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31618','0','0','2281','506','Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('552','31619','0','0','2278','506','Gladiator\'s Ornamented Spaulders');


-- ---------------------------------------------------------------------------
-- Arena PvP Season 1 Vendor Template - Weapons During Season 3 Sold For Honor
-- ---------------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (553);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28302','0','0','2240','506','Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28299','0','0','2237','506','Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28308','0','0','2239','506','Gladiator\'s Cleaver'); 
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28298','0','0','2237','506','Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28346','0','0','2240','506','Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','32450','0','0','2239','506','Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','24550','0','0','2237','506','Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28309','0','0','2240','506','Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28294','0','0','2237','506','Gladiator\'s Heavy Crossbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','33945','0','0','2241','506','Gladiator\'s Idol of Resolve'); -- ********* SEASON 3 INTRODUCED (CAPTIAN O'NIEL /Sergeant Thunderhorn)
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','33942','0','0','2241','506','Gladiator\'s Idol of Steadfastness'); -- ********* SEASON 3 INTRODUCED (CAPTIAN O'NIEL /Sergeant Thunderhorn)
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28355','0','0','2241','506','Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28314','0','0','2239','506','Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','33936','0','0','2241','506','Gladiator\'s Libram of Fortitude'); -- ********* SEASON 3 INTRODUCED (CAPTIAN O'NIEL /Sergeant Thunderhorn)
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28356','0','0','2241','506','Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','33948','0','0','2241','506','Gladiator\'s Libram of Vengeance'); -- ********* SEASON 3 INTRODUCED (CAPTIAN O'NIEL /Sergeant Thunderhorn)
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28476','0','0','2237','506','Gladiator\'s Maul');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28300','0','0','2237','506','Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28305','0','0','2239','506','Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28307','0','0','2240','506','Gladiator\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','32452','0','0','2240','506','Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28313','0','0','2239','506','Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','32451','0','0','2239','506','Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28312','0','0','2239','506','Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28358','0','0','2240','506','Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28310','0','0','2240','506','Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28295','0','0','2239','506','Gladiator\'s Slicer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28297','0','0','2239','506','Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','33939','0','0','2241','506','Gladiator\'s Totem of Indomitability'); -- ********* SEASON 3 INTRODUCED (CAPTIAN O'NIEL /Sergeant Thunderhorn)
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','33951','0','0','2241','506','Gladiator\'s Totem of Survival'); -- ********* SEASON 3 INTRODUCED (CAPTIAN O'NIEL /Sergeant Thunderhorn)
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28357','0','0','2241','506','Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28320','0','0','2238','506','Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','28319','0','0','2241','506','Gladiator\'s War Edge');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('553','24557','0','0','2237','506','Gladiator\'s War Staff');


-- ---------------------------------------------------------------------------------
-- Arena PvP Season 1 Vendor Template - Armor During Season 4 Sold For Tier 4 Tokens
-- ---------------------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (554);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24544','0','0','1235','0','Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24545','0','0','1239','0','Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24546','0','0','1243','0','Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24547','0','0','1241','0','Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24549','0','0','1237','0','Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24552','0','0','1215','0','Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24553','0','0','1217','0','Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24554','0','0','1219','0','Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24555','0','0','1218','0','Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','24556','0','0','1216','0','Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25830','0','0','1206','0','Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25831','0','0','1200','0','Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25832','0','0','1212','0','Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25833','0','0','1209','0','Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25834','0','0','1203','0','Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25854','0','0','1219','0','Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25855','0','0','1217','0','Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25856','0','0','1215','0','Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25857','0','0','1216','0','Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25858','0','0','1218','0','Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25997','0','0','1200','0','Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25998','0','0','1206','0','Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','25999','0','0','1212','0','Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','26000','0','0','1203','0','Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','26001','0','0','1209','0','Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27469','0','0','1200','0','Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27470','0','0','1203','0','Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27471','0','0','1206','0','Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27472','0','0','1209','0','Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27473','0','0','1212','0','Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27702','0','0','1200','0','Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27703','0','0','1203','0','Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27704','0','0','1206','0','Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27705','0','0','1209','0','Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27706','0','0','1212','0','Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27707','0','0','1237','0','Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27708','0','0','1239','0','Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27709','0','0','1241','0','Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27710','0','0','1243','0','Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27711','0','0','1235','0','Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27879','0','0','1200','0','Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27880','0','0','1203','0','Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27881','0','0','1206','0','Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27882','0','0','1209','0','Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','27883','0','0','1212','0','Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28126','0','0','1237','0','Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28127','0','0','1239','0','Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28128','0','0','1241','0','Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28129','0','0','1243','0','Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28130','0','0','1235','0','Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28136','0','0','1237','0','Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28137','0','0','1239','0','Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28138','0','0','1241','0','Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28139','0','0','1243','0','Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28140','0','0','1235','0','Gladiator\'s Wyrmhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28331','0','0','1217','0','Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28332','0','0','1218','0','Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28333','0','0','1219','0','Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28334','0','0','1215','0','Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','28335','0','0','1216','0','Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','30186','0','0','1219','0','Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','30187','0','0','1217','0','Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','30188','0','0','1216','0','Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','30200','0','0','1215','0','Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','30201','0','0','1218','0','Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31375','0','0','1237','0','Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31376','0','0','1239','0','Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31377','0','0','1241','0','Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31378','0','0','1243','0','Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31379','0','0','1235','0','Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31396','0','0','1200','0','Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31397','0','0','1203','0','Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31400','0','0','1206','0','Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31406','0','0','1209','0','Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31407','0','0','1212','0','Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31409','0','0','1237','0','Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31410','0','0','1239','0','Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31411','0','0','1241','0','Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31412','0','0','1243','0','Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31413','0','0','1235','0','Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31613','0','0','1200','0','Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31614','0','0','1203','0','Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31616','0','0','1206','0','Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31618','0','0','1209','0','Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('554','31619','0','0','1212','0','Gladiator\'s Ornamented Spaulders');



-- --------------------------------------------------------------
-- Arena PvP Season 2 Vendor Template - Current Season Full Price
-- --------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (560);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','33313','0','0','2285','505','Merciless Gladiator\'s Barrier');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31958','0','0','2287','505','Merciless Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31959','0','0','1664','505','Merciless Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31960','0','0','2285','505','Merciless Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31961','0','0','2283','505','Merciless Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31962','0','0','2285','505','Merciless Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31963','0','0','2285','505','Merciless Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31964','0','0','2288','505','Merciless Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31965','0','0','2287','505','Merciless Gladiator\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31986','0','0','1664','505','Merciless Gladiator\'s Crossbow of the Phoenix');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31966','0','0','1664','505','Merciless Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31967','0','0','2283','505','Merciless Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31968','0','0','2285','505','Merciless Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31969','0','0','2285','505','Merciless Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31971','0','0','2288','505','Merciless Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31972','0','0','2285','505','Merciless Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31973','0','0','2283','505','Merciless Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31974','0','0','2285','505','Merciless Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31975','0','0','2285','505','Merciless Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31976','0','0','2288','505','Merciless Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31977','0','0','2285','505','Merciless Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31978','0','0','2283','505','Merciless Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31979','0','0','2288','505','Merciless Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31980','0','0','2285','505','Merciless Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31981','0','0','2283','505','Merciless Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31982','0','0','2285','505','Merciless Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31983','0','0','2285','505','Merciless Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32963','0','0','2287','505','Merciless Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31984','0','0','1664','505','Merciless Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31985','0','0','2286','505','Merciless Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','33076','0','0','2283','505','Merciless Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31987','0','0','2283','505','Merciless Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31988','0','0','2285','505','Merciless Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31989','0','0','2285','505','Merciless Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31990','0','0','2288','505','Merciless Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31991','0','0','2285','505','Merciless Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31992','0','0','2285','505','Merciless Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31993','0','0','2283','505','Merciless Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31997','0','0','2285','505','Merciless Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31995','0','0','2285','505','Merciless Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31996','0','0','2288','505','Merciless Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31998','0','0','2283','505','Merciless Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','31999','0','0','2285','505','Merciless Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32000','0','0','2285','505','Merciless Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32001','0','0','2288','505','Merciless Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32002','0','0','2285','505','Merciless Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32003','0','0','2287','505','Merciless Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','33077','0','0','2283','505','Merciless Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32004','0','0','2285','505','Merciless Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32005','0','0','2283','505','Merciless Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32006','0','0','2285','505','Merciless Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32007','0','0','2285','505','Merciless Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32008','0','0','2288','505','Merciless Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32009','0','0','2285','505','Merciless Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32010','0','0','2283','505','Merciless Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32011','0','0','2285','505','Merciless Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32012','0','0','2285','505','Merciless Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32013','0','0','2288','505','Merciless Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32014','0','0','1664','505','Merciless Gladiator\'s Maul');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32015','0','0','2283','505','Merciless Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32016','0','0','2285','505','Merciless Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32017','0','0','2285','505','Merciless Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32018','0','0','2288','505','Merciless Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32019','0','0','2285','505','Merciless Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32020','0','0','2285','505','Merciless Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32021','0','0','2283','505','Merciless Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32022','0','0','2285','505','Merciless Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32023','0','0','2285','505','Merciless Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32024','0','0','2288','505','Merciless Gladiator\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32025','0','0','1664','505','Merciless Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','30486','0','0','2285','505','Merciless Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','30487','0','0','2283','505','Merciless Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','30488','0','0','2285','505','Merciless Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','30489','0','0','2285','505','Merciless Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','30490','0','0','2288','505','Merciless Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32026','0','0','2287','505','Merciless Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32027','0','0','2286','505','Merciless Gladiator\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','33309','0','0','2285','505','Merciless Gladiator\'s Redoubt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32961','0','0','2283','505','Merciless Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32028','0','0','2287','505','Merciless Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32029','0','0','2285','505','Merciless Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32030','0','0','2283','505','Merciless Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32031','0','0','2285','505','Merciless Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32032','0','0','2285','505','Merciless Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32033','0','0','2288','505','Merciless Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32964','0','0','2287','505','Merciless Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32034','0','0','2283','505','Merciless Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32035','0','0','2285','505','Merciless Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32036','0','0','2285','505','Merciless Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32037','0','0','2288','505','Merciless Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32038','0','0','2285','505','Merciless Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32039','0','0','2285','505','Merciless Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32040','0','0','2283','505','Merciless Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32041','0','0','2285','505','Merciless Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32042','0','0','2285','505','Merciless Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32043','0','0','2288','505','Merciless Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32044','0','0','2287','505','Merciless Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32045','0','0','2285','505','Merciless Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32046','0','0','2283','505','Merciless Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32047','0','0','2288','505','Merciless Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32048','0','0','2285','505','Merciless Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32049','0','0','2283','505','Merciless Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32050','0','0','2285','505','Merciless Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32051','0','0','2285','505','Merciless Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32052','0','0','2287','505','Merciless Gladiator\'s Slicer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32053','0','0','2287','505','Merciless Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','33078','0','0','2283','505','Merciless Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32962','0','0','1758','505','Merciless Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32054','0','0','1758','505','Merciless Gladiator\'s War Edge');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32055','0','0','1664','505','Merciless Gladiator\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32056','0','0','2283','505','Merciless Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32057','0','0','2285','505','Merciless Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32058','0','0','2285','505','Merciless Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32059','0','0','2288','505','Merciless Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('560','32060','0','0','2285','505','Merciless Gladiator\'s Wyrmhide Tunic');


-- ----------------------------------------------------------------------
-- Arena PvP Season 2 Vendor Template - During Season 3 with 15% Discount
-- ----------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (561);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33313','0','0','22','506','Merciless Gladiator\'s Barrier');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31958','0','0','21','506','Merciless Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31959','0','0','26','506','Merciless Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31960','0','0','22','506','Merciless Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31961','0','0','21','506','Merciless Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31962','0','0','22','506','Merciless Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31963','0','0','22','506','Merciless Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31964','0','0','24','506','Merciless Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31965','0','0','133','506','Merciless Gladiator\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31986','0','0','26','506','Merciless Gladiator\'s Crossbow of the Phoenix');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31966','0','0','26','506','Merciless Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31967','0','0','21','506','Merciless Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31968','0','0','22','506','Merciless Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31969','0','0','22','506','Merciless Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31971','0','0','24','506','Merciless Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31972','0','0','22','506','Merciless Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31973','0','0','21','506','Merciless Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31974','0','0','22','506','Merciless Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31975','0','0','22','506','Merciless Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31976','0','0','24','506','Merciless Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31977','0','0','22','506','Merciless Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31978','0','0','21','506','Merciless Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31979','0','0','24','506','Merciless Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31980','0','0','22','506','Merciless Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31981','0','0','21','506','Merciless Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31982','0','0','22','506','Merciless Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31983','0','0','22','506','Merciless Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32963','0','0','148','506','Merciless Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31984','0','0','26','506','Merciless Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31985','0','0','21','506','Merciless Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33946','0','0','146','506','Merciless Gladiator\'s Idol of Resolve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33943','0','0','146','506','Merciless Gladiator\'s Idol of Steadfastness');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33076','0','0','146','506','Merciless Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31987','0','0','21','506','Merciless Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31988','0','0','22','506','Merciless Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31989','0','0','22','506','Merciless Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31990','0','0','24','506','Merciless Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31991','0','0','22','506','Merciless Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31992','0','0','22','506','Merciless Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31993','0','0','21','506','Merciless Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31997','0','0','22','506','Merciless Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31995','0','0','22','506','Merciless Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31996','0','0','24','506','Merciless Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31998','0','0','21','506','Merciless Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','31999','0','0','22','506','Merciless Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32000','0','0','22','506','Merciless Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32001','0','0','24','506','Merciless Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32002','0','0','22','506','Merciless Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32003','0','0','21','506','Merciless Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33937','0','0','146','506','Merciless Gladiator\'s Libram of Fortitude');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33077','0','0','146','506','Merciless Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33949','0','0','146','506','Merciless Gladiator\'s Libram of Vengeance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32004','0','0','22','506','Merciless Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32005','0','0','21','506','Merciless Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32006','0','0','22','506','Merciless Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32007','0','0','22','506','Merciless Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32008','0','0','24','506','Merciless Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32009','0','0','22','506','Merciless Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32010','0','0','21','506','Merciless Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32011','0','0','22','506','Merciless Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32012','0','0','22','506','Merciless Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32013','0','0','24','506','Merciless Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32014','0','0','26','506','Merciless Gladiator\'s Maul');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32015','0','0','21','506','Merciless Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32016','0','0','22','506','Merciless Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32017','0','0','22','506','Merciless Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32018','0','0','24','506','Merciless Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32019','0','0','22','506','Merciless Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32020','0','0','22','506','Merciless Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32021','0','0','21','506','Merciless Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32022','0','0','22','506','Merciless Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32023','0','0','22','506','Merciless Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32024','0','0','24','506','Merciless Gladiator\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32025','0','0','26','506','Merciless Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','30486','0','0','22','506','Merciless Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','30487','0','0','21','506','Merciless Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','30488','0','0','22','506','Merciless Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','30489','0','0','22','506','Merciless Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','30490','0','0','24','506','Merciless Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32026','0','0','133','506','Merciless Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32027','0','0','21','506','Merciless Gladiator\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33309','0','0','22','506','Merciless Gladiator\'s Redoubt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32961','0','0','21','506','Merciless Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32028','0','0','133','506','Merciless Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32029','0','0','22','506','Merciless Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32030','0','0','21','506','Merciless Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32031','0','0','22','506','Merciless Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32032','0','0','22','506','Merciless Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32033','0','0','24','506','Merciless Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32964','0','0','148','506','Merciless Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32034','0','0','21','506','Merciless Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32035','0','0','22','506','Merciless Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32036','0','0','22','506','Merciless Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32037','0','0','24','506','Merciless Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32038','0','0','22','506','Merciless Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32039','0','0','22','506','Merciless Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32040','0','0','21','506','Merciless Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32041','0','0','22','506','Merciless Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32042','0','0','22','506','Merciless Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32043','0','0','24','506','Merciless Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32044','0','0','133','506','Merciless Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32045','0','0','22','506','Merciless Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32046','0','0','21','506','Merciless Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32047','0','0','24','506','Merciless Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32048','0','0','22','506','Merciless Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32049','0','0','21','506','Merciless Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32050','0','0','22','506','Merciless Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32051','0','0','22','506','Merciless Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32052','0','0','133','506','Merciless Gladiator\'s Slicer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32053','0','0','148','506','Merciless Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33940','0','0','146','506','Merciless Gladiator\'s Totem of Indomitability');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33952','0','0','146','506','Merciless Gladiator\'s Totem of Survival');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','33078','0','0','146','506','Merciless Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32962','0','0','146','506','Merciless Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32054','0','0','146','506','Merciless Gladiator\'s War Edge');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32055','0','0','26','506','Merciless Gladiator\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32056','0','0','21','506','Merciless Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32057','0','0','22','506','Merciless Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32058','0','0','22','506','Merciless Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32059','0','0','24','506','Merciless Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('561','32060','0','0','22','506','Merciless Gladiator\'s Wyrmhide Tunic');


-- -------------------------------------------------------------------------
-- Arena PvP Season 2 Vendor Template - Armor During Season 4 Sold For Honor
-- -------------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (562);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','30486','0','0','2279','507','Merciless Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','30487','0','0','2277','507','Merciless Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','30488','0','0','2280','507','Merciless Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','30489','0','0','2281','507','Merciless Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','30490','0','0','2278','507','Merciless Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31960','0','0','2279','507','Merciless Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31961','0','0','2277','507','Merciless Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31962','0','0','2280','507','Merciless Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31963','0','0','2281','507','Merciless Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31964','0','0','2278','507','Merciless Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31967','0','0','2277','507','Merciless Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31968','0','0','2280','507','Merciless Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31969','0','0','2281','507','Merciless Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31971','0','0','2278','507','Merciless Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31972','0','0','2279','507','Merciless Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31973','0','0','2277','507','Merciless Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31974','0','0','2280','507','Merciless Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31975','0','0','2281','507','Merciless Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31976','0','0','2278','507','Merciless Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31977','0','0','2279','507','Merciless Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31979','0','0','2278','507','Merciless Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31980','0','0','2280','507','Merciless Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31981','0','0','2277','507','Merciless Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31982','0','0','2279','507','Merciless Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31983','0','0','2281','507','Merciless Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31987','0','0','2277','507','Merciless Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31988','0','0','2280','507','Merciless Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31989','0','0','2281','507','Merciless Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31990','0','0','2278','507','Merciless Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31991','0','0','2279','507','Merciless Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31992','0','0','2279','507','Merciless Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31993','0','0','2277','507','Merciless Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31995','0','0','2281','507','Merciless Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31996','0','0','2278','507','Merciless Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31997','0','0','2280','507','Merciless Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31998','0','0','2277','507','Merciless Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','31999','0','0','2280','507','Merciless Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32000','0','0','2281','507','Merciless Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32001','0','0','2278','507','Merciless Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32002','0','0','2279','507','Merciless Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32004','0','0','2279','507','Merciless Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32005','0','0','2277','507','Merciless Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32006','0','0','2280','507','Merciless Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32007','0','0','2281','507','Merciless Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32008','0','0','2278','507','Merciless Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32009','0','0','2279','507','Merciless Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32010','0','0','2277','507','Merciless Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32011','0','0','2280','507','Merciless Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32012','0','0','2281','507','Merciless Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32013','0','0','2278','507','Merciless Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32015','0','0','2277','507','Merciless Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32016','0','0','2280','507','Merciless Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32017','0','0','2281','507','Merciless Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32018','0','0','2278','507','Merciless Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32019','0','0','2279','507','Merciless Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32020','0','0','2279','507','Merciless Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32021','0','0','2277','507','Merciless Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32022','0','0','2280','507','Merciless Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32023','0','0','2281','507','Merciless Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32024','0','0','2278','507','Merciless Gladiator\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32029','0','0','2279','507','Merciless Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32030','0','0','2277','507','Merciless Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32031','0','0','2280','507','Merciless Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32032','0','0','2281','507','Merciless Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32033','0','0','2278','507','Merciless Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32034','0','0','2277','507','Merciless Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32035','0','0','2280','507','Merciless Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32036','0','0','2281','507','Merciless Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32037','0','0','2278','507','Merciless Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32038','0','0','2279','507','Merciless Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32039','0','0','2279','507','Merciless Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32040','0','0','2277','507','Merciless Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32041','0','0','2280','507','Merciless Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32042','0','0','2281','507','Merciless Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32043','0','0','2278','507','Merciless Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32047','0','0','2278','507','Merciless Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32048','0','0','2280','507','Merciless Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32049','0','0','2277','507','Merciless Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32050','0','0','2279','507','Merciless Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32051','0','0','2281','507','Merciless Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32056','0','0','2277','507','Merciless Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32057','0','0','2280','507','Merciless Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32058','0','0','2281','507','Merciless Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32059','0','0','2278','507','Merciless Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('562','32060','0','0','2279','507','Merciless Gladiator\'s Wyrmhide Tunic');


-- ---------------------------------------------------------------------------
-- Arena PvP Season 2 Vendor Template - Weapons During Season 4 Sold For Honor
-- ---------------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (563);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','31958','0','0','2240','507','Merciless Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','31959','0','0','2237','507','Merciless Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','31965','0','0','2239','507','Merciless Gladiator\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','31966','0','0','2237','507','Merciless Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','31978','0','0','2240','507','Merciless Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','31984','0','0','2237','507','Merciless Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','31985','0','0','2240','507','Merciless Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','31986','0','0','2237','507','Merciless Gladiator\'s Crossbow of the Phoenix');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32003','0','0','2240','507','Merciless Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32014','0','0','2237','507','Merciless Gladiator\'s Maul');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32025','0','0','2237','507','Merciless Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32026','0','0','2239','507','Merciless Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32027','0','0','2240','507','Merciless Gladiator\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32028','0','0','2239','507','Merciless Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32044','0','0','2239','507','Merciless Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32045','0','0','2242','507','Merciless Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32046','0','0','2240','507','Merciless Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32052','0','0','2239','507','Merciless Gladiator\'s Slicer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32053','0','0','2238','507','Merciless Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32054','0','0','2241','507','Merciless Gladiator\'s War Edge');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32055','0','0','2237','507','Merciless Gladiator\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32961','0','0','2240','507','Merciless Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32962','0','0','2241','507','Merciless Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32963','0','0','2238','507','Merciless Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','32964','0','0','2238','507','Merciless Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33076','0','0','2241','507','Merciless Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33077','0','0','2241','507','Merciless Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33078','0','0','2241','507','Merciless Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33309','0','0','2242','507','Merciless Gladiator\'s Redoubt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33313','0','0','2242','507','Merciless Gladiator\'s Barrier');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33937','0','0','2241','507','Merciless Gladiator\'s Libram of Fortitude');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33940','0','0','2241','507','Merciless Gladiator\'s Totem of Indomitability');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33943','0','0','2241','507','Merciless Gladiator\'s Idol of Steadfastness');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33946','0','0','2241','507','Merciless Gladiator\'s Idol of Resolve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33949','0','0','2241','507','Merciless Gladiator\'s Libram of Vengeance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('563','33952','0','0','2241','507','Merciless Gladiator\'s Totem of Survival');


-- --------------------------------------------------------------------------------------------
-- Arena PvP Season 2 Vendor Template - Items (Not Part of Sets) During Season 2 Sold For Honor
-- --------------------------------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (564);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','33056','0','0','2028','0','Veteran\'s Band of Dominance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','33064','0','0','2028','0','Veteran\'s Band of Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','33057','0','0','2028','0','Veteran\'s Band of Triumph');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32809','0','0','1935','0','Veteran\'s Chain Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32797','0','0','1923','0','Veteran\'s Chain Girdle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32785','0','0','1911','0','Veteran\'s Chain Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32786','0','0','1911','0','Veteran\'s Dragonhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32810','0','0','1935','0','Veteran\'s Dragonhide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32799','0','0','1923','0','Veteran\'s Dreadweave Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32811','0','0','1935','0','Veteran\'s Dreadweave Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32787','0','0','1911','0','Veteran\'s Dreadweave Stalkers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32800','0','0','1923','0','Veteran\'s Kodohide Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32788','0','0','1911','0','Veteran\'s Kodohide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32812','0','0','1935','0','Veteran\'s Kodohide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32801','0','0','1923','0','Veteran\'s Lamellar Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32813','0','0','1935','0','Veteran\'s Lamellar Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32789','0','0','1911','0','Veteran\'s Lamellar Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32802','0','0','1923','0','Veteran\'s Leather Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32790','0','0','1911','0','Veteran\'s Leather Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32814','0','0','1935','0','Veteran\'s Leather Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32816','0','0','1935','0','Veteran\'s Linked Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32803','0','0','1923','0','Veteran\'s Linked Girdle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32791','0','0','1911','0','Veteran\'s Linked Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32817','0','0','1935','0','Veteran\'s Mail Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32804','0','0','1923','0','Veteran\'s Mail Girdle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32792','0','0','1911','0','Veteran\'s Mail Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32979','0','0','1923','0','Veteran\'s Mooncloth Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32980','0','0','1935','0','Veteran\'s Mooncloth Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32981','0','0','1911','0','Veteran\'s Mooncloth Slippers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32988','0','0','1923','0','Veteran\'s Ornamented Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32989','0','0','1935','0','Veteran\'s Ornamented Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32990','0','0','1911','0','Veteran\'s Ornamented Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','33067','0','0','127','0','Veteran\'s Pendant of Conquest');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','33065','0','0','127','0','Veteran\'s Pendant of Dominance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','33068','0','0','127','0','Veteran\'s Pendant of Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','33066','0','0','127','0','Veteran\'s Pendant of Triumph');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32805','0','0','1923','0','Veteran\'s Plate Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32818','0','0','1935','0','Veteran\'s Plate Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32793','0','0','1911','0','Veteran\'s Plate Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32997','0','0','1935','0','Veteran\'s Ringmail Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32998','0','0','1923','0','Veteran\'s Ringmail Girdle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32999','0','0','1911','0','Veteran\'s Ringmail Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32806','0','0','1923','0','Veteran\'s Scaled Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32819','0','0','1935','0','Veteran\'s Scaled Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32794','0','0','1911','0','Veteran\'s Scaled Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32807','0','0','1923','0','Veteran\'s Silk Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32820','0','0','1935','0','Veteran\'s Silk Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32795','0','0','1911','0','Veteran\'s Silk Footguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32808','0','0','1923','0','Veteran\'s Wyrmhide Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32796','0','0','1911','0','Veteran\'s Wyrmhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('564','32821','0','0','1935','0','Veteran\'s Wyrmhide Bracers');


-- --------------------------------------------------------------
-- Arena PvP Season 3 Vendor Template - Current Season Full Price
-- --------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (570);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33661','0','0','1431','506','Vengeful Gladiator\'s Barrier');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','34059','0','0','1758','506','Vengeful Gladiator\'s Baton of Light');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','34540','0','0','2282','506','Vengeful Gladiator\'s Battle Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33662','0','0','1670','506','Vengeful Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33663','0','0','2282','506','Vengeful Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33664','0','0','2285','506','Vengeful Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33665','0','0','2286','506','Vengeful Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33666','0','0','2285','506','Vengeful Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33667','0','0','2285','506','Vengeful Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33668','0','0','1435','506','Vengeful Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','34015','0','0','1670','506','Vengeful Gladiator\'s Chopper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33669','0','0','1670','506','Vengeful Gladiator\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33670','0','0','2282','506','Vengeful Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33671','0','0','2286','506','Vengeful Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33672','0','0','2285','506','Vengeful Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33673','0','0','2285','506','Vengeful Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33674','0','0','1435','506','Vengeful Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33675','0','0','2285','506','Vengeful Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33676','0','0','2286','506','Vengeful Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33677','0','0','2285','506','Vengeful Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33678','0','0','2285','506','Vengeful Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33679','0','0','1435','506','Vengeful Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33680','0','0','2285','506','Vengeful Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33681','0','0','2283','506','Vengeful Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33682','0','0','1435','506','Vengeful Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33683','0','0','2285','506','Vengeful Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33684','0','0','2286','506','Vengeful Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33685','0','0','2285','506','Vengeful Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33686','0','0','2285','506','Vengeful Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33687','0','0','1670','506','Vengeful Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33688','0','0','2282','506','Vengeful Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33689','0','0','1670','506','Vengeful Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33006','0','0','2282','506','Vengeful Gladiator\'s Heavy Crossbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33947','0','0','1758','506','Vengeful Gladiator\'s Idol of Resolve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33944','0','0','1758','506','Vengeful Gladiator\'s Idol of Steadfastness');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33841','0','0','1758','506','Vengeful Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33690','0','0','2286','506','Vengeful Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33691','0','0','2285','506','Vengeful Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33692','0','0','2285','506','Vengeful Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33693','0','0','1435','506','Vengeful Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33694','0','0','2285','506','Vengeful Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33695','0','0','2285','506','Vengeful Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33696','0','0','2286','506','Vengeful Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33697','0','0','2285','506','Vengeful Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33698','0','0','2285','506','Vengeful Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33699','0','0','1435','506','Vengeful Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33700','0','0','2286','506','Vengeful Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33701','0','0','2285','506','Vengeful Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33702','0','0','2285','506','Vengeful Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33703','0','0','1435','506','Vengeful Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33704','0','0','2285','506','Vengeful Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','34016','0','0','1670','506','Vengeful Gladiator\'s Left Render');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33705','0','0','1670','506','Vengeful Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33938','0','0','1758','506','Vengeful Gladiator\'s Libram of Fortitude');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33842','0','0','1758','506','Vengeful Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33950','0','0','1758','506','Vengeful Gladiator\'s Libram of Vengeance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33706','0','0','2285','506','Vengeful Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33707','0','0','2286','506','Vengeful Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33708','0','0','2285','506','Vengeful Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33709','0','0','2285','506','Vengeful Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33710','0','0','1435','506','Vengeful Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','34529','0','0','2282','506','Vengeful Gladiator\'s Longbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33711','0','0','2285','506','Vengeful Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33712','0','0','2286','506','Vengeful Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33713','0','0','2285','506','Vengeful Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33714','0','0','2285','506','Vengeful Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33715','0','0','1435','506','Vengeful Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33717','0','0','2286','506','Vengeful Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33718','0','0','2285','506','Vengeful Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33719','0','0','2285','506','Vengeful Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33720','0','0','1435','506','Vengeful Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33721','0','0','2285','506','Vengeful Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33801','0','0','1670','506','Vengeful Gladiator\'s Mutilator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33722','0','0','2285','506','Vengeful Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33723','0','0','2286','506','Vengeful Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33724','0','0','2285','506','Vengeful Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33725','0','0','2285','506','Vengeful Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33726','0','0','1435','506','Vengeful Gladiator\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33727','0','0','2282','506','Vengeful Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','34066','0','0','1758','506','Vengeful Gladiator\'s Piercing Touch');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33728','0','0','2285','506','Vengeful Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33729','0','0','2286','506','Vengeful Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33730','0','0','2285','506','Vengeful Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33731','0','0','2285','506','Vengeful Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33732','0','0','1435','506','Vengeful Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33733','0','0','1670','506','Vengeful Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33734','0','0','1670','506','Vengeful Gladiator\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33735','0','0','1431','506','Vengeful Gladiator\'s Redoubt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33736','0','0','2283','506','Vengeful Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','34530','0','0','2282','506','Vengeful Gladiator\'s Rifle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33737','0','0','1670','506','Vengeful Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33738','0','0','2285','506','Vengeful Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33739','0','0','2286','506','Vengeful Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33740','0','0','2285','506','Vengeful Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33741','0','0','2285','506','Vengeful Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33742','0','0','1435','506','Vengeful Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33743','0','0','1670','506','Vengeful Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33744','0','0','2286','506','Vengeful Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33745','0','0','2285','506','Vengeful Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33746','0','0','2285','506','Vengeful Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33747','0','0','1435','506','Vengeful Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33748','0','0','2285','506','Vengeful Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33749','0','0','2285','506','Vengeful Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33750','0','0','2286','506','Vengeful Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33751','0','0','2285','506','Vengeful Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33752','0','0','2285','506','Vengeful Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33753','0','0','1435','506','Vengeful Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33754','0','0','1670','506','Vengeful Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33755','0','0','1431','506','Vengeful Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33756','0','0','1670','506','Vengeful Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33757','0','0','1435','506','Vengeful Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33758','0','0','2285','506','Vengeful Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33759','0','0','2286','506','Vengeful Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33760','0','0','2285','506','Vengeful Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33761','0','0','2285','506','Vengeful Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33762','0','0','1670','506','Vengeful Gladiator\'s Slicer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33763','0','0','1670','506','Vengeful Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33716','0','0','2282','506','Vengeful Gladiator\'s Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33941','0','0','1758','506','Vengeful Gladiator\'s Totem of Indomitability');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33953','0','0','1758','506','Vengeful Gladiator\'s Totem of Survival');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33843','0','0','1758','506','Vengeful Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33764','0','0','2283','506','Vengeful Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33765','0','0','1758','506','Vengeful Gladiator\'s War Edge');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33766','0','0','2282','506','Vengeful Gladiator\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','34014','0','0','2282','506','Vengeful Gladiator\'s Waraxe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33767','0','0','2286','506','Vengeful Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33768','0','0','2285','506','Vengeful Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33769','0','0','2285','506','Vengeful Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33770','0','0','1435','506','Vengeful Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('570','33771','0','0','2285','506','Vengeful Gladiator\'s Wyrmhide Tunic');


-- ----------------------------------------------------------------------
-- Arena PvP Season 3 Vendor Template - During Season 4 with 15% Discount
-- ----------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (571);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33661','0','0','2391','507','Vengeful Gladiator\'s Barrier');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34059','0','0','2388','507','Vengeful Gladiator\'s Baton of Light');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34540','0','0','2386','507','Vengeful Gladiator\'s Battle Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33662','0','0','2390','507','Vengeful Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33663','0','0','2386','507','Vengeful Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33664','0','0','2288','507','Vengeful Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33665','0','0','2387','507','Vengeful Gladiator\'s Chain Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33666','0','0','2288','507','Vengeful Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33667','0','0','2288','507','Vengeful Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33668','0','0','2288','507','Vengeful Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34015','0','0','2390','507','Vengeful Gladiator\'s Chopper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33669','0','0','2389','507','Vengeful Gladiator\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33670','0','0','2386','507','Vengeful Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33671','0','0','2387','507','Vengeful Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33672','0','0','2288','507','Vengeful Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33673','0','0','2288','507','Vengeful Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33674','0','0','2288','507','Vengeful Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33675','0','0','2288','507','Vengeful Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33676','0','0','2387','507','Vengeful Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33677','0','0','2288','507','Vengeful Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33678','0','0','2288','507','Vengeful Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33679','0','0','2288','507','Vengeful Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33680','0','0','2288','507','Vengeful Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33681','0','0','2283','507','Vengeful Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33682','0','0','2288','507','Vengeful Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33683','0','0','2288','507','Vengeful Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33684','0','0','2387','507','Vengeful Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33685','0','0','2288','507','Vengeful Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33686','0','0','2288','507','Vengeful Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33687','0','0','2385','507','Vengeful Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33688','0','0','2386','507','Vengeful Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34033','0','0','2390','507','Vengeful Gladiator\'s Grimoire');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33689','0','0','2390','507','Vengeful Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33006','0','0','2386','507','Vengeful Gladiator\'s Heavy Crossbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33947','0','0','2388','507','Vengeful Gladiator\'s Idol of Resolve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33944','0','0','2388','507','Vengeful Gladiator\'s Idol of Steadfastness');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33841','0','0','2388','507','Vengeful Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33690','0','0','2387','507','Vengeful Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33691','0','0','2288','507','Vengeful Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33692','0','0','2288','507','Vengeful Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33693','0','0','2288','507','Vengeful Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33694','0','0','2288','507','Vengeful Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33695','0','0','2288','507','Vengeful Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33696','0','0','2387','507','Vengeful Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33697','0','0','2288','507','Vengeful Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33698','0','0','2288','507','Vengeful Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33699','0','0','2288','507','Vengeful Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33700','0','0','2387','507','Vengeful Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33701','0','0','2288','507','Vengeful Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33702','0','0','2288','507','Vengeful Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33703','0','0','2288','507','Vengeful Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33704','0','0','2288','507','Vengeful Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34016','0','0','2390','507','Vengeful Gladiator\'s Left Render');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33705','0','0','2390','507','Vengeful Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33938','0','0','2388','507','Vengeful Gladiator\'s Libram of Fortitude');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33842','0','0','2388','507','Vengeful Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33950','0','0','2388','507','Vengeful Gladiator\'s Libram of Vengeance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33706','0','0','2288','507','Vengeful Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33707','0','0','2387','507','Vengeful Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33708','0','0','2288','507','Vengeful Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33709','0','0','2288','507','Vengeful Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33710','0','0','2288','507','Vengeful Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34529','0','0','2386','507','Vengeful Gladiator\'s Longbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33711','0','0','2288','507','Vengeful Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33712','0','0','2387','507','Vengeful Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33713','0','0','2288','507','Vengeful Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33714','0','0','2288','507','Vengeful Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33715','0','0','2288','507','Vengeful Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33717','0','0','2387','507','Vengeful Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33718','0','0','2288','507','Vengeful Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33719','0','0','2288','507','Vengeful Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33720','0','0','2288','507','Vengeful Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33721','0','0','2288','507','Vengeful Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33801','0','0','2390','507','Vengeful Gladiator\'s Mutilator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33722','0','0','2288','507','Vengeful Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33723','0','0','2387','507','Vengeful Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33724','0','0','2288','507','Vengeful Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33725','0','0','2288','507','Vengeful Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33726','0','0','2288','507','Vengeful Gladiator\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33727','0','0','2386','507','Vengeful Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34066','0','0','2388','507','Vengeful Gladiator\'s Piercing Touch');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33728','0','0','2288','507','Vengeful Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33729','0','0','2387','507','Vengeful Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33730','0','0','2288','507','Vengeful Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33731','0','0','2288','507','Vengeful Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33732','0','0','2288','507','Vengeful Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33733','0','0','2389','507','Vengeful Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33734','0','0','2390','507','Vengeful Gladiator\'s Quickblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33735','0','0','2391','507','Vengeful Gladiator\'s Redoubt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33736','0','0','2283','507','Vengeful Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34530','0','0','2386','507','Vengeful Gladiator\'s Rifle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33737','0','0','2389','507','Vengeful Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33738','0','0','2288','507','Vengeful Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33739','0','0','2387','507','Vengeful Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33740','0','0','2288','507','Vengeful Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33741','0','0','2288','507','Vengeful Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33742','0','0','2288','507','Vengeful Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33743','0','0','2385','507','Vengeful Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33744','0','0','2387','507','Vengeful Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33745','0','0','2288','507','Vengeful Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33746','0','0','2288','507','Vengeful Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33747','0','0','2288','507','Vengeful Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33748','0','0','2288','507','Vengeful Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33749','0','0','2288','507','Vengeful Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33750','0','0','2387','507','Vengeful Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33751','0','0','2288','507','Vengeful Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33752','0','0','2288','507','Vengeful Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33753','0','0','2288','507','Vengeful Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33754','0','0','2389','507','Vengeful Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33755','0','0','2391','507','Vengeful Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33756','0','0','2390','507','Vengeful Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33757','0','0','2288','507','Vengeful Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33758','0','0','2288','507','Vengeful Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33759','0','0','2387','507','Vengeful Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33760','0','0','2288','507','Vengeful Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33761','0','0','2288','507','Vengeful Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33762','0','0','2389','507','Vengeful Gladiator\'s Slicer');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33763','0','0','2385','507','Vengeful Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33716','0','0','2386','507','Vengeful Gladiator\'s Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33941','0','0','2388','507','Vengeful Gladiator\'s Totem of Indomitability');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33953','0','0','2388','507','Vengeful Gladiator\'s Totem of Survival');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33843','0','0','2388','507','Vengeful Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33764','0','0','2388','507','Vengeful Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33765','0','0','2388','507','Vengeful Gladiator\'s War Edge');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33766','0','0','2386','507','Vengeful Gladiator\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','34014','0','0','2388','507','Vengeful Gladiator\'s Waraxe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33767','0','0','2387','507','Vengeful Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33768','0','0','2288','507','Vengeful Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33769','0','0','2288','507','Vengeful Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33770','0','0','2288','507','Vengeful Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('571','33771','0','0','2288','507','Vengeful Gladiator\'s Wyrmhide Tunic');


-- -------------------------------------------------------------------
-- Arena PvP Season 3 Item Vendor Template - Current Season Full Price
-- -------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (572); 
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33056','0','0','129','0','Veteran\'s Band of Dominance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33064','0','0','129','0','Veteran\'s Band of Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33057','0','0','129','0','Veteran\'s Band of Triumph');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33812','0','0','2400','0','Vindicator\'s Plate Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33813','0','0','2401','0','Vindicator\'s Plate Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33876','0','0','2401','0','Vindicator\'s Chain Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33878','0','0','2400','0','Vindicator\'s Chain Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33880','0','0','2400','0','Vindicator\'s Dragonhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33881','0','0','2401','0','Vindicator\'s Dragonhide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33883','0','0','2401','0','Vindicator\'s Dreadweave Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33884','0','0','2400','0','Vindicator\'s Dreadweave Stalkers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33886','0','0','2400','0','Vindicator\'s Kodohide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33887','0','0','2401','0','Vindicator\'s Kodohide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33889','0','0','2401','0','Vindicator\'s Lamellar Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33890','0','0','2400','0','Vindicator\'s Lamellar Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33892','0','0','2400','0','Vindicator\'s Leather Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33893','0','0','2401','0','Vindicator\'s Leather Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33894','0','0','2401','0','Vindicator\'s Linked Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33896','0','0','2400','0','Vindicator\'s Linked Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33897','0','0','2401','0','Vindicator\'s Mail Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33899','0','0','2400','0','Vindicator\'s Mail Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33901','0','0','2401','0','Vindicator\'s Mooncloth Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33902','0','0','2400','0','Vindicator\'s Mooncloth Slippers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33904','0','0','2401','0','Vindicator\'s Ornamented Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33905','0','0','2400','0','Vindicator\'s Ornamented Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33906','0','0','2401','0','Vindicator\'s Ringmail Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33908','0','0','2400','0','Vindicator\'s Ringmail Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33910','0','0','2401','0','Vindicator\'s Scaled Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33911','0','0','2400','0','Vindicator\'s Scaled Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33913','0','0','2401','0','Vindicator\'s Silk Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33914','0','0','2400','0','Vindicator\'s Silk Footguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33916','0','0','2400','0','Vindicator\'s Wyrmhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33917','0','0','2401','0','Vindicator\'s Wyrmhide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33853','0','0','2028','0','Vindicator\'s Band of Dominance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33918','0','0','2028','0','Vindicator\'s Band of Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33919','0','0','2028','0','Vindicator\'s Band of Triumph');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','35320','0','0','2028','0','Vindicator\'s Band of Subjugation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','34576','0','0','2289','0','Battlemaster\'s Cruelty');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','34162','0','0','2289','0','Battlemaster\'s Depravity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','33832','0','0','2289','0','Battlemaster\'s Determination');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','34049','0','0','2289','0','Battlemaster\'s Audacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','34050','0','0','2289','0','Battlemaster\'s Perseverance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('572','35327','0','0','2289','0','Battlemaster\'s Alacrity');


-- --------------------------------------------------------------
-- Arena PvP Season 4 Vendor Template - Current Season Full Price
-- --------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (580);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34985','0','0','2339','507','Brutal Gladiator\'s Baton of Light');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34986','0','0','2364','507','Brutal Gladiator\'s Barrier');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34987','0','0','2360','507','Brutal Gladiator\'s Battle Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34988','0','0','2363','507','Brutal Gladiator\'s Bonecracker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34989','0','0','2360','507','Brutal Gladiator\'s Bonegrinder');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34990','0','0','2337','507','Brutal Gladiator\'s Chain Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34992','0','0','2365','507','Brutal Gladiator\'s Chain Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34993','0','0','2366','507','Brutal Gladiator\'s Chain Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34994','0','0','2359','507','Brutal Gladiator\'s Chain Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34995','0','0','2363','507','Brutal Gladiator\'s Chopper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34996','0','0','2362','507','Brutal Gladiator\'s Cleaver');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34997','0','0','2360','507','Brutal Gladiator\'s Decapitator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34998','0','0','2342','507','Brutal Gladiator\'s Dragonhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','34999','0','0','2365','507','Brutal Gladiator\'s Dragonhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35000','0','0','2366','507','Brutal Gladiator\'s Dragonhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35001','0','0','2359','507','Brutal Gladiator\'s Dragonhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35002','0','0','2337','507','Brutal Gladiator\'s Dragonhide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35003','0','0','2342','507','Brutal Gladiator\'s Dreadweave Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35004','0','0','2365','507','Brutal Gladiator\'s Dreadweave Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35005','0','0','2366','507','Brutal Gladiator\'s Dreadweave Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35006','0','0','2359','507','Brutal Gladiator\'s Dreadweave Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35007','0','0','2337','507','Brutal Gladiator\'s Dreadweave Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35008','0','0','2363','507','Brutal Gladiator\'s Endgame');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35009','0','0','2359','507','Brutal Gladiator\'s Felweave Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35010','0','0','2365','507','Brutal Gladiator\'s Felweave Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35011','0','0','2342','507','Brutal Gladiator\'s Felweave Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35012','0','0','2337','507','Brutal Gladiator\'s Felweave Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35013','0','0','2366','507','Brutal Gladiator\'s Felweave Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35014','0','0','2361','507','Brutal Gladiator\'s Gavel');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35015','0','0','2360','507','Brutal Gladiator\'s Greatsword');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35016','0','0','2363','507','Brutal Gladiator\'s Grimoire');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35017','0','0','2363','507','Brutal Gladiator\'s Hacker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35018','0','0','2360','507','Brutal Gladiator\'s Heavy Crossbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35019','0','0','2339','507','Brutal Gladiator\'s Idol of Resolve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35020','0','0','2339','507','Brutal Gladiator\'s Idol of Steadfastness');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35021','0','0','2339','507','Brutal Gladiator\'s Idol of Tenacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35022','0','0','2342','507','Brutal Gladiator\'s Kodohide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35023','0','0','2365','507','Brutal Gladiator\'s Kodohide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35024','0','0','2366','507','Brutal Gladiator\'s Kodohide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35025','0','0','2359','507','Brutal Gladiator\'s Kodohide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35026','0','0','2337','507','Brutal Gladiator\'s Kodohide Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35027','0','0','2337','507','Brutal Gladiator\'s Lamellar Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35028','0','0','2342','507','Brutal Gladiator\'s Lamellar Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35029','0','0','2365','507','Brutal Gladiator\'s Lamellar Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35030','0','0','2366','507','Brutal Gladiator\'s Lamellar Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35031','0','0','2359','507','Brutal Gladiator\'s Lamellar Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35032','0','0','2342','507','Brutal Gladiator\'s Leather Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35033','0','0','2365','507','Brutal Gladiator\'s Leather Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35034','0','0','2366','507','Brutal Gladiator\'s Leather Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35035','0','0','2359','507','Brutal Gladiator\'s Leather Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35036','0','0','2337','507','Brutal Gladiator\'s Leather Tunic');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35037','0','0','2363','507','Brutal Gladiator\'s Left Render');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35038','0','0','2363','507','Brutal Gladiator\'s Left Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35039','0','0','2339','507','Brutal Gladiator\'s Libram of Fortitude');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35040','0','0','2339','507','Brutal Gladiator\'s Libram of Justice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35041','0','0','2339','507','Brutal Gladiator\'s Libram of Vengeance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35042','0','0','2337','507','Brutal Gladiator\'s Linked Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35043','0','0','2342','507','Brutal Gladiator\'s Linked Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35044','0','0','2365','507','Brutal Gladiator\'s Linked Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35045','0','0','2366','507','Brutal Gladiator\'s Linked Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35046','0','0','2359','507','Brutal Gladiator\'s Linked Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35047','0','0','2360','507','Brutal Gladiator\'s Longbow');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35048','0','0','2337','507','Brutal Gladiator\'s Mail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35049','0','0','2342','507','Brutal Gladiator\'s Mail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35050','0','0','2365','507','Brutal Gladiator\'s Mail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35051','0','0','2366','507','Brutal Gladiator\'s Mail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35052','0','0','2359','507','Brutal Gladiator\'s Mail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35053','0','0','2342','507','Brutal Gladiator\'s Mooncloth Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35054','0','0','2365','507','Brutal Gladiator\'s Mooncloth Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35055','0','0','2366','507','Brutal Gladiator\'s Mooncloth Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35056','0','0','2359','507','Brutal Gladiator\'s Mooncloth Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35057','0','0','2337','507','Brutal Gladiator\'s Mooncloth Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35058','0','0','2363','507','Brutal Gladiator\'s Mutilator');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35059','0','0','2337','507','Brutal Gladiator\'s Ornamented Chestguard');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35060','0','0','2342','507','Brutal Gladiator\'s Ornamented Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35061','0','0','2365','507','Brutal Gladiator\'s Ornamented Headcover');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35062','0','0','2366','507','Brutal Gladiator\'s Ornamented Legplates');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35063','0','0','2359','507','Brutal Gladiator\'s Ornamented Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35064','0','0','2360','507','Brutal Gladiator\'s Painsaw');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35065','0','0','2339','507','Brutal Gladiator\'s Piercing Touch');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35066','0','0','2337','507','Brutal Gladiator\'s Plate Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35067','0','0','2342','507','Brutal Gladiator\'s Plate Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35068','0','0','2365','507','Brutal Gladiator\'s Plate Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35069','0','0','2366','507','Brutal Gladiator\'s Plate Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35070','0','0','2359','507','Brutal Gladiator\'s Plate Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35071','0','0','2362','507','Brutal Gladiator\'s Pummeler');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35073','0','0','2364','507','Brutal Gladiator\'s Redoubt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35074','0','0','2363','507','Brutal Gladiator\'s Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35075','0','0','2360','507','Brutal Gladiator\'s Rifle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35076','0','0','2362','507','Brutal Gladiator\'s Right Ripper');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35077','0','0','2337','507','Brutal Gladiator\'s Ringmail Armor');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35078','0','0','2342','507','Brutal Gladiator\'s Ringmail Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35079','0','0','2365','507','Brutal Gladiator\'s Ringmail Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35080','0','0','2366','507','Brutal Gladiator\'s Ringmail Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35081','0','0','2359','507','Brutal Gladiator\'s Ringmail Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35082','0','0','2361','507','Brutal Gladiator\'s Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35083','0','0','2342','507','Brutal Gladiator\'s Satin Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35084','0','0','2365','507','Brutal Gladiator\'s Satin Hood');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35085','0','0','2366','507','Brutal Gladiator\'s Satin Leggings');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35086','0','0','2359','507','Brutal Gladiator\'s Satin Mantle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35087','0','0','2337','507','Brutal Gladiator\'s Satin Robe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35088','0','0','2337','507','Brutal Gladiator\'s Scaled Chestpiece');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35089','0','0','2342','507','Brutal Gladiator\'s Scaled Gauntlets');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35090','0','0','2365','507','Brutal Gladiator\'s Scaled Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35091','0','0','2366','507','Brutal Gladiator\'s Scaled Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35092','0','0','2359','507','Brutal Gladiator\'s Scaled Shoulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35093','0','0','2362','507','Brutal Gladiator\'s Shanker');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35094','0','0','2364','507','Brutal Gladiator\'s Shield Wall');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35095','0','0','2363','507','Brutal Gladiator\'s Shiv');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35096','0','0','2359','507','Brutal Gladiator\'s Silk Amice');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35097','0','0','2365','507','Brutal Gladiator\'s Silk Cowl');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35098','0','0','2342','507','Brutal Gladiator\'s Silk Handguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35099','0','0','2337','507','Brutal Gladiator\'s Silk Raiment');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35100','0','0','2366','507','Brutal Gladiator\'s Silk Trousers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35102','0','0','2361','507','Brutal Gladiator\'s Spellblade');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35103','0','0','2360','507','Brutal Gladiator\'s Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35104','0','0','2339','507','Brutal Gladiator\'s Totem of Indomitability');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35105','0','0','2339','507','Brutal Gladiator\'s Totem of Survival');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35106','0','0','2339','507','Brutal Gladiator\'s Totem of the Third Wind');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35107','0','0','2339','507','Brutal Gladiator\'s Touch of Defeat');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35109','0','0','2360','507','Brutal Gladiator\'s War Staff');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35110','0','0','2339','507','Brutal Gladiator\'s Waraxe');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35111','0','0','2342','507','Brutal Gladiator\'s Wyrmhide Gloves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35112','0','0','2365','507','Brutal Gladiator\'s Wyrmhide Helm');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35113','0','0','2366','507','Brutal Gladiator\'s Wyrmhide Legguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35114','0','0','2359','507','Brutal Gladiator\'s Wyrmhide Spaulders');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('580','35115','0','0','2337','507','Brutal Gladiator\'s Wyrmhide Tunic');


-- -------------------------------------------------------------------
-- Arena PvP Season 4 Item Vendor Template - Current Season Full Price
-- -------------------------------------------------------------------
DELETE FROM npc_vendor_template WHERE entry IN (581);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35129','0','0','2402','0','Guardian\'s Band of Dominance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35130','0','0','2402','0','Guardian\'s Band of Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','37927','0','0','2402','0','Guardian\'s Band of Subjugation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35131','0','0','2402','0','Guardian\'s Band of Triumph');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','37928','0','0','127','0','Guardian\'s Pendant of Subjugation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','37929','0','0','127','0','Guardian\'s Pendant of Reprieve');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35132','0','0','127','0','Guardian\'s Pendant of Conquest');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35133','0','0','127','0','Guardian\'s Pendant of Dominance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35134','0','0','127','0','Guardian\'s Pendant of Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35135','0','0','127','0','Guardian\'s Pendant of Triumph');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35136','0','0','2400','0','Guardian\'s Chain Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35137','0','0','2400','0','Guardian\'s Dragonhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35138','0','0','2400','0','Guardian\'s Dreadweave Stalkers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35139','0','0','2400','0','Guardian\'s Kodohide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35140','0','0','2400','0','Guardian\'s Lamellar Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35141','0','0','2400','0','Guardian\'s Leather Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35142','0','0','2400','0','Guardian\'s Linked Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35143','0','0','2400','0','Guardian\'s Mail Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35144','0','0','2400','0','Guardian\'s Mooncloth Slippers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35145','0','0','2400','0','Guardian\'s Ornamented Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35146','0','0','2400','0','Guardian\'s Plate Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35147','0','0','2400','0','Guardian\'s Ringmail Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35148','0','0','2400','0','Guardian\'s Scaled Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35149','0','0','2400','0','Guardian\'s Silk Footguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35150','0','0','2400','0','Guardian\'s Wyrmhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35151','0','0','1923','0','Guardian\'s Chain Girdle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35152','0','0','1923','0','Guardian\'s Dragonhide Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35153','0','0','1923','0','Guardian\'s Dreadweave Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35154','0','0','1923','0','Guardian\'s Kodohide Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35155','0','0','1923','0','Guardian\'s Lamellar Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35156','0','0','1923','0','Guardian\'s Leather Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35157','0','0','1923','0','Guardian\'s Linked Girdle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35158','0','0','1923','0','Guardian\'s Mail Girdle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35159','0','0','1923','0','Guardian\'s Mooncloth Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35160','0','0','1923','0','Guardian\'s Ornamented Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35161','0','0','1923','0','Guardian\'s Plate Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35162','0','0','1923','0','Guardian\'s Ringmail Girdle');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35163','0','0','1923','0','Guardian\'s Scaled Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35164','0','0','1923','0','Guardian\'s Silk Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35165','0','0','1923','0','Guardian\'s Wyrmhide Belt');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35166','0','0','2401','0','Guardian\'s Chain Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35167','0','0','2401','0','Guardian\'s Dragonhide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35168','0','0','2401','0','Guardian\'s Dreadweave Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35169','0','0','2401','0','Guardian\'s Kodohide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35170','0','0','2401','0','Guardian\'s Lamellar Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35171','0','0','2401','0','Guardian\'s Leather Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35172','0','0','2401','0','Guardian\'s Linked Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35173','0','0','2401','0','Guardian\'s Mail Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35174','0','0','2401','0','Guardian\'s Mooncloth Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35175','0','0','2401','0','Guardian\'s Ornamented Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35176','0','0','2401','0','Guardian\'s Plate Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35177','0','0','2401','0','Guardian\'s Ringmail Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35178','0','0','2401','0','Guardian\'s Scaled Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35179','0','0','2401','0','Guardian\'s Silk Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35180','0','0','2401','0','Guardian\'s Wyrmhide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33812','0','0','2406','0','Vindicator\'s Plate Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33813','0','0','2405','0','Vindicator\'s Plate Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33876','0','0','2405','0','Vindicator\'s Chain Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33878','0','0','2406','0','Vindicator\'s Chain Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33880','0','0','2406','0','Vindicator\'s Dragonhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33881','0','0','2405','0','Vindicator\'s Dragonhide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33883','0','0','2405','0','Vindicator\'s Dreadweave Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33884','0','0','2406','0','Vindicator\'s Dreadweave Stalkers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33886','0','0','2406','0','Vindicator\'s Kodohide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33887','0','0','2405','0','Vindicator\'s Kodohide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33889','0','0','2405','0','Vindicator\'s Lamellar Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33890','0','0','2406','0','Vindicator\'s Lamellar Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33892','0','0','2406','0','Vindicator\'s Leather Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33893','0','0','2405','0','Vindicator\'s Leather Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33894','0','0','2405','0','Vindicator\'s Linked Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33896','0','0','2406','0','Vindicator\'s Linked Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33897','0','0','2405','0','Vindicator\'s Mail Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33899','0','0','2406','0','Vindicator\'s Mail Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33901','0','0','2405','0','Vindicator\'s Mooncloth Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33902','0','0','2406','0','Vindicator\'s Mooncloth Slippers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33904','0','0','2405','0','Vindicator\'s Ornamented Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33905','0','0','2406','0','Vindicator\'s Ornamented Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33906','0','0','2405','0','Vindicator\'s Ringmail Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33908','0','0','2406','0','Vindicator\'s Ringmail Sabatons');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33910','0','0','2405','0','Vindicator\'s Scaled Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33911','0','0','2406','0','Vindicator\'s Scaled Greaves');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33913','0','0','2405','0','Vindicator\'s Silk Cuffs');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33914','0','0','2406','0','Vindicator\'s Silk Footguards');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33916','0','0','2406','0','Vindicator\'s Wyrmhide Boots');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33917','0','0','2405','0','Vindicator\'s Wyrmhide Bracers');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33853','0','0','129','0','Vindicator\'s Band of Dominance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33918','0','0','129','0','Vindicator\'s Band of Salvation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35320','0','0','129','0','Vindicator\'s Band of Subjugation');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33919','0','0','129','0','Vindicator\'s Band of Triumph');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','34576','0','0','2289','0','Battlemaster\'s Cruelty');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','34162','0','0','2289','0','Battlemaster\'s Depravity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','33832','0','0','2289','0','Battlemaster\'s Determination');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','34049','0','0','2289','0','Battlemaster\'s Audacity');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','34050','0','0','2289','0','Battlemaster\'s Perseverance');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) values('581','35327','0','0','2289','0','Battlemaster\'s Alacrity');

