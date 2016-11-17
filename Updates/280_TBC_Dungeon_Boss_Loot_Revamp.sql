-- ===============================================================================================================
-- ================                TBC Dungeon Boss Loot Fixes - Normal and Heroic                ================ 
-- ===============================================================================================================

-- THESE FIXES USE DATA FROM COMMIT FILE: 121_Loot_and_Referenced_Loot_Fixes

-- ==================================
-- Coilfang Reservoir: The Slave Pens
-- ==================================
-- Mennu the Betrayer - Normal
DELETE FROM creature_loot_template WHERE entry=17941;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17941','29674','5','0','1','1','199','Pattern: Nature Armor Kit');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17941','40000','100','0','-40000','1','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Mennu the Betrayer (Normal) - Rare Items');

-- Mennu the Betrayer - Heroic
DELETE FROM creature_loot_template WHERE entry=19893;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19893','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19893','40007','15','0','-40007','1','0','Coilfang Reservoir: The Slave Pens Heroic Epic Gems');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19893','29674','5','0','1','1','199','Pattern: Nature Armor Kit');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19893','40001','100','0','-40001','1','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Mennu the Betrayer (Heroic) - Rare Items');

-- Rokmar the Crackler - Normal
DELETE FROM creature_loot_template WHERE entry=17991;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17991','40002','100','0','-40002','1','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Rokmar the Crackler (Normal) - Rare Items');

-- Rokmar the Crackler - Heroic
DELETE FROM creature_loot_template WHERE entry=19895;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19895','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19895','40007','15','0','-40007','1','0','Coilfang Reservoir: The Slave Pens Heroic Epic Gems');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19895','40003','100','0','-40003','1','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Rokmar the Crackler (Heroic) - Rare Items');

-- Quagmirran - Normal
DELETE FROM creature_loot_template WHERE entry=17942;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17942','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17942','40004','100','0','-40004','1','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Quagmirran (Normal) - Rare Items');

-- Quagmirran - Heroic
DELETE FROM creature_loot_template WHERE entry=19894;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19894','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19894','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19894','33821','-100','0','1','1','0','The Heart of Quagmirran');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19894','40007','30','0','-40007','1','0','Coilfang Reservoir: The Slave Pens Heroic Epic Gems');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19894','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19894','40005','100','0','-40005','2','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Quagmirran (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19894','40006','100','0','-40006','1','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Quagmirran (Heroic) - Epic Items');



-- ================================
-- Coilfang Reservoir: The Underbog
-- ================================
-- Hungarfen - Normal
DELETE FROM creature_loot_template WHERE entry=17770;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17770','40010','100','0','-40010','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - Hungarfen (Normal) - Rare Items');

-- Hungarfen - Heroic
DELETE FROM creature_loot_template WHERE entry=20169;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20169','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20169','40011','100','0','-40011','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - Hungarfen (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20169','40019','15','0','-40019','1','0','Coilfang Reservoir: The Underbog Heroic Epic Gems');

-- Ghaz'an - Normal
DELETE FROM creature_loot_template WHERE entry=18105;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18105','40012','100','0','-40012','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - Ghaz\'an (Normal) - Rare Items');

-- Ghaz'an - Heroic
DELETE FROM creature_loot_template WHERE entry=20168;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20168','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20168','40013','100','0','-40013','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - Ghaz\'an (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20168','40019','15','0','-40019','1','0','Coilfang Reservoir: The Underbog Heroic Epic Gems');

-- Swamplord Musel'ek - Normal
DELETE FROM creature_loot_template WHERE entry=17826;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17826','40014','100','0','-40014','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - Swamplord Musel\'ek (Normal) - Rare Items');

-- Swamplord Musel'ek - Heroic
DELETE FROM creature_loot_template WHERE entry=20183;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20183','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20183','40015','100','0','-40015','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - Swamplord Musel\'ek (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20183','40019','15','0','-40019','1','0','Coilfang Reservoir: The Underbog Heroic Epic Gems');

-- The Black Stalker - Normal
DELETE FROM creature_loot_template WHERE entry=17882;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17882','24248','-100','0','1','1','0','Brain of the Black Stalker');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17882','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17882','40016','100','0','-40016','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - The Black Stalker (Normal) - Rare Items');

-- The Black Stalker - Heroic
DELETE FROM creature_loot_template WHERE entry=20184;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20184','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20184','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20184','24248','-100','0','1','1','0','Brain of the Black Stalker');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20184','33826','-100','0','1','1','0','Black Stalker Egg');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20184','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20184','40017','100','0','-40017','2','0','Coilfang Reservoir: The Underbog (Boss Loot) - The Black Stalker (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20184','40018','100','0','-40018','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - The Black Stalker (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20184','40019','30','0','-40019','1','0','Coilfang Reservoir: The Underbog Heroic Epic Gems');



-- ==================================
-- Coilfang Reservoir: The Steamvault
-- ==================================
-- Hydromancer Thespia - Normal
DELETE FROM creature_loot_template WHERE entry=17797;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17797','30828','-100','0','1','1','0','Vial of Underworld Loam');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17797','29673','5','0','1','1','199','Pattern: Frost Armor Kit');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17797','40020','100','0','-40020','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Hydromancer Thespia (Normal and Heroic) - Rare Items');

-- Hydromancer Thespia - Heroic
DELETE FROM creature_loot_template WHERE entry=20629;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20629','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20629','30828','-100','0','1','1','0','Vial of Underworld Loam');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20629','29673','5','0','1','1','199','Pattern: Frost Armor Kit');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20629','40020','100','0','-40020','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Hydromancer Thespia (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20629','40024','15','0','-40024','1','0','Coilfang Reservoir: The Steamvault Heroic Epic Gems');

-- Mekgineer Steamrigger - Normal
DELETE FROM creature_loot_template WHERE entry=17796;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17796','23887','5','0','1','1','202','Schematic: Rocket Boots Xtreme');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17796','40021','100','0','-40021','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Mekgineer Steamrigger (Normal and Heroic) - Rare Items');

