-- ===========================
-- Fix TBC Dungeon Loot Chests
-- ===========================

-- TBC Dungeon Chest Spawns
DELETE FROM gameobject WHERE id IN (184930,184931,184933,184932,184935,184934,184937,184936,184939,184938,184941,184940);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values

-- ----------------------------------
-- Coilfang Reservoir: The Slave Pens
-- ----------------------------------


-- --------------------------------
-- Coilfang Reservoir: The Underbog (2)
-- --------------------------------
('32632','184935','546','3','74.7062','-252.385','-4.50239','2.04204','0','0','0','0','86400','100','1'),
('13822','184937','546','3','258.718','-214.395','27.9184','5.81769','0','0','0','0','86400','100','1'),


-- ----------------------------------
-- Coilfang Reservoir: The Steamvault (5)
-- ----------------------------------
('11222','184941','545','3','-54.5296','-320.914','-7.76734','0','0','0','0','0','86400','100','1'),
('6990','184941','545','3','4.36841','-259.654','-21.6164','0','0','0','0','0','86400','100','1'),
('32710','184940','545','3','61.6757','-128.676','-22.7164','2.70526','0','0','0','0','86400','100','1'),
('32636','184940','545','3','-153.188','-275.258','-7.77509','2.89725','0','0','0','0','86400','100','1'),
('32635','184940','545','3','39.4951','-244.041','-22.8052','-2.00713','0','0','0','0','86400','100','1'),


-- -----------------------------------
-- Hellfire Citadel: Hellfire Ramparts (2)
-- -----------------------------------
('92222','184930','543','3','-1203.09','1430.39','68.5473','1.51844','0','0','0','0','86400','100','1'),
('25829','184931','543','3','-1297.5','1582.33','91.7821','0.907571','0','0','0','0','86400','100','1'),


-- -----------------------------------
-- Hellfire Citadel: The Blood Furnace (3)
-- -----------------------------------
('114000','184932','542','1','328.702','-197.719','-25.5089','2.98451','0','0','0','0','86400','100','1'),
('114001','184933','542','1','494.211','10.8752','9.54401','3.14159','0','0','0','0','86400','100','1'),
('114002','184937','542','3','498.092','3.54075','9.5534','3.24531','0','0','0','0','86400','100','1'),


-- -------------------------------------
-- Hellfire Citadel: The Shattered Halls
-- -------------------------------------


-- --------------------------
-- Tempest Keep: The Mechanar (3)
-- --------------------------
('114003','184937','554','3','143.472','179.921','25.5636','1.36442','0','0','0','0','86400','100','1'),
('114004','184941','554','3','243.344','14.1168','-0.0019269','0.50436','0','0','0','0','86400','100','1'),
('114005','184936','554','3','299.06','-46.0161','25.3949','6.1043','0','0','0','0','86400','100','1'),


-- --------------------------
-- Tempest Keep: The Botanica
-- --------------------------


-- --------------------------
-- Tempest Keep: The Arcatraz
-- --------------------------


-- ----------------------------------------
-- Caverns of Time: Old Hillsbrad Foothills
-- ----------------------------------------


-- ---------------------------------
-- Caverns of Time: The Black Morass
-- ---------------------------------


-- ----------------------
-- Auchindoun: Mana-Tombs (2)
-- ----------------------
('43140','184937','557','3','-7.03085','-221.217','1.84915','0.837758','0','0','0','0','86400','100','1'),
('43141','184934','557','3','-259.626','-187.117','-0.687503','0.593412','0','0','0','0','86400','100','1'),


-- ---------------------------
-- Auchindoun: Auchenai Crypts
-- ---------------------------


-- -------------------------
-- Auchindoun: Sethekk Halls (4)
-- -------------------------
('114006','184936','556','3','-54.9579','273.821','26.9079','2.33147','0','0','0','0','86400','100','1'),
('114007','184937','556','3','-70.5313','73.0046','0.0058196','1.75418','0','0','0','0','86400','100','1'),
('114008','184939','556','1','-238.603','341.626','27.0639','-1.64061','0','0','0','0','86400','100','1'),
('114009','184938','556','1','-271.782','188.947','0.033852','-0.244346','0','0','0','0','86400','100','1'),


-- ----------------------------
-- Auchindoun: Shadow Labyrinth (3)
-- ----------------------------
('25831','184940','555','3','-455.751','-197.417','12.6891','0.523599','0','0','0','0','86400','100','1'),
('25830','184940','555','3','-290.183','-91.233','8.07305','0.349066','0','0','0','0','86400','100','1'),
('25832','184941','555','3','-138.289','-390.706','17.0815','-2.28638','0','0','0','0','86400','100','1');


-- -----------------
-- Magisters Terrace
-- -----------------











-- Make Sure Chests Are Spawned in Heroic Dungeons Also
UPDATE gameobject SET SpawnMask=3, SpawnTimeSecs=86400 WHERE id IN (184930,184931,184933,184932,184935,184934,184937,184936,184939,184938,184941,184940);


