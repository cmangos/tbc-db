-- ========================================================================================
-- ================                TBC Raid Boss Loot Fixes                ================ 
-- ========================================================================================

-- ========
-- Karazhan - Servant Quarters
-- ========
-- Rokad the Ravager
DELETE FROM creature_loot_template WHERE entry=16181;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16181','25418','65','0','2','4','0','Razor Sharp Fang'),
('16181','25421','14','0','2','4','0','Gnarled Claw'),
('16181','40200','100','0','-40200','1','0','Karazhan (Boss Loot) - Rokad the Ravager - Epic Items');

-- Shadikith the Glider
DELETE FROM creature_loot_template WHERE entry=16180;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16180','11403','38','0','1','1','0','Large Bat Fang'),
('16180','11404','43','0','1','1','0','Evil Bat Eye'),
('16180','40201','100','0','-40201','1','0','Karazhan (Boss Loot) - Shadikith the Glider - Epic Items');

-- Hyakiss the Lurker
DELETE FROM creature_loot_template WHERE entry=16179;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16179','21881','28','0','1','1','0','Netherweb Spider Silk'),
('16179','40202','100','0','-40202','1','0','Karazhan (Boss Loot) - Hyakiss the Lurker - Epic Items');



-- ========
-- Karazhan - Opera Event
-- ========
-- Dorothee - NO LOOT
-- Tito - NO LOOT
-- Strawman - NO LOOT
-- Tinhead - NO LOOT
-- Roar - NO LOOT