-- Mekgineer Steamrigger - Heroic
DELETE FROM creature_loot_template WHERE entry=20630;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20630','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20630','23887','5','0','1','1','202','Schematic: Rocket Boots Xtreme');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20630','40021','100','0','-40021','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Mekgineer Steamrigger (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20630','40024','15','0','-40024','1','0','Coilfang Reservoir: The Steamvault Heroic Epic Gems');

-- Warlord Kalithresh - Normal
DELETE FROM creature_loot_template WHERE entry=17798;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17798','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17798','24313','5','0','1','1','201','Pattern: Battlecast Hood');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17798','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17798','40022','100','0','-40022','2','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Normal and Heroic) - Rare Items');

-- Warlord Kalithresh - Heroic
DELETE FROM creature_loot_template WHERE entry=20633;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','33827','-100','0','1','1','0','The Warlord\'s Treatise');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','31721','-100','0','1','1','0','Kalithresh\'s Trident');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','24313','5','0','1','1','201','Pattern: Battlecast Hood');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','40022','100','0','-40022','2','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','40023','100','0','-40023','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20633','40024','30','0','-40024','1','0','Coilfang Reservoir: The Steamvault Heroic Epic Gems');



-- ===================================
-- Hellfire Citadel: Hellfire Ramparts
-- ===================================
-- Watchkeeper Gargolmar - Normal
DELETE FROM creature_loot_template WHERE entry=17306;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17306','23881','-100','0','1','1','0','Gargolmar\'s Hand');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17306','40030','100','0','-40030','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Watchkeeper Gargolmar (Normal) - Rare Items');

-- Watchkeeper Gargolmar - Heroic
DELETE FROM creature_loot_template WHERE entry=18436;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18436','23881','-100','0','1','1','0','Gargolmar\'s Hand');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18436','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18436','40031','100','0','-40031','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Watchkeeper Gargolmar (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18436','40037','15','0','-40037','1','0','Hellfire Citadel: Hellfire Ramparts Heroic Epic Gems');

-- Omor the Unscarred - Normal
DELETE FROM creature_loot_template WHERE entry=17308;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17308','23886','-100','0','1','1','0','Omor\'s Hoof');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17308','40032','100','0','-40032','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Omor the Unscarred (Normal) - Rare Items');

-- Omor the Unscarred - Heroic
DELETE FROM creature_loot_template WHERE entry=18433;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18433','23886','-100','0','1','1','0','Omor\'s Hoof');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18433','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18433','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18433','49000','10','0','-49000','1','0','Darkmoon Cards - Ace Card');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18433','40033','100','0','-40033','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Omor the Unscarred (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18433','40037','15','0','-40037','1','0','Hellfire Citadel: Hellfire Ramparts Heroic Epic Gems');

-- Vazruden and Nazan (Reinforced Fel Iron Chest) - Normal
DELETE FROM gameobject_loot_template WHERE entry=21762;
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21762','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21762','40034','100','0','-40034','2','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Normal) - Rare Items');

-- Vazruden and Nazan (Reinforced Fel Iron Chest) - Heroic
DELETE FROM gameobject_loot_template WHERE entry=21764;
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21764','29434','100','0','1','1','0','Badge of Justice');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21764','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21764','40035','100','0','-40035','2','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Heroic) - Rare Items');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21764','40036','100','0','-40036','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Heroic) - Epic Items');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21764','40037','30','0','-40037','1','0','Hellfire Citadel: Hellfire Ramparts Heroic Epic Gems');



-- ===================================
-- Hellfire Citadel: The Blood Furnace
-- ===================================
-- The Maker - Normal
DELETE FROM creature_loot_template WHERE entry=17381;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17381','23894','-100','0','1','1','0','Fel Orc Blood Vial');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17381','40040','100','0','-40040','1','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - The Maker (Normal) - Rare Items');

-- The Maker - Heroic
DELETE FROM creature_loot_template WHERE entry=18621;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18621','23894','-100','0','1','1','0','Fel Orc Blood Vial');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18621','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18621','40041','100','0','-40041','1','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - The Maker (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18621','40047','15','0','-40047','1','0','Hellfire Citadel: The Blood Furnace Heroic Epic Gems');

-- Broggok - Normal
DELETE FROM creature_loot_template WHERE entry=17380;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17380','40042','100','0','-40042','1','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - Broggok (Normal) - Rare Items');