-- ---------------------------------------------------------------
-- Solid Fel Iron Chest and Bound Fel Iron Chests - 21260 Loot Id
-- ---------------------------------------------------------------
UPDATE gameobject_template SET data1=21260, MinGold=50000, MaxGold=54000 WHERE entry IN (184930,184931,184933,184932,184935,184934);
DELETE FROM gameobject_loot_template WHERE entry IN (21260);
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values
('21260','42000','100','0','-42000','1','0','Solid Fel Iron and Bound Fel Iron Chests - Potions and Scrolls'),
('21260','42001','10','0','-42001','1','0','Solid Fel Iron and Bound Fel Iron Chests - Gems'),
('21260','42002','100','0','-42002','1','0','Solid Fel Iron and Bound Fel Iron Chests - Green and Blue Items');


-- ------------------------------------------------------------
-- Solid Adamantite and Bound Adamantite Chests - 21280 Loot Id
-- ------------------------------------------------------------
UPDATE gameobject_template SET data1=21280, MinGold=54000, MaxGold=58000 WHERE entry IN (184937,184936,184939,184938);
DELETE FROM gameobject_loot_template WHERE entry IN (21280);
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values
('21280','42003','100','0','-42003','1','0','Solid Adamantite Chest and Bound Adamantite Chests - Potions and Scrolls'),
('21280','42004','15','0','-42004','1','0','Solid Adamantite Chest and Bound Adamantite Chests - Gems'),
('21280','42005','100','0','-42005','1','0','Solid Adamantite Chest and Bound Adamantite Chests - Green and Blue Items');


-- ----------------------------------------------------------------------
-- Solid Adamantite and Bound Adamantite Chests (Special) - 21261 Loot Id
-- ----------------------------------------------------------------------
UPDATE gameobject_template SET data1=21261, MinGold=54000, MaxGold=58000 WHERE entry IN (184941,184940);
DELETE FROM gameobject_loot_template WHERE entry IN (21261);
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values
('21261','42006','100','0','-42006','1','0','Solid Adamantite and Bound Adamantite Chests (Special) - Potions and Scrolls'),
('21261','42007','15','0','-42007','1','0','Solid Adamantite and Bound Adamantite Chests (Special) - Gems'),
('21261','42008','100','0','-42008','1','0','Solid Adamantite and Bound Adamantite Chests (Special) - Green and Blue Items');


DELETE FROM gameobject_loot_template WHERE entry IN (21278,21279,21281); -- Old Solid Adamantite and Bound Adamantite Chest Loot Entries (Now Unused)


-- =========================
-- Fix TBC World Loot Chests
-- =========================

-- -----------------------
-- Fel Iron Chest (181798) - 18 Total - (Old Loot ID 9933 Used By Another Low Level Chest)
-- -----------------------
UPDATE gameobject_template SET data1=181798 WHERE entry IN (181798);
DELETE FROM gameobject_loot_template WHERE entry IN (181798);
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values
('181798','8766','39','0','1','3','0','Morning Glory Dew'),
('181798','8950','24','0','1','2','0','Homemade Cherry Pie'),
('181798','8948','19','0','1','2','0','Dried King Bolete'),
('181798','6149','14','0','2','3','0','Greater Mana Potion'),
('181798','3928','12','0','2','3','0','Superior Healing Potion'),
('181798','8932','10','0','1','2','0','Alterac Swiss'),
('181798','3827','9','0','2','3','0','Mana Potion'),
('181798','3858','8','0','2','3','0','Mithril Ore'),
('181798','8952','8','0','1','2','0','Roasted Quail'),
('181798','1710','5','0','2','4','0','Greater Healing Potion'),
('181798','8953','4','0','1','2','0','Deep Fried Plantains'),
('181798','13463','4','0','1','1','0','Dreamfoil'),
('181798','4235','4','0','1','1','0','Heavy Hide'),
('181798','8839','2','0','1','1','0','Blindweed'),
('181798','13464','2','0','1','1','0','Golden Sansam'),
('181798','2772','2','0','2','3','0','Iron Ore'),
('181798','50008','40','0','-50008','1','0','NPC LOOT (World Drop) - (Level: 36-40 Grey) - (Item Levels: 41-45) - NPC Levels 40-49'),
('181798','50216','10','0','-50216','1','0','NPC LOOT (World Drop) - (Level: 37-38 Green) - (Item Levels: 42-43) - NPC Levels 39-44'),
('181798','50311','1','0','-50311','1','0','NPC LOOT (World Drop) - (Level: 37-38 Blue) - (Item Levels: 42-43) - NPC Levels 39-44');