-- The Big Bad Wolf
DELETE FROM creature_loot_template WHERE entry=17521;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('17521','29434','100','0','2','2','0','Badge of Justice'),
('17521','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('17521','40210','100','0','-40210','1','0','Karazhan (Boss Loot) - The Big Bad Wolf - Epic Items'),
('17521','40209','100','0','-40209','1','0','Karazhan (Boss Loot) - All Opera Event Bosses - Epic Items');

-- Julianne
DELETE FROM creature_loot_template WHERE entry=17534;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('17534','29434','100','0','1','1','0','Badge of Justice'),
('17534','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('17534','40211','100','0','-40211','1','0','Karazhan (Boss Loot) - Julianne - Epic Items');

-- Romulo
DELETE FROM creature_loot_template WHERE entry=17533;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('17533','29434','100','0','1','1','0','Badge of Justice'),
('17533','40209','100','0','-40209','1','0','Karazhan (Boss Loot) - All Opera Event Bosses - Epic Items');

-- The Crone
DELETE FROM creature_loot_template WHERE entry=18168;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('18168','29434','100','0','2','2','0','Badge of Justice'),
('18168','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('18168','40212','100','0','-40212','1','0','Karazhan (Boss Loot) - The Crone - Epic Items'),
('18168','40209','100','0','-40209','1','0','Karazhan (Boss Loot) - All Opera Event Bosses - Epic Items');



-- ========
-- Karazhan - Chess Event
-- ========
-- Dust Covered Chest
DELETE FROM gameobject_loot_template WHERE entry=20712;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20712','29434','100','0','2','2','0','Badge of Justice'),
('20712','40223','100','0','-40223','1','0','Karazhan (Boss Loot) - Dust Covered Chest (Chess Event) - Epic Items (Group 1)'),
('20712','40224','100','0','-40224','1','0','Karazhan (Boss Loot) - Dust Covered Chest (Chess Event) - Epic Items (Group 2)');



-- ========
-- Karazhan - Individual Bosses
-- ========
-- Attumen the Huntsman
DELETE FROM creature_loot_template WHERE entry=16152;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16152','29434','100','0','1','1','0','Badge of Justice'),
('16152','30480','0.2','0','1','1','0','Fiery Warhorse\'s Reins'),
('16152','23809','0.5','0','1','1','202','Schematic: Stabilized Eternium Scope'),
('16152','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('16152','40203','100','0','-40203','1','0','Karazhan (Boss Loot) - Attumen the Huntsman - Epic Items (Group 1)'),
('16152','40204','100','0','-40204','1','0','Karazhan (Boss Loot) - Attumen the Huntsman - Epic Items (Group 2)');

-- Moroes
DELETE FROM creature_loot_template WHERE entry=15687;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15687','29434','100','0','2','2','0','Badge of Justice'),
('15687','22559','0.5','0','1','1','203','Formula: Enchant Weapon - Mongoose'),
('15687','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('15687','40205','100','0','-40205','1','0','Karazhan (Boss Loot) - Moroes - Epic Items (Group 1)'),
('15687','40206','100','0','-40206','1','0','Karazhan (Boss Loot) - Moroes - Epic Items (Group 2)');

-- Maiden of Virtue
DELETE FROM creature_loot_template WHERE entry=16457;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16457','29434','100','0','2','2','0','Badge of Justice'),
('16457','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('16457','40207','100','0','-40207','1','0','Karazhan (Boss Loot) - Maiden of Virtue - Epic Items (Group 1)'),
('16457','40208','100','0','-40208','1','0','Karazhan (Boss Loot) - Maiden of Virtue - Epic Items (Group 2)');

-- The Curator
DELETE FROM creature_loot_template WHERE entry=15691;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15691','29434','100','0','2','2','0','Badge of Justice'),
('15691','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('15691','40213','100','0','-40213','1','0','Karazhan (Boss Loot) - The Curator - Epic Items - (Tokens Only)'),
('15691','40214','100','0','-40214','1','0','Karazhan (Boss Loot) - The Curator - Epic Items - (Non-Tokens Only)');

-- Terestian Illhoof
DELETE FROM creature_loot_template WHERE entry=15688;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15688','29434','100','0','2','2','0','Badge of Justice'),
('15688','22561','0.5','0','1','1','203','Formula: Enchant Weapon - Soulfrost'),
('15688','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('15688','40215','100','0','-40215','1','0','Karazhan (Boss Loot) - Terestian Illhoof - Epic Items (Group 1)'),
('15688','40216','100','0','-40216','1','0','Karazhan (Boss Loot) - Terestian Illhoof - Epic Items (Group 2)');

-- Shade of Aran
DELETE FROM creature_loot_template WHERE entry=16524;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16524','29434','100','0','2','2','0','Badge of Justice'),
('16524','22560','0.5','0','1','1','203','Formula: Enchant Weapon - Sunfire'),
('16524','23933','-100','0','1','1','0','Medivh\'s Journal'),
('16524','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('16524','40217','100','0','-40217','1','0','Karazhan (Boss Loot) - Shade of Aran - Epic Items (Group 1)'),
('16524','40218','100','0','-40218','1','0','Karazhan (Boss Loot) - Shade of Aran - Epic Items (Group 2)');

-- Netherspite
DELETE FROM creature_loot_template WHERE entry=15689;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15689','29434','100','0','2','2','0','Badge of Justice'),
('15689','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('15689','40219','100','0','-40219','1','0','Karazhan (Boss Loot) - Netherspite - Epic Items (Group 1)'),
('15689','40220','100','0','-40220','1','0','Karazhan (Boss Loot) - Netherspite - Epic Items (Group 2)');

-- Nightbane
DELETE FROM creature_loot_template WHERE entry=17225;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('17225','29434','100','0','2','2','0','Badge of Justice'),
('17225','24139','-100','0','1','1','0','Faint Arcane Essence'),
('17225','31751','-100','0','1','1','0','Blazing Signet'),
('17225','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('17225','40221','100','0','-40221','1','0','Karazhan (Boss Loot) - Nightbane - Epic Items (Group 1)'),
('17225','40222','100','0','-40222','1','0','Karazhan (Boss Loot) - Nightbane - Epic Items (Group 2)');

-- Prince Malchezaar
DELETE FROM creature_loot_template WHERE entry=15690;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15690','29434','100','0','3','3','0','Badge of Justice'),
('15690','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('15690','40225','100','0','-40225','1','0','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Tokens Only)'),
('15690','40226','100','0','-40226','1','0','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Group 1) - (Non-Tokens Only)'),
('15690','40227','100','0','-40227','1','0','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Group 2) - (Non-Tokens Only)');



-- ===================================
-- Gruul's Lair (25-Man)
-- ===================================
-- High King Maulgar 18831
DELETE FROM creature_loot_template WHERE entry=18831;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('18831','21877','18','0','2','3','0','Netherweave Cloth'),
('18831','27854','3','0','1','2','0','Smoked Talbuk Venison'),
('18831','27860','1.4','0','1','1','0','Purified Draenic Water'),
('18831','22829','1.1','0','1','1','0','Super Healing Potion'),
('18831','22832','0.4','0','1','1','0','Super Mana Potion'),
('18831','31952','0.4','0','1','1','0','Khorium Lockbox'),
('18831','29434','100','0','2','2','0','Badge of Justice'),
('18831','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('18831','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('18831','40300','100','0','-40300','3','0','Gruul\'s Lair (Boss Loot) - High King Maulgar - Epic Items (Tokens Only)'),
('18831','40301','100','0','-40301','1','0','Gruul\'s Lair (Boss Loot) - High King Maulgar - Epic Items (Non-Tokens Only)');


-- Gruul the Dragonkiller 19044
DELETE FROM creature_loot_template WHERE entry=19044;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('19044','21877','18','0','2','3','0','Netherweave Cloth'),
('19044','27854','3','0','1','2','0','Smoked Talbuk Venison'),
('19044','27860','1.4','0','1','1','0','Purified Draenic Water'),
('19044','22829','1.1','0','1','1','0','Super Healing Potion'),
('19044','22832','0.4','0','1','1','0','Super Mana Potion'),
('19044','31952','0.4','0','1','1','0','Khorium Lockbox'),
('19044','29434','100','0','3','3','0','Badge of Justice'),
('19044','31750','-100','0','1','1','0','Earthen Signet'),
('19044','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('19044','61130','7','0','-61130','1','0','NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('19044','40302','100','0','-40302','3','0','Gruul\'s Lair (Boss Loot) - Gruul the Dragonkiller - Epic Items (Tokens Only)'),
('19044','40303','100','0','-40303','1','0','Gruul\'s Lair (Boss Loot) - Gruul the Dragonkiller - Epic Items (Group 1) - (Non-Tokens Only)'),
('19044','40304','100','0','-40304','1','0','Gruul\'s Lair (Boss Loot) - Gruul the Dragonkiller - Epic Items (Group 2) - (Non-Tokens Only)');



-- ===================================
-- Magtheridon's Lair (25-Man)
-- ===================================
-- Magtheridon 17257
DELETE FROM creature_loot_template WHERE entry=17257;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('17257','34845','100','0','1','1','0','Pit Lord\'s Satchel'),
('17257','34846','100','0','1','1','0','Black Sack of Gems'),
('17257','29434','100','0','3','3','0','Badge of Justice'),
('17257','32385','100','0','1','1','4','Magtheridon\'s Head'),
('17257','32386','100','0','1','1','3','Magtheridon\'s Head'),
('17257','40400','100','0','-40400','3','0','Magtheridon\'s Lair (Boss Loot) - Magtheridon - Epic Items (Tokens Only)'),
('17257','40401','100','0','-40401','1','0','Magtheridon\'s Lair (Boss Loot) - Magtheridon - Epic Items (Group 1) - (Non-Tokens Only)'),
('17257','40402','100','0','-40402','1','0','Magtheridon\'s Lair (Boss Loot) - Magtheridon - Epic Items (Group 2) - (Non-Tokens Only)');



-- ===================================
-- Serpentshrine Cavern (25-Man)
-- ===================================



-- ===================================
-- Tempest Keep (25-Man)
-- ===================================



-- ===================================
-- Hyjal Summit (25-Man)
-- ===================================

-- Rage Winterchill 17767
DELETE FROM creature_loot_template WHERE entry=17767;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17767, 32459, -100, 0, 1, 1, 0, 'Time-Phased Phylactery'),
(17767, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(17767, 36106, 2, 1, -36106, 1, 0, 'Hyjal (Boss Loot) - Epic Gem Jewelcrafting Design'),
(17767, 36101, 100, 1, -36101, 1, 0, 'Hyjal (Boss Loot) - Rage Winterchill - Epic Items (Group 1)'),
(17767, 2, 100, 2, -36101, 1, 0, 'Hyjal (Boss Loot) - Rage Winterchill - Epic Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (34064,36101);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36101, 30861, 0, 2, 1, 1, 0, 'Furious Shackles'),
(36101, 30862, 0, 2, 1, 1, 0, 'Blessed Adamantite Bracers'),
(36101, 30863, 0, 2, 1, 1, 0, 'Deadly Cuffs'),
(36101, 30864, 0, 2, 1, 1, 0, 'Bracers of the Pathfinder'),
(36101, 30865, 0, 2, 1, 1, 0, 'Tracker\'s Blade'),
(36101, 30866, 0, 2, 1, 1, 0, 'Blood-stained Pauldrons'),
(36101, 30868, 0, 1, 1, 1, 0, 'Rejuvenating Bracers'),
(36101, 30869, 0, 1, 1, 1, 0, 'Howling Wind Bracers'),
(36101, 30870, 0, 1, 1, 1, 0, 'Cuffs of Devastation'),
(36101, 30871, 0, 1, 1, 1, 0, 'Bracers of Martyrdom'),
(36101, 30872, 0, 1, 1, 1, 0, 'Chronicle of Dark Secrets'),
(36101, 30873, 0, 1, 1, 1, 0, 'Stillwater Boots');

-- Anetheron 17808
DELETE FROM creature_loot_template WHERE entry=17808;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17808, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(17808, 36106, 2, 1, -36106, 1, 0, 'Hyjal (Boss Loot) - Epic Gem Jewelcrafting Design'),
(17808, 36102, 100, 1, -36102, 1, 0, 'Hyjal (Boss Loot) - Anetheron - Epic Items (Group 1)'),
(17808, 2, 100, 2, -36102, 1, 0, 'Hyjal (Boss Loot) - Anetheron - Epic Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (34065,36102);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36102, 30874, 0, 1, 1, 1, 0, 'The Unbreakable Will'),
(36102, 30878, 0, 2, 1, 1, 0, 'Glimmering Steel Mantle'),
(36102, 30879, 0, 2, 1, 1, 0, 'Don Alejandro\'s Money Belt'),
(36102, 30880, 0, 2, 1, 1, 0, 'Quickstrider Moccasins'),
(36102, 30881, 0, 2, 1, 1, 0, 'Blade of Infamy'),
(36102, 30882, 0, 2, 1, 1, 0, 'Bastion of Light'),
(36102, 30883, 0, 1, 1, 1, 0, 'Pillar of Ferocity'),
(36102, 30884, 0, 1, 1, 1, 0, 'Hatefury Mantle'),
(36102, 30885, 0, 1, 1, 1, 0, 'Archbishop\'s Slippers'),
(36102, 30886, 0, 2, 1, 1, 0, 'Enchanted Leather Sandals'),
(36102, 30887, 0, 1, 1, 1, 0, 'Golden Links of Restoration'),
(36102, 30888, 0, 1, 1, 1, 0, 'Anetheron\'s Noose');

-- Kaz'rogal 17888
DELETE FROM creature_loot_template WHERE entry=17888;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17888, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(17888, 36106, 2, 1, -36106, 1, 0, 'Hyjal (Boss Loot) - Epic Gem Jewelcrafting Design'),
(17888, 36103, 100, 1, -36103, 1, 0, 'Hyjal (Boss Loot) - Kaz\'rogal - Epic Items (Group 1)'),
(17888, 2, 100, 2, -36103, 1, 0, 'Hyjal (Boss Loot) - Kaz\'rogal - Epic Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (34066,36103);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36103, 30889, 0, 2, 1, 1, 0, 'Kaz\'rogal\'s Hardened Heart'),
(36103, 30891, 0, 2, 1, 1, 0, 'Black Featherlight Boots'),
(36103, 30892, 0, 2, 1, 1, 0, 'Beast-tamer\'s Shoulders'),
(36103, 30893, 0, 1, 1, 1, 0, 'Sun-touched Chain Leggings'),
(36103, 30894, 0, 1, 1, 1, 0, 'Blue Suede Shoes'),
(36103, 30895, 0, 2, 1, 1, 0, 'Angelista\'s Sash'),
(36103, 30914, 0, 1, 1, 1, 0, 'Belt of the Crescent Moon'),
(36103, 30915, 0, 2, 1, 1, 0, 'Belt of Seething Fury'),
(36103, 30916, 0, 1, 1, 1, 0, 'Leggings of Channeled Elements'),
(36103, 30917, 0, 1, 1, 1, 0, 'Razorfury Mantle'),
(36103, 30918, 0, 1, 1, 1, 0, 'Hammer of Atonement'),
(36103, 30919, 0, 2, 1, 1, 0, 'Valestalker Girdle');

-- Azgalor 17842
DELETE FROM creature_loot_template WHERE entry=17842;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17842, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(17842, 36106, 2, 1, -36106, 1, 0, 'Hyjal (Boss Loot) - Epic Gem Jewelcrafting Design'),
(17842, 36104, 100, 1, -36104, 1, 0, 'Hyjal (Boss Loot) - Azgalor - Epic Items'),
(17842, 36108, 100, 2, -36108, 3, 0, 'Hyjal (Boss Loot) - Azgalor - Epic Items (Tokens Only)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (34067,36104,36108);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36104, 30896, 0, 1, 1, 1, 0, 'Glory of the Defender'),
(36104, 30897, 0, 1, 1, 1, 0, 'Girdle of Hope'),
(36104, 30898, 0, 1, 1, 1, 0, 'Shady Dealer\'s Pantaloons'),
(36104, 30899, 0, 1, 1, 1, 0, 'Don Rodrigo\'s Poncho'),
(36104, 30900, 0, 1, 1, 1, 0, 'Bow-stitched Leggings'),
(36104, 30901, 0, 1, 1, 1, 0, 'Boundless Agony'),
(36108, 31092, 0, 2, 1, 1, 0, 'Gloves of the Forgotten Conqueror'),
(36108, 31093, 0, 2, 1, 1, 0, 'Gloves of the Forgotten Vanquisher'),
(36108, 31094, 0, 2, 1, 1, 0, 'Gloves of the Forgotten Protector');

-- Archimonde 17968
DELETE FROM creature_loot_template WHERE entry=17968;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17968, 29434, 100, 0, 3, 3, 0, 'Badge of Justice'),
(17968, 36106, 4, 1, -36106, 1, 0, 'Hyjal (Boss Loot) - Epic Gem Jewelcrafting Design'),
(17968, 36105, 100, 1, -36105, 1, 0, 'Hyjal (Boss Loot) - Archimonde - Epic Items (Group 1)'),
(17968, 2, 100, 2, -36105, 1, 0, 'Hyjal (Boss Loot) - Archimonde - Epic Items (Group 2)'),
(17968, 36107, 100, 1, -36107, 3, 0, 'Hyjal (Boss Loot) - Archimonde - Epic Items (Tokens Only)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (34068,36105,36107);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36105, 30902, 0, 1, 1, 1, 0, 'Cataclysm\'s Edge'),
(36105, 30903, 0, 1, 1, 1, 0, 'Legguards of Endless Rage'),
(36105, 30904, 0, 1, 1, 1, 0, 'Savior\'s Grasp'),
(36105, 30905, 0, 1, 1, 1, 0, 'Midnight Chestguard'),
(36105, 30906, 0, 1, 1, 1, 0, 'Bristleblitz Striker'),
(36105, 30907, 0, 1, 1, 1, 0, 'Mail of Fevered Pursuit'),
(36105, 30908, 0, 2, 1, 1, 0, 'Apostle of Argus'),
(36105, 30909, 0, 2, 1, 1, 0, 'Antonidas\'s Aegis of Rapt Concentration'),
(36105, 30910, 0, 2, 1, 1, 0, 'Tempest of Chaos'),
(36105, 30911, 0, 2, 1, 1, 0, 'Scepter of Purification'),
(36105, 30912, 0, 2, 1, 1, 0, 'Leggings of Eternity'),
(36105, 30913, 0, 2, 1, 1, 0, 'Robes of Rhonin'),
(36107, 31095, 0, 1, 1, 1, 0, 'Helm of the Forgotten Protector'),
(36107, 31096, 0, 1, 1, 1, 0, 'Helm of the Forgotten Vanquisher'),
(36107, 31097, 0, 1, 1, 1, 0, 'Helm of the Forgotten Conqueror');

-- Hyjal (Boss Loot) - Epic Gem Jewelcrafting Design
DELETE FROM `reference_loot_template` WHERE `entry` IN (34063,36106);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36106, 32285, 0, 1, 1, 1, 204, 'Design: Flashing Crimson Spinel'),
(36106, 32289, 0, 1, 1, 1, 204, 'Design: Stormy Empyrean Sapphire'),
(36106, 32295, 0, 1, 1, 1, 204, 'Design: Mystic Lionseye'),
(36106, 32296, 0, 1, 1, 1, 204, 'Design: Great Lionseye'),
(36106, 32297, 0, 1, 1, 1, 204, 'Design: Sovereign Shadowsong Amethyst'),
(36106, 32298, 0, 1, 1, 1, 204, 'Design: Shifting Shadowsong Amethyst'),
(36106, 32303, 0, 1, 1, 1, 204, 'Design: Inscribed Pyrestone'),
(36106, 32307, 0, 1, 1, 1, 204, 'Design: Veiled Pyrestone');

-- ===================================
-- Black Temple (25-Man)
-- ===================================



-- =================
-- Zul'Aman (10-Man)
-- =================



-- ===================================
-- Sunwell Plateau (25-Man)
-- ===================================