-- Broggok - Heroic
DELETE FROM creature_loot_template WHERE entry=18601;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18601','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18601','40043','100','0','-40043','1','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - Broggok (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18601','40047','15','0','-40047','1','0','Hellfire Citadel: The Blood Furnace Heroic Epic Gems');

-- Keli'dan the Breaker - Normal
DELETE FROM creature_loot_template WHERE entry=17377;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17377','23894','-100','0','1','1','0','Fel Orc Blood Vial');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17377','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17377','40044','100','0','-40044','1','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - Keli\'dan the Breaker (Normal) - Rare Items');

-- Keli'dan the Breaker - Heroic
DELETE FROM creature_loot_template WHERE entry=18607;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18607','23894','-100','0','1','1','0','Fel Orc Blood Vial');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18607','33814','-100','0','1','1','0','Keli\'dan\'s Feathered Stave');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18607','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18607','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18607','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18607','40045','100','0','-40045','2','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - Keli\'dan the Breaker (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18607','40046','100','0','-40046','1','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - Keli\'dan the Breaker (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18607','40047','30','0','-40047','1','0','Hellfire Citadel: The Blood Furnace Heroic Epic Gems');



-- =====================================
-- Hellfire Citadel: The Shattered Halls
-- =====================================
-- Grand Warlock Nethekurse - Normal
DELETE FROM creature_loot_template WHERE entry=16807;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16807','23735','-100','0','1','1','0','Grand Warlock\'s Amulet');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16807','21525','10','0','1','1','238','Green Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16807','24312','5','0','1','1','0','Pattern: Spellstrike Hood');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16807','40050','100','0','-40050','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Grand Warlock Nethekurse (Normal and Heroic) - Rare Items');

-- Grand Warlock Nethekurse - Heroic
DELETE FROM creature_loot_template WHERE entry=20568;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20568','23735','-100','0','1','1','0','Grand Warlock\'s Amulet');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20568','25462','-100','0','1','1','0','Tome of Dusk');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20568','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20568','21525','10','0','1','1','238','Green Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20568','24312','5','0','1','1','201','Pattern: Spellstrike Hood');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20568','40050','100','0','-40050','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Grand Warlock Nethekurse (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20568','40055','15','0','-40055','1','0','Hellfire Citadel: The Shattered Halls Heroic Epic Gems');

-- Blood Guard Porung - Heroic
DELETE FROM creature_loot_template WHERE entry=20923;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20923','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20923','40051','100','0','-40051','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Blood Guard Porung (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20923','40055','15','0','-40055','1','0','Hellfire Citadel: The Shattered Halls Heroic Epic Gems');

-- Warbringer O'mrogg - Normal
DELETE FROM creature_loot_template WHERE entry=16809;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16809','30829','-100','0','1','1','0','Tear of the Earthmother');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16809','40052','100','0','-40052','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warbringer O\'mrogg (Normal and Heroic) - Rare Items');

-- Warbringer O'mrogg - Heroic
DELETE FROM creature_loot_template WHERE entry=20596;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20596','30829','-100','0','1','1','0','Tear of the Earthmother');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20596','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20596','40052','100','0','-40052','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warbringer O\'mrogg (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20596','40055','15','0','-40055','1','0','Hellfire Citadel: The Shattered Halls Heroic Epic Gems');

-- Warchief Kargath Bladefist - Normal
DELETE FROM creature_loot_template WHERE entry=16808;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16808','23723','-100','0','1','1','0','Warchief Kargath\'s Fist');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16808','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16808','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('16808','40053','100','0','-40053','2','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Normal and Heroic) - Rare Items');

-- Warchief Kargath Bladefist - Heroic
DELETE FROM creature_loot_template WHERE entry=20597;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20597','23723','-100','0','1','1','0','Warchief Kargath\'s Fist');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20597','33815','-100','0','1','1','0','Bladefist\'s Seal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20597','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20597','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20597','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20597','40053','100','0','-40053','2','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20597','40054','100','0','-40054','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20597','40055','30','0','-40055','1','0','Hellfire Citadel: The Shattered Halls Heroic Epic Gems');



-- ==========================
-- Tempest Keep: The Mechanar
-- ==========================
-- Gatewatcher Gyro-Kill - Normal
DELETE FROM creature_loot_template WHERE entry=19218;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19218','30436','100','0','1','1','0','Jagged Blue Crystal');

-- Gatewatcher Gyro-Kill - Heroic
DELETE FROM creature_loot_template WHERE entry=21525;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21525','30436','100','0','1','1','0','Jagged Blue Crystal');

-- Gatewatcher Iron-Hand - Normal
DELETE FROM creature_loot_template WHERE entry=19710;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19710','30437','100','0','1','1','0','Jagged Red Crystal');

-- Gatewatcher Iron-Hand - Heroic
DELETE FROM creature_loot_template WHERE entry=21526;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21526','30437','100','0','1','1','0','Jagged Red Crystal');

-- Mechano-Lord Capacitus - Normal
DELETE FROM creature_loot_template WHERE entry=19219;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19219','35582','5','0','1','1','202','Schematic: Rocket Boots Xtreme Lite');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19219','40060','100','0','-40060','1','0','Tempest Keep: The Mechanar (Boss Loot) - Mechano-Lord Capacitus (Normal and Heroic) - Rare Items');

-- Mechano-Lord Capacitus - Heroic
DELETE FROM creature_loot_template WHERE entry=21533;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21533','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21533','35582','5','0','1','1','202','Schematic: Rocket Boots Xtreme Lite');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21533','40060','100','0','-40060','1','0','Tempest Keep: The Mechanar (Boss Loot) - Mechano-Lord Capacitus (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21533','40064','15','0','-40064','1','0','Tempest Keep: The Mechanar Heroic Epic Gems');