-- -----------------------------
-- Heavy Fel Iron Chest (181800) - 32 Total - (Old Loot ID 22342)
-- -----------------------------
UPDATE gameobject_template SET data1=181800 WHERE entry IN (181800);
DELETE FROM gameobject_loot_template WHERE entry IN (181800,22342);
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values
('181800','18300','43','0','1','3','0','Hyjal Nectar'),
('181800','22829','30','0','2','3','0','Super Healing Potion'),
('181800','22832','30','0','2','6','0','Super Mana Potion'),
('181800','27855','23','0','1','2','0','Mag\'har Grainbread'),
('181800','27856','20','0','1','2','0','Skethyl Berries'),
('181800','27857','19','0','1','2','0','Garadar Sharp'),
('181800','27854','14','0','1','2','0','Smoked Talbuk Venison'),
('181800','30458','14','0','1','2','0','Stromgarde Muenster'),
('181800','25649','12','0','2','3','0','Knothide Leather Scraps'),
('181800','27859','10','0','1','2','0','Zangar Caps'),
('181800','21840','7','0','1','1','0','Bolt of Netherweave'),
('181800','22789','5','0','1','2','0','Terocone'),
('181800','23425','4','0','1','3','0','Adamantite Ore'),
('181800','23426','4','0','1','3','0','Khorium Ore'),
('181800','21877','4','0','2','4','0','Netherweave Cloth'),
('181800','22786','3','0','1','2','0','Dreaming Glory'),
('181800','23793','2','0','1','1','0','Heavy Knothide Leather'),
('181800','22792','2','0','1','3','0','Nightmare Vine'),
('181800','50011','40','0','-50011','1','0','NPC LOOT (World Drop) - (Level: 51-55 Grey) - (Item Levels: 56-60) - NPC Levels 55-64'),
('181800','50223','10','0','-50223','1','0','NPC LOOT (World Drop) - (Level: 51-52 Green) - (Item Levels: 56-57) - NPC Levels 53-58 (CLASSIC NPC ONLY)'),
('181800','50317','1','0','-50317','1','0','NPC LOOT (World Drop) - (Level: 49-50 Blue) - (Item Levels: 54-55) - NPC Levels 51-56');


-- -------------------------------
-- Adamantite Bound Chest (181802) - 29 Total - (Old Loot ID 22342)
-- -------------------------------
UPDATE gameobject_template SET data1=181802 WHERE entry IN (181802);
DELETE FROM gameobject_loot_template WHERE entry IN (181802,22342);
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values
('181802','18300','41','0','1','4','0','Hyjal Nectar'),
('181802','22829','30','0','2','3','0','Super Healing Potion'),
('181802','22832','30','0','2','6','0','Super Mana Potion'),
('181802','27856','23','0','1','2','0','Skethyl Berries'),
('181802','27857','20','0','1','2','0','Garadar Sharp'),
('181802','27859','20','0','1','2','0','Zangar Caps'),
('181802','27854','18','0','1','2','0','Smoked Talbuk Venison'),
('181802','27855','16','0','1','2','0','Mag\'har Grainbread'),
('181802','30458','14','0','1','2','0','Stromgarde Muenster'),
('181802','25649','9','0','2','3','0','Knothide Leather Scraps'),
('181802','21840','5','0','1','1','0','Bolt of Netherweave'),
('181802','22791','3','0','2','3','0','Netherbloom'),
('181802','23427','2','0','1','3','0','Eternium Ore'),
('181802','23445','2','0','1','2','0','Fel Iron Bar'),
('181802','23424','2','0','1','3','0','Fel Iron Ore'),
('181802','21877','2','0','2','4','0','Netherweave Cloth'),
('181802','22786','2','0','1','3','0','Dreaming Glory'),
('181802','22787','2','0','1','3','0','Ragveil'),
('181802','50011','40','0','-50011','1','0','NPC LOOT (World Drop) - (Level: 51-55 Grey) - (Item Levels: 56-60) - NPC Levels 55-64'),
('181802','50223','10','0','-50223','1','0','NPC LOOT (World Drop) - (Level: 51-52 Green) - (Item Levels: 56-57) - NPC Levels 53-58 (CLASSIC NPC ONLY)'),
('181802','50317','1','0','-50317','1','0','NPC LOOT (World Drop) - (Level: 49-50 Blue) - (Item Levels: 54-55) - NPC Levels 51-56');


-- -----------------------
-- Felsteel Chest (181804) - 9 Total - (Old Loot ID 22984) - Loot Seemed Same As Other Chest
-- -----------------------
UPDATE gameobject_template SET data1=181802 WHERE entry IN (181804);
DELETE FROM gameobject_loot_template WHERE entry IN (22984);


-- -----------------------------
-- Pool Chest Spawns in Outlands
-- -----------------------------
DELETE FROM pool_template WHERE entry IN (14000,14001,14002,14003);
insert into `pool_template` (`entry`, `max_limit`, `description`) values('14000','5','Outlands - Fel Iron Chests');
insert into `pool_template` (`entry`, `max_limit`, `description`) values('14001','5','Outlands - Heavy Fel Iron Chests');
insert into `pool_template` (`entry`, `max_limit`, `description`) values('14002','5','Outlands - Adamantite Bound Chests');
insert into `pool_template` (`entry`, `max_limit`, `description`) values('14003','1','Outlands - Felsteel Chests');

DELETE FROM pool_gameobject_template WHERE id IN (181798,181800,181802,181804);
insert into `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) values('181798','14000','0','Fel Iron Chest (181798)');
insert into `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) values('181800','14001','0','Heavy Fel Iron Chest (181800)');
insert into `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) values('181802','14002','0','Adamantite Bound Chest (181802)');
insert into `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) values('181804','14003','0','Felsteel Chest (181804)');





