-- Nethermancer Sepethrea - Normal
DELETE FROM creature_loot_template WHERE entry=19221;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19221','21524','10','0','1','1','238','Red Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19221','22920','5','0','1','1','209','Recipe: Major Fire Protection Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19221','40061','100','0','-40061','1','0','Tempest Keep: The Mechanar (Boss Loot) - Nethermancer Sepethrea (Normal and Heroic) - Rare Items');

-- Nethermancer Sepethrea - Heroic
DELETE FROM creature_loot_template WHERE entry=21536;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21536','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21536','21524','10','0','1','1','238','Red Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21536','22920','5','0','1','1','209','Recipe: Major Fire Protection Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21536','40061','100','0','-40061','1','0','Tempest Keep: The Mechanar (Boss Loot) - Nethermancer Sepethrea (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21536','40064','15','0','-40064','1','0','Tempest Keep: The Mechanar Heroic Epic Gems');

-- Pathaleon the Calculator - Normal
DELETE FROM creature_loot_template WHERE entry=19220;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19220','31086','-100','0','1','1','0','Bottom Shard of the Arcatraz Key');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19220','21907','5','0','1','1','201','Pattern: Arcanoweave Robe');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19220','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19220','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards - All');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19220','40062','100','0','-40062','2','0','Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Normal and Heroic) - Rare Items');

-- Pathaleon the Calculator - Heroic
DELETE FROM creature_loot_template WHERE entry=21537;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','31086','-100','0','1','1','0','Bottom Shard of the Arcatraz Key');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','33860','-100','0','1','1','0','Pathaleon\'s Projector');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','21910','5','0','1','1','201','Pattern: Spellfire Robe');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards - All');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','40062','100','0','-40062','2','0','Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','40063','100','0','-40063','1','0','Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21537','40064','30','0','-40064','1','0','Tempest Keep: The Mechanar Heroic Epic Gems');



-- ==========================
-- Tempest Keep: The Botanica
-- ==========================
-- Commander Sarannis - Normal
DELETE FROM creature_loot_template WHERE entry=17976;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17976','28769','-100','0','1','1','0','The Keystone');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17976','40070','100','0','-40070','1','0','Tempest Keep: The Botanica (Boss Loot) - Commander Sarannis (Normal and Heroic) - Rare Items');

-- Commander Sarannis - Heroic
DELETE FROM creature_loot_template WHERE entry=21551;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21551','28769','-100','0','1','1','0','The Keystone');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21551','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21551','40070','100','0','-40070','1','0','Tempest Keep: The Botanica (Boss Loot) - Commander Sarannis (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21551','40076','15','0','-40076','1','0','Tempest Keep: The Botanica Heroic Epic Gems');

-- High Botanist Freywinn - Normal
DELETE FROM creature_loot_template WHERE entry=17975;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17975','31744','-100','0','1','1','0','Botanist\'s Field Guide');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17975','23617','5','0','1','1','198','Plans: Earthpeace Breastplate');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17975','21524','10','0','1','1','238','Red Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17975','40071','100','0','-40071','1','0','Tempest Keep: The Botanica (Boss Loot) - High Botanist Freywinn (Normal and Heroic) - Rare Items');

-- High Botanist Freywinn - Heroic
DELETE FROM creature_loot_template WHERE entry=21558;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21558','31744','-100','0','1','1','0','Botanist\'s Field Guide');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21558','23617','5','0','1','1','198','Plans: Earthpeace Breastplate');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21558','21524','10','0','1','1','238','Red Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21558','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21558','40071','100','0','-40071','1','0','Tempest Keep: The Botanica (Boss Loot) - High Botanist Freywinn (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21558','40076','15','0','-40076','1','0','Tempest Keep: The Botanica Heroic Epic Gems');

-- Thorngrin the Tender - Normal
DELETE FROM creature_loot_template WHERE entry=17978;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17978','24310','5','0','1','1','201','Pattern: Battlecast Pants');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17978','40072','100','1','-40072','1','0','Tempest Keep: The Botanica (Boss Loot) - Thorngrin the Tender (Normal and Heroic) - Rare Items');

-- Thorngrin the Tender - Heroic
DELETE FROM creature_loot_template WHERE entry=21581;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21581','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21581','24310','5','0','1','1','201','Pattern: Battlecast Pants');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21581','40072','100','0','-40072','1','0','Tempest Keep: The Botanica (Boss Loot) - Thorngrin the Tender (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21581','40076','15','0','-40076','1','0','Tempest Keep: The Botanica Heroic Epic Gems');

-- Laj - Normal
DELETE FROM creature_loot_template WHERE entry=17980;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17980','40073','100','1','-40073','1','0','Tempest Keep: The Botanica (Boss Loot) - Laj (Normal and Heroic) - Rare Items');

-- Laj - Heroic
DELETE FROM creature_loot_template WHERE entry=21559;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21559','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21559','40073','100','0','-40073','1','0','Tempest Keep: The Botanica (Boss Loot) - Laj (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21559','40076','15','0','-40076','1','0','Tempest Keep: The Botanica Heroic Epic Gems');

-- Warp Splinter - Normal
DELETE FROM creature_loot_template WHERE entry=17977;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17977','31085','-100','0','1','1','0','Top Shard of the Arcatraz Key');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17977','24311','5','0','1','1','201','Pattern: Whitemend Hood');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17977','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17977','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17977','40074','100','0','-40074','2','0','Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Normal and Heroic) - Rare Items');

-- Warp Splinter - Heroic
DELETE FROM creature_loot_template WHERE entry=21582;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','33859','-100','0','1','1','0','Warp Splinter Clipping');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','31085','-100','0','1','1','0','Top Shard of the Arcatraz Key');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','24311','5','0','1','1','201','Pattern: Whitemend Hood');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','40074','100','0','-40074','2','0','Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','40075','100','0','-40075','1','0','Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21582','40076','30','0','-40076','1','0','Tempest Keep: The Botanica Heroic Epic Gems');



-- ==========================
-- Tempest Keep: The Arcatraz
-- ==========================
-- Zereketh the Unbound - Normal
DELETE FROM creature_loot_template WHERE entry=20870;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20870','40080','100','0','-40080','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Zereketh the Unbound (Normal and Heroic) - Rare Items');

-- Zereketh the Unbound - Heroic
DELETE FROM creature_loot_template WHERE entry=21626;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21626','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21626','40080','100','0','-40080','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Zereketh the Unbound (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21626','40085','15','0','-40085','1','0','Tempest Keep: The Arcatraz Heroic Epic Gems');

-- Wrath-Scryer Soccothrates - Normal
DELETE FROM creature_loot_template WHERE entry=20886;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20886','40081','100','0','-40081','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Wrath-Scryer Soccothrates (Normal and Heroic) - Rare Items');

-- Wrath-Scryer Soccothrates - Heroic
DELETE FROM creature_loot_template WHERE entry=21624;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21624','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21624','40081','100','0','-40081','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Wrath-Scryer Soccothrates (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21624','40085','15','0','-40085','1','0','Tempest Keep: The Arcatraz Heroic Epic Gems');

-- Dalliah the Doomsayer - Normal
DELETE FROM creature_loot_template WHERE entry=20885;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20885','24308','5','0','1','1','201','Pattern: Whitemend Pants');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20885','40082','100','0','-40082','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Dalliah the Doomsayer (Normal and Heroic) - Rare Items');

-- Dalliah the Doomsayer - Heroic
DELETE FROM creature_loot_template WHERE entry=21590;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21590','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21590','24308','5','0','1','1','201','Pattern: Whitemend Pants');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21590','40082','100','0','-40082','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Dalliah the Doomsayer (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21590','40085','15','0','-40085','1','0','Tempest Keep: The Arcatraz Heroic Epic Gems');

-- Harbinger Skyriss - Normal
DELETE FROM creature_loot_template WHERE entry=20912;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20912','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20912','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards - All');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20912','40083','100','0','-40083','2','0','Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Normal and Heroic) - Rare Items');

-- Harbinger Skyriss - Heroic
DELETE FROM creature_loot_template WHERE entry=21599;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21599','33861','-100','0','1','1','0','The Scroll of Skyriss');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21599','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21599','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21599','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards - All');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21599','40083','100','0','-40083','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21599','40084','100','0','-40084','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('21599','40085','30','0','-40085','1','0','Tempest Keep: The Arcatraz Heroic Epic Gems');



-- ========================================
-- Caverns of Time: Old Hillsbrad Foothills
-- ========================================
-- Lieutenant Drake - Normal
DELETE FROM creature_loot_template WHERE entry=17848;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17848','40090','100','0','-40090','1','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Lieutenant Drake (Normal) - Rare Items');

-- Lieutenant Drake - Heroic
DELETE FROM creature_loot_template WHERE entry=20535;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20535','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20535','40091','100','0','-40091','1','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Lieutenant Drake (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20535','40097','15','0','-40097','1','0','Caverns of Time: Old Hillsbrad Foothills Heroic Epic Gems');

-- Captain Skarloc - Normal
DELETE FROM creature_loot_template WHERE entry=17862;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17862','21524','10','0','1','1','238','Red Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17862','22927','5','0','1','1','209','Recipe: Ironshield Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17862','40092','100','0','-40092','1','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Captain Skarloc (Normal) - Rare Items');

-- Captain Skarloc - Heroic
DELETE FROM creature_loot_template WHERE entry=20521;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20521','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20521','21524','10','0','1','1','238','Red Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20521','22927','5','0','1','1','209','Recipe: Ironshield Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20521','40093','100','0','-40093','1','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Captain Skarloc (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20521','40097','15','0','-40097','1','0','Caverns of Time: Old Hillsbrad Foothills Heroic Epic Gems');

-- Epoch Hunter - Normal
DELETE FROM creature_loot_template WHERE entry=18096;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18096','24173','5','0','1','1','204','Design: Circlet of Arcane Might');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18096','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18096','40094','100','0','-40094','1','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Epoch Hunter (Normal) - Rare Items');

-- Epoch Hunter - Heroic
DELETE FROM creature_loot_template WHERE entry=20531;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20531','33847','-100','0','1','1','0','Epoch Hunter\'s Head');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20531','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20531','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20531','24173','5','0','1','1','204','Design: Circlet of Arcane Might');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20531','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20531','40095','100','0','-40095','2','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Epoch Hunter (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20531','40096','100','0','-40096','1','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Epoch Hunter (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20531','40097','30','0','-40097','1','0','Caverns of Time: Old Hillsbrad Foothills Heroic Epic Gems');



-- =================================
-- Caverns of Time: The Black Morass
-- =================================
-- Chrono Lord Deja - Normal
DELETE FROM creature_loot_template WHERE entry=17879;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17879','29675','5','0','1','1','199','Pattern: Arcane Armor Kit');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17879','40100','100','0','-40100','1','0','Caverns of Time: The Black Morass (Boss Loot) - Chrono Lord Deja (Normal and Heroic) - Rare Items');

-- Chrono Lord Deja - Heroic
DELETE FROM creature_loot_template WHERE entry=20738;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20738','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20738','29675','5','0','1','1','199','Pattern: Arcane Armor Kit');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20738','40100','100','0','-40100','1','0','Caverns of Time: The Black Morass (Boss Loot) - Chrono Lord Deja (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20738','40104','15','0','-40104','1','0','Caverns of Time: The Black Morass Heroic Epic Gems');

-- Temporus - Normal
DELETE FROM creature_loot_template WHERE entry=17880;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17880','40101','100','0','-40101','1','0','Caverns of Time: The Black Morass (Boss Loot) - Temporus (Normal and Heroic) - Rare Items');

-- Temporus - Heroic
DELETE FROM creature_loot_template WHERE entry=20745;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20745','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20745','40101','100','0','-40101','1','0','Caverns of Time: The Black Morass (Boss Loot) - Temporus (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20745','40104','15','0','-40104','1','0','Caverns of Time: The Black Morass Heroic Epic Gems');

-- Aeonus - Normal
DELETE FROM creature_loot_template WHERE entry=17881;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17881','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17881','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards - All');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('17881','40102','100','0','-40102','2','0','Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Normal and Heroic) - Rare Items');

-- Aeonus - Heroic
DELETE FROM creature_loot_template WHERE entry=20737;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20737','33858','-100','0','1','1','0','Aeonus\'s Hourglass');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20737','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20737','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20737','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards - All');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20737','40102','100','0','-40102','2','0','Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20737','40103','100','0','-40103','1','0','Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20737','40104','30','0','-40104','1','0','Caverns of Time: The Black Morass Heroic Epic Gems');



-- ======================
-- Auchindoun: Mana-Tombs
-- ======================
-- Pandemonius - Normal
DELETE FROM creature_loot_template WHERE entry=18341;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18341','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18341','40110','100','0','-40110','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Pandemonius (Normal) - Rare Items');

-- Pandemonius - Heroic
DELETE FROM creature_loot_template WHERE entry=20267;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20267','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20267','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20267','40111','100','0','-40111','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Pandemonius (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20267','40118','15','0','-40118','1','0','Auchindoun: Mana-Tombs Heroic Epic Gems');

-- Tavarok - Normal
DELETE FROM creature_loot_template WHERE entry=18343;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18343','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18343','40112','100','0','-40112','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Tavarok (Normal) - Rare Items');

-- Tavarok - Heroic
DELETE FROM creature_loot_template WHERE entry=20268;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20268','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20268','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20268','40113','100','0','-40113','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Tavarok (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20268','40118','15','0','-40118','1','0','Auchindoun: Mana-Tombs Heroic Epic Gems');

-- Yor - Heroic
DELETE FROM creature_loot_template WHERE entry=22930;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('22930','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('22930','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('22930','40114','100','0','-40114','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Yor (Heroic) - Rare and Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('22930','40118','15','0','-40118','1','0','Auchindoun: Mana-Tombs Heroic Epic Gems');

-- Nexus-Prince Shaffar - Normal
DELETE FROM creature_loot_template WHERE entry=18344;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18344','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18344','22921','5','0','1','1','209','Recipe: Major Frost Protection Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18344','28490','-100','0','1','1','0','Shaffar\'s Wrappings');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18344','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18344','40115','100','0','-40115','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Nexus-Prince Shaffar (Normal) - Rare Items');

-- Nexus-Prince Shaffar - Heroic
DELETE FROM creature_loot_template WHERE entry=20266;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','28490','-100','0','1','1','0','Shaffar\'s Wrappings');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','33835','-100','0','1','1','0','Shaffar\'s Wondrous Amulet');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','22921','5','0','1','1','209','Recipe: Major Frost Protection Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','40116','100','0','-40116','2','0','Auchindoun: Mana-Tombs (Boss Loot) - Nexus-Prince Shaffar (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','40117','100','0','-40117','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Nexus-Prince Shaffar (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20266','40118','30','0','-40118','1','0','Auchindoun: Mana-Tombs Heroic Epic Gems');



-- ===========================
-- Auchindoun: Auchenai Crypts
-- ===========================
-- Shirrak the Dead Watcher - Normal
DELETE FROM creature_loot_template WHERE entry=18371;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18371','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18371','40120','100','0','-40120','1','0','Auchindoun: Auchenai Crypts (Boss Loot) - Shirrak the Dead Watcher (Normal) - Rare Items');

-- Shirrak the Dead Watcher - Heroic
DELETE FROM creature_loot_template WHERE entry=20318;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20318','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20318','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20318','40121','100','0','-40121','1','0','Auchindoun: Auchenai Crypts (Boss Loot) - Shirrak the Dead Watcher (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20318','40125','15','0','-40125','1','0','Auchindoun: Auchenai Crypts Heroic Epic Gems');

-- Exarch Maladaar - Normal
DELETE FROM creature_loot_template WHERE entry=18373;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18373','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18373','21525','10','0','1','1','238','Green Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18373','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18373','40122','100','0','-40122','1','0','Auchindoun: Auchenai Crypts (Boss Loot) - Exarch Maladaar (Normal) - Rare Items');

-- Exarch Maladaar - Heroic
DELETE FROM creature_loot_template WHERE entry=20306;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','28558','100','0','1','1','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','21525','10','0','1','1','238','Green Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','33836','-100','0','1','1','0','The Exarch\'s Soul Gem');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','40123','100','0','-40123','1','0','Auchindoun: Auchenai Crypts (Boss Loot) - Exarch Maladaar (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','40124','100','0','-40124','1','0','Auchindoun: Auchenai Crypts (Boss Loot) - Exarch Maladaar (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20306','40125','30','0','-40125','1','0','Auchindoun: Auchenai Crypts Heroic Epic Gems');



-- =========================
-- Auchindoun: Sethekk Halls
-- =========================
-- Darkweaver Syth - Normal
DELETE FROM creature_loot_template WHERE entry=18472;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18472','28558','100','0','2','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18472','27633','-100','0','1','1','0','Terokk\'s Mask');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18472','24160','5','0','1','1','204','Design: Khorium Inferno Band');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18472','40130','100','0','-40130','1','0','Auchindoun: Sethekk Halls (Boss Loot) - Darkweaver Syth (Normal and Heroic) - Rare Items');

-- Darkweaver Syth - Heroic
DELETE FROM creature_loot_template WHERE entry=20690;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20690','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20690','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20690','25461','-100','0','1','1','0','Book of Forgotten Names');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20690','27633','-100','0','1','1','0','Terokk\'s Mask');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20690','24160','5','0','1','1','204','Design: Khorium Inferno Band');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20690','40130','100','0','-40130','1','0','Auchindoun: Sethekk Halls (Boss Loot) - Darkweaver Syth (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20690','40134','15','0','-40134','1','0','Auchindoun: Sethekk Halls Heroic Epic Gems');

-- Anzu - Heroic
DELETE FROM creature_loot_template WHERE entry=23035;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('23035','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('23035','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('23035','32768','0.9342','0','1','1','0','Reins of the Raven Lord');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('23035','40131','100','0','-40131','1','0','Auchindoun: Sethekk Halls (Boss Loot) - Anzu (Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('23035','40134','15','0','-40134','1','0','Auchindoun: Sethekk Halls Heroic Epic Gems');

-- Talon King Ikiss - Normal
DELETE FROM creature_loot_template WHERE entry=18473;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18473','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18473','27632','-100','0','1','1','0','Terokk\'s Quill');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18473','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18473','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18473','40132','100','0','-40132','2','0','Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Normal and Heroic) - Rare Items');

-- Talon King Ikiss - Heroic
DELETE FROM creature_loot_template WHERE entry=20706;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','27632','-100','0','1','1','0','Terokk\'s Quill');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','33834','-100','0','1','1','0','The Headfeathers of Ikiss');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','40132','100','0','-40132','2','0','Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','40133','100','0','-40133','1','0','Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20706','40134','30','0','-40134','1','0','Auchindoun: Sethekk Halls Heroic Epic Gems');



-- ============================
-- Auchindoun: Shadow Labyrinth
-- ============================
-- Ambassador Hellmaw - Normal
DELETE FROM creature_loot_template WHERE entry=18731;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18731','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18731','30809','11','0','1','1','0','Mark of Sargeras');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18731','40140','100','0','-40140','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Ambassador Hellmaw (Normal and Heroic) - Rare Items');

-- Ambassador Hellmaw - Heroic
DELETE FROM creature_loot_template WHERE entry=20636;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20636','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20636','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20636','30809','11','0','1','1','0','Mark of Sargeras');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20636','40140','100','0','-40140','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Ambassador Hellmaw (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20636','40145','15','0','-40145','1','0','Auchindoun: Shadow Labyrinth Heroic Epic Gems');

-- Blackheart the Inciter - Normal
DELETE FROM creature_loot_template WHERE entry=18667;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18667','30808','-100','0','1','1','0','Book of Fel Names');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18667','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18667','30809','11','0','1','1','0','Mark of Sargeras');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18667','25728','5','0','1','1','199','Pattern: Stylin\' Purple Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18667','40141','100','0','-40141','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Blackheart the Inciter (Normal and Heroic) - Rare Items');

-- Blackheart the Inciter - Heroic
DELETE FROM creature_loot_template WHERE entry=20637;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20637','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20637','30808','-100','0','1','1','0','Book of Fel Names');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20637','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20637','30809','11','0','1','1','0','Mark of Sargeras');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20637','25728','5','0','1','1','199','Pattern: Stylin\' Purple Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20637','40141','100','0','-40141','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Blackheart the Inciter (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20637','40145','15','0','-40145','1','0','Auchindoun: Shadow Labyrinth Heroic Epic Gems');

-- Grandmaster Vorpil - Normal
DELETE FROM creature_loot_template WHERE entry=18732;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18732','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18732','30827','-100','0','1','1','0','Lexicon Demonica');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18732','21525','10','0','1','1','238','Green Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18732','30809','10','0','1','1','0','Mark of Sargeras');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18732','40142','100','0','-40142','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Grandmaster Vorpil (Normal and Heroic) - Rare Items');

-- Grandmaster Vorpil - Heroic
DELETE FROM creature_loot_template WHERE entry=20653;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20653','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20653','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20653','30827','-100','0','1','1','0','Lexicon Demonica');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20653','30809','10','0','1','1','0','Mark of Sargeras');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20653','21525','10','0','1','1','238','Green Winter Hat');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20653','40142','100','0','-40142','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Grandmaster Vorpil (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20653','40145','15','0','-40145','1','0','Auchindoun: Shadow Labyrinth Heroic Epic Gems');

-- Murmur - Normal
DELETE FROM creature_loot_template WHERE entry=18708;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18708','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18708','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18708','24309','5','0','1','1','201','Pattern: Spellstrike Pants');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18708','49000','1','0','-49000','1','0','Darkmoon Cards - Ace Cards - All');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18708','40143','100','0','-40143','2','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Normal and Heroic) - Rare Items');

-- Murmur - Heroic
DELETE FROM creature_loot_template WHERE entry=20657;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','28558','100','0','1','2','206','Spirit Shard');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','33840','-100','0','1','1','0','Murmur\'s Whisper');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','31722','-100','0','1','1','0','Murmur\'s Essence');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','24309','5','0','1','1','201','Pattern: Spellstrike Pants');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards - All');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','40143','100','0','-40143','2','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Normal and Heroic) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','40144','100','0','-40144','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20657','40145','30','0','-40145','1','0','Auchindoun: Shadow Labyrinth Heroic Epic Gems');



-- =================
-- Magisters Terrace
-- =================
-- Selin Fireheart - Normal
DELETE FROM creature_loot_template WHERE entry=24723;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24723','40150','100','0','-40150','1','0','Magisters Terrace (Boss Loot) - Selin Fireheart (Normal) - Rare Items');

-- Selin Fireheart - Heroic
DELETE FROM creature_loot_template WHERE entry=25562;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25562','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25562','35516','2','0','1','1','497','Sun Touched Satchel');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25562','35275','2','0','1','1','0','Orb of the Sin\'dorei');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25562','40151','100','0','-40151','1','0','Magisters Terrace (Boss Loot) - Selin Fireheart (Heroic) - Epic Items');

-- Vexallus - Normal
DELETE FROM creature_loot_template WHERE entry=24744;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24744','35516','2','0','1','1','497','Sun Touched Satchel');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24744','40152','100','0','-40152','1','0','Magisters Terrace (Boss Loot) - Vexallus (Normal) - Rare Items');

-- Vexallus - Heroic
DELETE FROM creature_loot_template WHERE entry=25573;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25573','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25573','35516','2','0','1','1','497','Sun Touched Satchel');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25573','35275','2','0','1','1','0','Orb of the Sin\'dorei');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25573','40153','100','0','-40153','1','0','Magisters Terrace (Boss Loot) - Vexallus (Heroic) - Epic Items');

-- Priestess Delrissa - Normal
DELETE FROM creature_loot_template WHERE entry=24560;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24560','35756','20','0','1','1','203','Formula: Enchant Cloak - Greater Dodge');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24560','40154','100','0','-40154','1','0','Magisters Terrace (Boss Loot) - Priestess Delrissa (Normal) - Rare Items');

-- Priestess Delrissa - Heroic
DELETE FROM creature_loot_template WHERE entry=25560;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25560','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25560','35516','2','0','1','1','497','Sun Touched Satchel');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25560','35275','2','0','1','1','0','Orb of the Sin\'dorei');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25560','35756','20','0','1','1','203','Formula: Enchant Cloak - Greater Dodge');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('25560','40155','100','0','-40155','1','0','Magisters Terrace (Boss Loot) - Priestess Delrissa (Heroic) - Epic Items');

-- Kael'thas Sunstrider - Normal
DELETE FROM creature_loot_template WHERE entry=24664;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24664','34157','-100','0','1','1','0','Head of Kael\'thas');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24664','23572','5','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24664','35516','8','0','1','1','497','Sun Touched Satchel');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24664','35504','8','0','1','1','0','Phoenix Hatchling');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24664','40156','100','0','-40156','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Normal) - Rare Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24664','40157','100','0','-40157','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Normal) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24664','40159','5','0','-40159','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider - BoP Recipes');

-- Kael'thas Sunstrider - Heroic
DELETE FROM creature_loot_template WHERE entry=24857;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','34157','-100','0','1','1','0','Head of Kael\'thas');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','34160','-100','0','1','1','0','The Signet Ring of Prince Kael\'thas');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','29434','100','0','1','1','0','Badge of Justice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','23572','100','0','1','1','0','Primal Nether');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','35516','8','0','1','1','497','Sun Touched Satchel');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','35275','3','0','1','1','0','Orb of the Sin\'dorei');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','35504','8','0','1','1','0','Phoenix Hatchling');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','35513','4','0','1','1','0','Swift White Hawkstrider');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','40158','100','0','-40158','2','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Heroic) - Epic Items');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('24857','40159','5','0','-40159','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider - BoP Recipes');




























