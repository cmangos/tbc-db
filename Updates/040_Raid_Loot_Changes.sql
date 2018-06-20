-- ===========================================
-- Bump Gruul's Lair Loot ID Down to Make Room
-- ===========================================
UPDATE reference_loot_template SET entry=40230 WHERE entry=40217;
UPDATE reference_loot_template SET entry=40232 WHERE entry=40218;

UPDATE reference_loot_template_names SET entry=40230 WHERE entry=40217;
UPDATE reference_loot_template_names SET entry=40232 WHERE entry=40218;

-- ===========================================
-- Bump Mags's Lair Loot ID Down to Make Room
-- ===========================================
UPDATE reference_loot_template SET entry=40240 WHERE entry=40219;
UPDATE reference_loot_template_names SET entry=40240 WHERE entry=40219;

-- ===========================================
-- Cleanup Karazhan Reference Loot Data
-- ===========================================
DELETE FROM reference_loot_template_names WHERE entry BETWEEN 40203 AND 40239;
DELETE FROM reference_loot_template WHERE entry BETWEEN 40203 AND 40239;




-- ===================================================
-- Change Attumen - Karazhan Reference Loot
-- ===================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40203,40204);
insert into `reference_loot_template_names` (`entry`, `name`) values('40203','Karazhan (Boss Loot) - Attumen the Huntsman - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40204','Karazhan (Boss Loot) - Attumen the Huntsman - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40203,40204);

UPDATE creature_loot_template SET ChanceOrQuestChance=3.3 WHERE entry=16152 AND item=23809;
UPDATE creature_loot_template SET ChanceOrQuestChance=0.7 WHERE entry=16152 AND item=30480;

-- Group 1
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40203','28453','0','1','1','1','0','Bracers of the White Stag');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40203','28454','0','1','1','1','0','Stalker\'s War Bands');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40203','28477','0','1','1','1','0','Harbinger Bands');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40203','28502','0','1','1','1','0','Vambraces of Courage');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40203','28503','0','1','1','1','0','Whirlwind Bracers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40203','28504','0','1','1','1','0','Steelhawk Crossbow');

-- Group 2
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40204','28505','0','1','1','1','0','Gauntlets of Renewed Hope');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40204','28506','0','1','1','1','0','Gloves of Dexterous Manipulation');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40204','28507','0','1','1','1','0','Handwraps of Flowing Thought');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40204','28508','0','1','1','1','0','Gloves of Saintly Blessings');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40204','28509','0','1','1','1','0','Worgen Claw Necklace');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40204','28510','0','1','1','1','0','Spectral Band of Innervation');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16152', '40203', '100', '0', '-40203', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16152', '40204', '100', '0', '-40204', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=16152 AND `item`=34016;



-- ===================================================
-- Change Moroes - Karazhan Reference Loot
-- ===================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40205,40206);
insert into `reference_loot_template_names` (`entry`, `name`) values('40205','Karazhan (Boss Loot) - Moroes - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40206','Karazhan (Boss Loot) - Moroes - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40205,40206);

UPDATE creature_loot_template SET ChanceOrQuestChance=2.7 WHERE entry=15687 AND item=22559;

-- Group 1
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40205','28524','0','1','1','1','0','Emerald Ripper');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40205','28528','0','1','1','1','0','Moroes\' Lucky Pocket Watch');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40205','28529','0','1','1','1','0','Royal Cloak of Arathi Kings');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40205','28530','0','1','1','1','0','Brooch of Unquenchable Fury');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40205','28545','0','1','1','1','0','Edgewalker Longboots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40205','28566','0','1','1','1','0','Crimson Girdle of the Indomitable');

-- Group 2
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40206','28525','0','1','1','1','0','Signet of Unshakable Faith');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40206','28565','0','1','1','1','0','Nethershard Girdle');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40206','28567','0','1','1','1','0','Belt of Gale Force');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40206','28568','0','1','1','1','0','Idol of the Avian Heart');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40206','28569','0','1','1','1','0','Boots of Valiance');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40206','28570','0','1','1','1','0','Shadow-Cloak of Dalaran');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15687', '40205', '100', '0', '-40205', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15687', '40206', '100', '0', '-40206', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=15687 AND `item`=34017;



-- ===================================================
-- Change Maiden - Karazhan Reference Loot
-- ===================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40207,40208);
insert into `reference_loot_template_names` (`entry`, `name`) values('40207','Karazhan (Boss Loot) - Maiden of Virtue - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40208','Karazhan (Boss Loot) - Maiden of Virtue - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40207,40208);
-- Group 1
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40207','28511','0','1','1','1','0','Bands of Indwelling');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40207','28512','0','1','1','1','0','Bracers of Justice');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40207','28514','0','1','1','1','0','Bracers of Maliciousness');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40207','28515','0','1','1','1','0','Bands of Nefarious Deeds');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40207','28517','0','1','1','1','0','Boots of Foretelling');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40207','28522','0','1','1','1','0','Shard of the Virtuous');

-- Group 2
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40208','28516','0','1','1','1','0','Barbed Choker of Discipline');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40208','28518','0','1','1','1','0','Iron Gauntlets of the Maiden');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40208','28519','0','1','1','1','0','Gloves of Quickening');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40208','28520','0','1','1','1','0','Gloves of Centering');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40208','28521','0','1','1','1','0','Mitts of the Treemender');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40208','28523','0','1','1','1','0','Totem of Healing Rains');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16457', '40207', '100', '0', '-40207', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16457', '40208', '100', '0', '-40208', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=16457 AND `item`=34018;
DELETE FROM reference_loot_template WHERE entry =34018;



-- ==================================================
-- Change Opera Events - Karazhan Reference Loot
-- ==================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40209,40210,40211,40212);
insert into `reference_loot_template_names` (`entry`, `name`) values('40209','Karazhan (Boss Loot) - All Opera Event Bosses - Epic Items');
insert into `reference_loot_template_names` (`entry`, `name`) values('40210','Karazhan (Boss Loot) - The Big Bad Wolf - Epic Items');
insert into `reference_loot_template_names` (`entry`, `name`) values('40211','Karazhan (Boss Loot) - Julianne - Epic Items');
insert into `reference_loot_template_names` (`entry`, `name`) values('40212','Karazhan (Boss Loot) - The Crone - Epic Items');

DELETE FROM reference_loot_template WHERE entry IN (40209,40210,40211,40212);
-- Shared Loot
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40209','28589','0','1','1','1','0','Beastmaw Pauldrons');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40209','28590','0','1','1','1','0','Ribbon of Sacrifice');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40209','28591','0','1','1','1','0','Earthsoul Leggings');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40209','28592','0','1','1','1','0','Libram of Souls Redeemed');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40209','28593','0','1','1','1','0','Eternium Greathelm');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40209','28594','0','1','1','1','0','Trial-Fire Trousers');

-- The Big Bad Wolf
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40210','28581','0','1','1','1','0','Wolfslayer Sniper Rifle');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40210','28582','0','1','1','1','0','Red Riding Hood\'s Cloak');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40210','28583','0','1','1','1','0','Big Bad Wolf\'s Head');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40210','28584','0','1','1','1','0','Big Bad Wolf\'s Paw');

-- Julianne
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40211','28572','0','1','1','1','0','Blade of the Unrequited');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40211','28573','0','1','1','1','0','Despair');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40211','28578','0','1','1','1','0','Masquerade Gown');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40211','28579','0','1','1','1','0','Romulo\'s Poison Vial');

-- The Crone
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40212','28585','0','1','1','1','0','Ruby Slippers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40212','28586','0','1','1','1','0','Wicked Witch\'s Hat');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40212','28587','0','1','1','1','0','Legacy');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40212','28588','0','1','1','1','0','Blue Diamond Witchwand');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17521', '40209', '100', '0', '-40209', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17521', '40210', '100', '0', '-40210', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17533', '40209', '100', '0', '-40209', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17534', '40211', '100', '0', '-40211', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18168', '40209', '100', '0', '-40209', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18168', '40212', '100', '0', '-40212', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=17521 AND `item`=34031;
DELETE FROM `creature_loot_template` WHERE `entry`=17533 AND `item`=28589;
DELETE FROM `creature_loot_template` WHERE `entry`=17533 AND `item`=28590;
DELETE FROM `creature_loot_template` WHERE `entry`=17533 AND `item`=28591;
DELETE FROM `creature_loot_template` WHERE `entry`=17533 AND `item`=28592;
DELETE FROM `creature_loot_template` WHERE `entry`=17533 AND `item`=28593;
DELETE FROM `creature_loot_template` WHERE `entry`=17533 AND `item`=28594;
DELETE FROM `creature_loot_template` WHERE `entry`=17534 AND `item`=28572;
DELETE FROM `creature_loot_template` WHERE `entry`=17534 AND `item`=28573;
DELETE FROM `creature_loot_template` WHERE `entry`=17534 AND `item`=28578;
DELETE FROM `creature_loot_template` WHERE `entry`=17534 AND `item`=28579;
DELETE FROM `creature_loot_template` WHERE `entry`=18168 AND `item`=34023;
DELETE FROM reference_loot_template WHERE entry =34031;



-- ========================================
-- Change Curator - Karazhan Reference Loot
-- ========================================
DELETE FROM reference_loot_template_names WHERE entry IN (40213,40214);
insert into `reference_loot_template_names` (`entry`, `name`) values('40213','Karazhan (Boss Loot) - The Curator - Epic Items - (Tokens Only)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40214','Karazhan (Boss Loot) - The Curator - Epic Items - (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40213,40214);
-- Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40213','29756','0','1','1','1','0','Gloves of the Fallen Hero');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40213','29757','0','1','1','1','0','Gloves of the Fallen Champion');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40213','29758','0','1','1','1','0','Gloves of the Fallen Defender');

-- Non Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40214','28612','0','1','1','1','0','Pauldrons of the Solace-Giver');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40214','28621','0','1','1','1','0','Wrynn Dynasty Greaves');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40214','28631','0','1','1','1','0','Dragon-Quake Shoulderguards');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40214','28633','0','1','1','1','0','Staff of Infinite Mysteries');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40214','28647','0','1','1','1','0','Forest Wind Shoulderpads');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40214','28649','0','1','1','1','0','Garona\'s Signet Ring');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15691', '40213', '100', '0', '-40213', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15691', '40214', '100', '0', '-40214', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=28612;
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=28621;
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=28631;
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=28633;
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=28647;
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=28649;
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=29756;
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=29757;
DELETE FROM `creature_loot_template` WHERE `entry`=15691 AND `item`=29758;



-- ========================================
-- Change Illhoof - Karazhan Reference Loot
-- ========================================
DELETE FROM reference_loot_template_names WHERE entry IN (40215,40216);
insert into `reference_loot_template_names` (`entry`, `name`) values('40215','Karazhan (Boss Loot) - Terestian Illhoof - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40216','Karazhan (Boss Loot) - Terestian Illhoof - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40215,40216);

UPDATE creature_loot_template SET ChanceOrQuestChance=3.7 WHERE entry=15688 AND item=22561;

-- Group 1
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40215','28652','0','1','1','1','0','Cincture of Will');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40215','28654','0','1','1','1','0','Malefic Girdle');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40215','28655','0','1','1','1','0','Cord of Nature\'s Sustenance');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40215','28656','0','1','1','1','0','Girdle of the Prowler');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40215','28658','0','1','1','1','0','Terestian\'s Stranglestaff');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40215','28660','0','1','1','1','0','Gilded Thorium Cloak');

-- Group 2
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40216','28653','0','1','1','1','0','Shadowvine Cloak of Infusion');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40216','28657','0','1','1','1','0','Fool\'s Bane');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40216','28659','0','1','1','1','0','Xavian Stiletto');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40216','28661','0','1','1','1','0','Mender\'s Heart-Ring');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40216','28662','0','1','1','1','0','Breastplate of the Lightbinder');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40216','28785','0','1','1','1','0','The Lightning Capacitor');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15688', '40215', '100', '0', '-40215', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15688', '40216', '100', '0', '-40216', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=15688 AND `item`=34019;



-- ==============================================
-- Change Shade of Aran - Karazhan Reference Loot
-- ==============================================
DELETE FROM reference_loot_template_names WHERE entry IN (40217,40218);
insert into `reference_loot_template_names` (`entry`, `name`) values('40217','Karazhan (Boss Loot) - Shade of Aran - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40218','Karazhan (Boss Loot) - Shade of Aran - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40217,40218);

UPDATE creature_loot_template SET ChanceOrQuestChance=2.7 WHERE entry=16524 AND item=22560;

-- Group 1
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40217','28670','0','1','1','1','0','Boots of the Infernal Coven');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40217','28673','0','1','1','1','0','Tirisfal Wand of Ascendancy');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40217','28674','0','1','1','1','0','Saberclaw Talisman');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40217','28726','0','1','1','1','0','Mantle of the Mind Flayer');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40217','28727','0','1','1','1','0','Pendant of the Violet Eye');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40217','28728','0','1','1','1','0','Aran\'s Soothing Sapphire');

-- Group 2
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40218','28663','0','1','1','1','0','Boots of the Incorrupt');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40218','28666','0','1','1','1','0','Pauldrons of the Justice-Seeker');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40218','28669','0','1','1','1','0','Rapscallion Boots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40218','28671','0','1','1','1','0','Steelspine Faceguard');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40218','28672','0','1','1','1','0','Drape of the Dark Reavers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40218','28675','0','1','1','1','0','Shermanar Great-Ring');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16524', '40217', '100', '0', '-40217', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16524', '40218', '100', '0', '-40218', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=16524 AND `item`=34020;


-- ==============================================
-- Change Netherspite - Karazhan Reference Loot
-- ==============================================
DELETE FROM reference_loot_template_names WHERE entry IN (40219,40220);
insert into `reference_loot_template_names` (`entry`, `name`) values('40219','Karazhan (Boss Loot) - Netherspite - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40220','Karazhan (Boss Loot) - Netherspite - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40219,40220);
-- Group 1
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40219','28729','0','1','1','1','0','Spiteblade');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40219','28730','0','1','1','1','0','Mithril Band of the Unscarred');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40219','28731','0','1','1','1','0','Shining Chain of the Afterworld');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40219','28732','0','1','1','1','0','Cowl of Defiance');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40219','28733','0','1','1','1','0','Girdle of Truth');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40219','28734','0','1','1','1','0','Jewel of Infinite Possibilities');

-- Group 2
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40220','28735','0','1','1','1','0','Earthblood Chestguard');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40220','28740','0','1','1','1','0','Rip-Flayer Leggings');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40220','28741','0','1','1','1','0','Skulker\'s Greaves');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40220','28742','0','1','1','1','0','Pantaloons of Repentance');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40220','28743','0','1','1','1','0','Mantle of Abrahmis');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40220','28744','0','1','1','1','0','Uni-Mind Headdress');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15689', '40219', '100', '0', '-40219', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15689', '40220', '100', '0', '-40220', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=15689 AND `item`=34021;



-- ==============================================
-- Change Nightbane - Karazhan Reference Loot
-- ==============================================
DELETE FROM reference_loot_template_names WHERE entry IN (40221,40222);
insert into `reference_loot_template_names` (`entry`, `name`) values('40221','Karazhan (Boss Loot) - Nightbane - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40222','Karazhan (Boss Loot) - Nightbane - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40221,40222);
-- Group 1
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40221','28597','0','1','1','1','0','Panzar\'Thar Breastplate');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40221','28599','0','1','1','1','0','Scaled Breastplate of Carnage');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40221','28600','0','1','1','1','0','Stonebough Jerkin');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40221','28601','0','1','1','1','0','Chestguard of the Conniver');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40221','28602','0','1','1','1','0','Robe of the Elder Scribes');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40221','28603','0','1','1','1','0','Talisman of Nightbane');

-- Group 2
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40222','28604','0','1','1','1','0','Nightstaff of the Everliving');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40222','28606','0','1','1','1','0','Shield of Impenetrable Darkness');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40222','28608','0','1','1','1','0','Ironstriders of Urgency');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40222','28609','0','1','1','1','0','Emberspur Talisman');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40222','28610','0','1','1','1','0','Ferocious Swift-Kickers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40222','28611','0','1','1','1','0','Dragonheart Flameshield');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17225', '40221', '100', '0', '-40221', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17225', '40222', '100', '0', '-40222', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=17225 AND `item`=34022;


-- ===================================================
-- Change Dust Covered Chest - Karazhan Reference Loot
-- ===================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40223,40224);
insert into `reference_loot_template_names` (`entry`, `name`) values('40223','Karazhan (Boss Loot) - Dust Covered Chest (Chess Event) - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40224','Karazhan (Boss Loot) - Dust Covered Chest (Chess Event) - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40223,40224);
-- Group 1
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40223','28745','0','1','1','1','0','Mithril Chain of Heroism');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40223','28750','0','1','1','1','0','Girdle of Treachery');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40223','28746','0','1','1','1','0','Fiend Slayer Boots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40223','28747','0','1','1','1','0','Battlescar Boots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40223','28749','0','1','1','1','0','King\'s Defender');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40223','28755','0','1','1','1','0','Bladed Shoulderpads of the Merciless');

-- Group 2
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40224','28748','0','1','1','1','0','Legplates of the Innocent');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40224','28751','0','1','1','1','0','Heart-Flame Leggings');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40224','28752','0','1','1','1','0','Forestlord Striders');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40224','28753','0','1','1','1','0','Ring of Recurrence');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40224','28754','0','1','1','1','0','Triptych Shield of the Ancients');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40224','28756','0','1','1','1','0','Headdress of the High Potentate');

-- linking
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20712', '40223', '100', '0', '-40223', '1', '0', '');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20712', '40224', '100', '0', '-40224', '1', '0', '');
DELETE FROM `gameobject_loot_template` WHERE `entry`=20712 AND `item`=12001;
DELETE FROM reference_loot_template WHERE entry=12001;



-- ==================================================
-- Change Prince Malchezaar - Karazhan Reference Loot
-- ==================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40225,40226,40227);
insert into `reference_loot_template_names` (`entry`, `name`) values('40225','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Tokens Only)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40226','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Group 1) - (Non-Tokens Only)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40227','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Group 2) - (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40225,40226,40227);
-- Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40225','29759','0','1','1','1','0','Helm of the Fallen Hero');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40225','29760','0','1','1','1','0','Helm of the Fallen Champion');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40225','29761','0','1','1','1','0','Helm of the Fallen Defender');

-- Group 1 - Non Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40226','28757','0','1','1','1','0','Ring of a Thousand Marks');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40226','28762','0','1','1','1','0','Adornment of Stolen Souls');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40226','28763','0','1','1','1','0','Jade Ring of the Everliving');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40226','28764','0','1','1','1','0','Farstrider Wildercloak');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40226','28765','0','1','1','1','0','Stainless Cloak of the Pure Hearted');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40226','28766','0','1','1','1','0','Ruby Drape of the Mysticant');

-- Group 2 - Non Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40227','28767','0','1','1','1','0','The Decapitator');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40227','28768','0','1','1','1','0','Malchazeen');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40227','28770','0','1','1','1','0','Nathrezim Mindblade');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40227','28771','0','1','1','1','0','Light\'s Justice');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40227','28772','0','1','1','1','0','Sunfury Bow of the Phoenix');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40227','28773','0','1','1','1','0','Gorehowl');


-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15690', '40225', '100', '0', '-40225', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15690', '40226', '100', '0', '-40226', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('15690', '40227', '100', '0', '-40227', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28757;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28762;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28763;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28764;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28765;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28766;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28767;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28768;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28770;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28771;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28772;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=28773;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=29759;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=29760;
DELETE FROM `creature_loot_template` WHERE `entry`=15690 AND `item`=29761;



-- ======================================================
-- Change High King Maulgar - Gruul's Lair Reference Loot
-- ======================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40300,40301);
insert into `reference_loot_template_names` (`entry`, `name`) values('40300','Gruul\'s Lair (Boss Loot) - High King Maulgar - Epic Items (Tokens Only)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40301','Gruul\'s Lair (Boss Loot) - High King Maulgar - Epic Items (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40300,40301);
-- Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40300','29762','0','1','1','1','0','Pauldrons of the Fallen Hero');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40300','29763','0','1','1','1','0','Pauldrons of the Fallen Champion');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40300','29764','0','1','1','1','0','Pauldrons of the Fallen Defender');

-- Non Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40301','28795','0','1','1','1','0','Bladespire Warbands');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40301','28796','0','1','1','1','0','Malefic Mask of the Shadows');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40301','28797','0','1','1','1','0','Brute Cloak of the Ogre-Magi');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40301','28799','0','1','1','1','0','Belt of Divine Inspiration');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40301','28800','0','1','1','1','0','Hammer of the Naaru');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40301','28801','0','1','1','1','0','Maulgar\'s Warhelm');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18831', '40300', '100', '0', '-40300', '2', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18831', '40301', '100', '0', '-40301', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=18831 AND `item`=34050;
DELETE FROM `creature_loot_template` WHERE `entry`=18831 AND `item`=28795;
DELETE FROM `creature_loot_template` WHERE `entry`=18831 AND `item`=28796;
DELETE FROM `creature_loot_template` WHERE `entry`=18831 AND `item`=28797;
DELETE FROM `creature_loot_template` WHERE `entry`=18831 AND `item`=28799;
DELETE FROM `creature_loot_template` WHERE `entry`=18831 AND `item`=28800;
DELETE FROM `creature_loot_template` WHERE `entry`=18831 AND `item`=28801;




-- ======================================================
-- Change Gruul the Dragonkiller - Gruul's Lair Reference Loot
-- ======================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40302,40303);
insert into `reference_loot_template_names` (`entry`, `name`) values('40302','Gruul\'s Lair (Boss Loot) - Gruul the Dragonkiller - Epic Items (Tokens Only)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40303','Gruul\'s Lair (Boss Loot) - Gruul the Dragonkiller - Epic Items (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40302,40303);
-- Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40302','29765','0','1','1','1','0','Leggings of the Fallen Hero');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40302','29766','0','1','1','1','0','Leggings of the Fallen Champion');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40302','29767','0','1','1','1','0','Leggings of the Fallen Defender');

-- Non Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28794','0','1','1','1','0','Axe of the Gronn Lords');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28802','0','1','1','1','0','Bloodmaw Magus-Blade');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28803','0','1','1','1','0','Cowl of Nature\'s Breath');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28804','0','1','1','1','0','Collar of Cho\'gall');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28810','0','1','1','1','0','Windshear Boots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28822','0','1','1','1','0','Teeth of Gruul');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28823','0','1','1','1','0','Eye of Gruul');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28824','0','1','1','1','0','Gauntlets of Martial Perfection');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28825','0','1','1','1','0','Aldori Legacy Defender');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28826','0','1','1','1','0','Shuriken of Negation');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28827','0','1','1','1','0','Gauntlets of the Dragonslayer');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28828','0','1','1','1','0','Gronn-Stitched Girdle');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40303','28830','0','1','1','1','0','Dragonspine Trophy');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19044', '40302', '100', '0', '-40302', '2', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19044', '40303', '100', '0', '-40303', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=19044 AND `item`=34051;
DELETE FROM `creature_loot_template` WHERE `entry`=19044 AND `item`=190039;



-- ======================================================
-- Change Magtheridon - Magtheridon's Lair Reference Loot
-- ======================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40400,40401);
insert into `reference_loot_template_names` (`entry`, `name`) values('40400','Magtheridon\'s Lair (Boss Loot) - Magtheridon - Epic Items (Tokens Only)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40401','Magtheridon\'s Lair (Boss Loot) - Magtheridon - Epic Items (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40400,40401);
-- Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40400','29753','0','1','1','1','0','Chestguard of the Fallen Defender');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40400','29754','0','1','1','1','0','Chestguard of the Fallen Champion');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40400','29755','0','1','1','1','0','Chestguard of the Fallen Hero');

-- Non Token Items
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28774','0','1','1','1','0','Glaive of the Pit');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28775','0','1','1','1','0','Thundering Greathelm');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28776','0','1','1','1','0','Liar\'s Tongue Gloves');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28777','0','1','1','1','0','Cloak of the Pit Stalker');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28778','0','1','1','1','0','Terror Pit Girdle');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28779','0','1','1','1','0','Girdle of the Endless Pit');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28780','0','1','1','1','0','Soul-Eater\'s Handwraps');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28781','0','1','1','1','0','Karaborian Talisman');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28782','0','1','1','1','0','Crystalheart Pulse-Staff');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28783','0','1','1','1','0','Eredar Wand of Obliteration');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','28789','0','1','1','1','0','Eye of Magtheridon');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('40401','29458','0','1','1','1','0','Aegis of the Vindicator');

-- linking
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17257', '40400', '100', '0', '-40400', '2', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17257', '40401', '100', '0', '-40401', '1', '0', '');
DELETE FROM `creature_loot_template` WHERE `entry`=17257 AND `item`=34039;
DELETE FROM `creature_loot_template` WHERE `entry`=17257 AND `item`=90039;
DELETE FROM reference_loot_template WHERE entry =34039;



-- ======================================================
-- Change Selin Fireheart - Magisters' Terrace Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=24723 WHERE entry=24723;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24723', '35516', '2', '0', '1', '1', '497', 'Sun Touched Satche');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24723', '50000', '100', '0', '-50000', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50000','34697','0','1','1','1','0','Bindings of Raging Fire');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50000','34698','0','1','1','1','0','Bracers of the Forest Stalker');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50000','34699','0','1','1','1','0','Sun-forged Cleaver');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50000','34700','0','1','1','1','0','Gauntlets of Divine Blessings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50000','34701','0','1','1','1','0','Leggings of the Betrayed');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50000','34702','0','1','1','1','0','Cloak of Swift Mending');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('25562', '50001', '100', '0', '-50001', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50001','34601','0','1','1','1','0','[Shoulderplates of Everlasting Pain]');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50001','34602','0','1','1','1','0','[Eversong Cuffs]');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50001','34603','0','1','1','1','0','[Distracting Blades]');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50001','34604','0','1','1','1','0','[Jaded Crystal Dagger]');

UPDATE creature_loot_template SET ChanceOrQuestChance=1.5 WHERE entry=25562 AND item=35275;


-- ======================================================
-- Change Vexallus - Magisters' Terrace Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24744', '50002', '100', '0', '-50002', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50002','34703','0','1','1','1','0','Latro\'s Dancing Blade');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50002','34704','0','1','1','1','0','Band of Arcane Alacrity');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50002','34705','0','1','1','1','0','Bracers of Divine Infusion');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50002','34706','0','1','1','1','0','Band of Determination');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50002','34707','0','1','1','1','0','Boots of Resuscitation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50002','34708','0','1','1','1','0','Cloak of the Coming Night');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('25573', '50003', '100', '0', '-50003', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50003','34605','0','1','1','1','0','Breastplate of Fierce Survival');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50003','34606','0','1','1','1','0','Edge of Oppression');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50003','34607','0','1','1','1','0','Fel-tinged Mantle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50003','34608','0','1','1','1','0','Rod of the Blazing Light');

UPDATE creature_loot_template SET ChanceOrQuestChance=1.4 WHERE entry=25573 AND item=35275;



-- ======================================================
-- Change Priestess Delrissa - Magisters' Terrace Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=19.3 WHERE entry=25560 AND item=35756;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24560', '35516', '2', '0', '1', '1', '497', 'Sun Touched Satchel');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24560', '50004', '100', '0', '-50004', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50004','34783','0','1','1','1','0','Nightstrike');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50004','34788','0','1','1','1','0','Duskhallow Mantle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50004','34789','0','1','1','1','0','Bracers of Slaughter');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50004','34790','0','1','1','1','0','Battle-mace of the High Priestess');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50004','34791','0','1','1','1','0','Gauntlets of the Tranquil Waves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50004','34792','0','1','1','1','0','Cloak of the Betrayed');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('25560', '50005', '100', '0', '-50005', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50005','34470','0','1','1','1','0','Timbal\'s Focusing Crystal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50005','34471','0','1','1','1','0','Vial of the Sunwell');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50005','34472','0','1','1','1','0','Shard of Contempt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50005','34473','0','1','1','1','0','Commendation of Kael\'thas');

UPDATE creature_loot_template SET ChanceOrQuestChance=7.4 WHERE entry=24560 AND item=35756;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.2 WHERE entry=25560 AND item=35275;



-- ======================================================
-- Change Kael'thas Sunstrider - Magisters' Terrace Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50006','35309','0','1','1','1','0','Pattern: Unyielding Girdle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50006','35303','0','1','1','1','0','Pattern: Gloves of the Living Touch');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50006','35300','0','1','1','1','0','Pattern: Windstrike Gloves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50006','35301','0','1','1','1','0','Pattern: Netherdrake Gloves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50006','35302','0','1','1','1','0','Pattern: Cobrascale Gloves');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50007','35299','0','1','1','1','0','Formula: Enchant Boots - Cat\'s Swiftness');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50007','35297','0','1','1','1','0','Formula: Enchant Boots - Boar\'s Speed');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50007','35310','0','1','1','1','0','Schematic: Healing Potion Injector');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50007','35311','0','1','1','1','0','Schematic: Mana Potion Injector');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50007','35305','0','1','1','1','0','Design: Runed Living Ruby');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50007','35306','0','1','1','1','0','Design: Bright Living Ruby');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50007','35308','0','1','1','1','0','Pattern: Unyielding Bracers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50007','35307','0','1','1','1','0','Design: Rigid Dawnstone');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50008','35295','0','1','1','1','0','Recipe: Haste Potion');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50008','35298','0','1','1','1','0','Formula: Enchant Boots - Vitality');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50008','35296','0','1','1','1','0','Plans: Adamantite Weapon Chain');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50008','35294','0','1','1','1','0','Recipe: Elixir of Empowerment');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24664', '50006', '2', '1', '-50006', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24664', '50007', '4', '1', '-50007', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24664', '50008', '4', '1', '-50008', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24664', '50009', '100', '1', '-50009', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50009','34625','0','1','1','1','0','Kharmaa\'s Ring of Fate');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50009','34799','0','1','1','1','0','Hauberk of the War Bringer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50009','34807','0','1','1','1','0','Sunstrider Warboots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50009','34808','0','1','1','1','0','Gloves of Arcane Acuity');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50009','34809','0','1','1','1','0','Sunrage Treads');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50009','34810','0','1','1','1','0','Cloak of Blade Turning');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24664', '50010', '100', '1', '-50010', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50010','34793','0','1','1','1','0','Cord of Reconstruction');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50010','34794','0','1','1','1','0','Axe of Shattered Dreams');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50010','34795','0','1','1','1','0','Helm of Sanctification');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50010','34796','0','1','1','1','0','Robes of Summer Flame');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50010','34797','0','1','1','1','0','Sun-infused Focus Staff');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50010','34798','0','1','1','1','0','Band of Celerity');

UPDATE creature_loot_template SET ChanceOrQuestChance=5.9 WHERE entry=24664 AND item=35504;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24857', '50011', '100', '0', '-50011', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50011','34609','0','1','1','1','0','Quickening Blade of the Prince');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50011','34610','0','1','1','1','0','Scarlet Sin\'dorei Robes');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50011','34611','0','1','1','1','0','Cudgel of Consecration');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50011','34612','0','1','1','1','0','Greaves of the Penitent Knight');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50011','34613','0','1','1','1','0','Shoulderpads of the Silvermoon Retainer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50011','34614','0','1','1','1','0','Tunic of the Ranger Lord');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50011','34615','0','1','1','1','0','Netherforce Chestplate');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50011','34616','0','1','1','1','0','Breeching Comet');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24857', '50006', '4', '1', '-50006', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24857', '50007', '8', '1', '-50007', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('24857', '50008', '8', '1', '-50008', '1', '0', '');


UPDATE creature_loot_template SET ChanceOrQuestChance=2.5 WHERE entry=24857 AND item=35275;
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE entry=24857 AND item=35504;
UPDATE creature_loot_template SET ChanceOrQuestChance=2.4 WHERE entry=24857 AND item=35513;




-- ======================================================
-- Change Public Item - The Black Morass Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50100','30555','0','1','1','1','0','Glowing Tanzanite');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50100','30556','0','1','1','1','0','Glinting Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50100','30558','0','1','1','1','0','Glimmering Fire Opal');


-- ======================================================
-- Change Chrono Lord Deja - The Black Morass Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.9 WHERE entry=17879 AND item=29675;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17879', '50101', '100', '0', '-50101', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50101','27993','0','1','1','1','0','Mask of Inner Fire');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50101','27995','0','1','1','1','0','Sun-Gilded Shouldercaps');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50101','27996','0','1','1','1','0','Ring of Spiritual Precision');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50101','27987','0','1','1','1','0','Melmorta\'s Twilight Longbow');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50101','27988','0','1','1','1','0','Burnoose of Shifting Ages');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50101','27994','0','1','1','1','0','Mantle of Three Terrors');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20738', '50100', '15', '0', '-50100', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20738', '50101', '100', '0', '-50101', '1', '0', '');



-- ======================================================
-- Change Temporus - The Black Morass Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=17880 WHERE entry=17880;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17880', '50102', '100', '0', '-50102', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50102','28185','0','1','1','1','0','Khadgar\'s Kilt of Abjuration');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50102','28033','0','1','1','1','0','Epoch-Mender');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50102','28034','0','1','1','1','0','Hourglass of the Unraveller');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50102','28186','0','1','1','1','0','Laughing Skull Battle-Harness');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50102','28184','0','1','1','1','0','Millennium Blade');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50102','28187','0','1','1','1','0','Star-Heart Lamp');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20745', '50100', '15', '0', '-50100', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20745', '50102', '100', '0', '-50102', '1', '0', '');


-- ======================================================
-- Change Aeonus - The Black Morass Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17881', '50103', '100', '0', '-50103', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','28206','0','1','1','1','0','Cowl of the Guiltless');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','28192','0','1','1','1','0','Helm of Desolation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','27509','0','1','1','1','0','Handgrips of Assassination');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','28194','0','1','1','1','0','Primal Surge Bracers]');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','27839','0','1','1','1','0','Legplates of the Righteous');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','28193','0','1','1','1','0','Mana-Etched Crown');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','28190','0','1','1','1','0','Scarab of the Infinite Cycle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','27977','0','1','1','1','0','Legplates of the Bold');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','28207','0','1','1','1','0','Pauldrons of the Crimson Flight');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','27873','0','1','1','1','0','Moonglade Pants]');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','28189','0','1','1','1','0','Latro\'s Shifting Sword');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50103','28188','0','1','1','1','0','Bloodfire Greatstaff');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20737', '50100', '15', '0', '-50100', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20737', '50103', '100', '0', '-50103', '2', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20737', '50104', '100', '0', '-50104', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50104','29247','0','1','1','1','0','Girdle of the Deathdealer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50104','29253','0','1','1','1','0','Girdle of Valorous Deeds');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50104','30531','0','1','1','1','0','Breeches of the Occultist');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50104','29356','0','1','1','1','0','Quantum Blade');




-- ======================================================
-- Change Public Item - Old Hillsbrad Foothills Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50200','30589','0','1','1','1','0','Dazzling Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50200','30591','0','1','1','1','0','Empowered Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50200','30590','0','1','1','1','0','Enduring Chrysoprase');


-- ======================================================
-- Change Lieutenant Drake - Old Hillsbrad Foothills Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=17848 WHERE entry=17848;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17848', '50201', '100', '0', '-50201', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50201','27423','0','1','1','1','0','Cloak of Impulsiveness');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50201','27417','0','1','1','1','0','Ravenwing Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50201','27420','0','1','1','1','0','Uther\'s Ceremonial Warboots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50201','27418','0','1','1','1','0','Stormreaver Shadow-Kilt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50201','27436','0','1','1','1','0','Iron Band of the Unbreakable');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20535', '50200', '15', '0', '-50200', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20535', '50202', '100', '0', '-50202', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50202','28213','0','1','1','1','0','Lordaeron Medical Guide');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50202','28215','0','1','1','1','0','Mok\'Nathal Mask of Battle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50202','28214','0','1','1','1','0','Grips of the Lunar Eclipse');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50202','28211','0','1','1','1','0','Lieutenant\'s Signet of Lordaeron');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50202','28212','0','1','1','1','0','Aran\'s Sorcerous Slacks');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50202','28210','0','1','1','1','0','Bloodskull Destroyer');


-- ======================================================
-- Change Captain Skarloc - Old Hillsbrad Foothills Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=1.8 WHERE entry=17862 AND item=22927;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.8 WHERE entry=20521 AND item=22927;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17862', '50203', '100', '0', '-50203', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50203','27428','0','1','1','1','0','Stormfront Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50203','27430','0','1','1','1','0','Scaled Greaves of Patience');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50203','27424','0','1','1','1','0','Amani Venom-Axe');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50203','27426','0','1','1','1','0','Northshire Battlemace');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50203','27427','0','1','1','1','0','Durotan\'s Battle Harness');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20521', '50200', '15', '0', '-50200', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20521', '50204', '100', '0', '-50204', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50204','28217','0','1','1','1','0','Tarren Mill Vitality Locket');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50204','28221','0','1','1','1','0','Boots of the Watchful Heart');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50204','28219','0','1','1','1','0','Emerald-Scale Greaves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50204','28218','0','1','1','1','0','Pontiff\'s Pantaloons of Prophecy');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50204','28220','0','1','1','1','0','Moon-Crown Antlers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50204','28216','0','1','1','1','0','Dathrohan\'s Ceremonial Hammer');


-- ======================================================
-- Change Epoch Hunter - Old Hillsbrad Foothills Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.4 WHERE entry=18096 AND item=24173;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.1 WHERE entry=20531 AND item=24173;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18096', '50205', '100', '0', '-50205', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50205','27433','0','1','1','1','0','Pauldrons of Sufferance');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50205','27440','0','1','1','1','0','Diamond Prism of Recurrence');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50205','27434','0','1','1','1','0','Mantle of Perenolde');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50205','27432','0','1','1','1','0','Broxigar\'s Ring of Valor');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50205','27431','0','1','1','1','0','Time-Shifted Dagger');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20531', '50200', '15', '0', '-50200', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20531', '50206', '100', '0', '-50206', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','27904','0','1','1','1','0','Resounding Ring of Glory');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28224','0','1','1','1','0','Wastewalker Helm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28223','0','1','1','1','0','Arcanist\'s Stone');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28191','0','1','1','1','0','Mana-Etched Vestments');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28222','0','1','1','1','0','Reaver of the Infinites');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28344','0','1','1','1','0','Wyrmfury Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28225','0','1','1','1','0','Doomplate Warhelm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','27911','0','1','1','1','0','Epoch\'s Whispering Cinch');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28226','0','1','1','1','0','Timeslicer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28227','0','1','1','1','0','Sparking Arcanite Ring');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28401','0','1','1','1','0','Hauberk of Desolation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50206','28233','0','1','1','1','0','Necklace of Resplendent Hope');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20531', '50207', '100', '0', '-50207', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50207','29246','0','1','1','1','0','Nightfall Wristguards');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50207','29250','0','1','1','1','0','Cord of Sanctification');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50207','30536','0','1','1','1','0','Greaves of the Martyr');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50207','30534','0','1','1','1','0','Wyrmscale Greaves');



-- ======================================================
-- Change Public Item - Hellfire Ramparts Reference Loot
-- ======================================================
DELETE FROM reference_loot_template WHERE entry=40037;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50300','30592','0','1','1','1','0','Steady Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50300','30594','0','1','1','1','0','Effulgent Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50300','30593','0','1','1','1','0','Iridescent Fire Opal');


-- ======================================================
-- Change Watchkeeper Gargolmar - Hellfire Ramparts Reference Loot
-- ======================================================
DELETE FROM creature_loot_template WHERE entry=18436 AND item=40037;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17306', '50301', '100', '0', '-50301', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50301','24022','0','1','1','1','0','Scale Leggings of the Skirmisher');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50301','24021','0','1','1','1','0','Light-Touched Breastplate');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50301','24024','0','1','1','1','0','Pauldrons of Arcane Rage');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50301','24023','0','1','1','1','0','Bracers of Finesse');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50301','24020','0','1','1','1','0','Shadowrend Longblade');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18436', '50300', '15', '0', '-50300', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18436', '50302', '100', '0', '-50302', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50302','27447','0','1','1','1','0','Bracers of Just Rewards');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50302','27451','0','1','1','1','0','Boots of the Darkwalker');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50302','27448','0','1','1','1','0','Cloak of the Everliving');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50302','27449','0','1','1','1','0','Blood Knight Defender');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50302','27450','0','1','1','1','0','Wild Stalker Boots');


-- ======================================================
-- Change Omor the Unscarred - Hellfire Ramparts Reference Loot
-- ======================================================
DELETE FROM creature_loot_template WHERE entry=18433 AND item=40037;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17308', '50303', '100', '0', '-50303', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50303','24094','0','1','1','1','0','Heart Fire Warhammer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50303','24096','0','1','1','1','0','Heartblood Prayer Beads');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50303','24069','0','1','1','1','0','Crystalfire Staff');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50303','24090','0','1','1','1','0','Bloodstained Ravager Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50303','24091','0','1','1','1','0','Tenacious Defender');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50303','24073','0','1','1','1','0','Garrote-String Necklace');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18433', '50300', '15', '0', '-50300', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18433', '50304', '100', '0', '-50304', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27464','0','1','1','1','0','Omor\'s Unyielding Will');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27465','0','1','1','1','0','Mana-Etched Gloves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27477','0','1','1','1','0','Faol\'s Signet of Cleansing');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27895','0','1','1','1','0','Band of Many Prisms');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27466','0','1','1','1','0','Headdress of Alacrity');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27478','0','1','1','1','0','Girdle of the Blasted Reaches');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27906','0','1','1','1','0','Crimsonforge Breastplate');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27463','0','1','1','1','0','Terror Flame Dagger');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27467','0','1','1','1','0','Silent-Strider Kneeboots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27476','0','1','1','1','0','Truncheon of Five Hells');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27462','0','1','1','1','0','Crimson Bracers of Gloom');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50304','27539','0','1','1','1','0','Justice Bearer\'s Pauldrons');


-- ======================================================
-- Change Vazruden Event - Hellfire Ramparts Reference Loot
-- ======================================================
DELETE FROM `gameobject_loot_template` WHERE `entry`=21762 AND `item`=40034;
DELETE FROM `gameobject_loot_template` WHERE `entry`=21764 AND `item`=40035;
DELETE FROM `gameobject_loot_template` WHERE `entry`=21764 AND `item`=40036;
DELETE FROM `gameobject_loot_template` WHERE `entry`=21764 AND `item`=40037;
DELETE FROM reference_loot_template WHERE entry IN (40034, 40035, 40036);

INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21762', '50305', '100', '0', '-50305', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24044', '0', '1', '1', '1', '0', 'Hellreaver');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24045', '0', '1', '1', '1', '0', 'Band of Renewal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24046', '0', '1', '1', '1', '0', 'Kilt of Rolling Thunders');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24063', '0', '1', '1', '1', '0', 'Shifting Sash of Midnight');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24064', '0', '1', '1', '1', '0', 'Ironsole Clompers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24083', '0', '1', '1', '1', '0', 'Lifegiver Britches');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24150', '0', '1', '1', '1', '0', 'Mok\'Nathal Wildercloak');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24151', '0', '1', '1', '1', '0', 'Mok\'Nathal Clan Ring');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24154', '0', '1', '1', '1', '0', 'Witching Band');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50305', '24155', '0', '1', '1', '1', '0', 'Ursol\'s Claw');

INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21764', '50300', '15', '0', '-50300', '1', '0', '');

INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21764', '50306', '100', '0', '-50306', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27452', '0', '1', '1', '1', '0', 'Light Scribe Bands');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27453', '0', '1', '1', '1', '0', 'Averinn\'s Ring of Slaying');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27454', '0', '1', '1', '1', '0', 'Volcanic Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27455', '0', '1', '1', '1', '0', 'Irondrake Faceguard');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27456', '0', '1', '1', '1', '0', 'Raiments of Nature\'s Breath');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27457', '0', '1', '1', '1', '0', 'Life Bearer\'s Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27458', '0', '1', '1', '1', '0', 'Oceansong Kilt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27459', '0', '1', '1', '1', '0', 'Vambraces of Daring');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27460', '0', '1', '1', '1', '0', 'Reavers\' Ring');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50306', '27461', '0', '1', '1', '1', '0', 'Chestguard of the Prowler');

INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21764', '50307', '100', '0', '-50307', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50307', '29238', '0', '1', '1', '1', '0', 'Lion\'s Heart Girdle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50307', '29264', '0', '1', '1', '1', '0', 'Tree-Mender\'s Belt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50307', '29346', '0', '1', '1', '1', '0', 'Feltooth Eviscerator');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50307', '32077', '0', '1', '1', '1', '0', 'Wrath Infused Gauntlets');



-- ======================================================
-- Change Public Item - The Shattered Halls Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50400','30548','0','1','1','1','0','Polished Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50400','30546','0','1','1','1','0','Sovereign Tanzanite');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50400','30547','0','1','1','1','0','Luminous Fire Opal');


-- ======================================================
-- Change Grand Warlock Nethekurse - The Shattered Halls Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.6 WHERE entry=16807 AND item=24312;
UPDATE creature_loot_template SET ChanceOrQuestChance=2.1 WHERE entry=20568 AND item=24312;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16807', '50401', '100', '0', '-50401', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50401','27519','0','1','1','1','0','Cloak of Malice');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50401','27520','0','1','1','1','0','Greathelm of the Unbreakable');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50401','27518','0','1','1','1','0','Ivory Idol of the Moongoddess');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50401','27517','0','1','1','1','0','Bands of Nethekurse');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50401','27521','0','1','1','1','0','Telaari Hunting Girdle');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20568', '50400', '15', '0', '-50400', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20568', '50401', '100', '0', '-50401', '1', '0', '');


-- ======================================================
-- Change Blood Guard Porung - The Shattered Halls Reference Loot
-- ======================================================
UPDATE creature_template SET HeroicEntry=0 WHERE entry=20923;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20923', '50402', '100', '0', '-50402', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50402','30709','0','1','1','1','0','Pantaloons of Flaming Wrath');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50402','30707','0','1','1','1','0','Nimble-foot Treads');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50402','30705','0','1','1','1','0','Spaulders of Slaughter');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50402','30708','0','1','1','1','0','Belt of Flowing Thought');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50402','30710','0','1','1','1','0','Blood Guard\'s Necklace of Ferocity');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20923', '50400', '15', '0', '-50400', '1', '0', '');


-- ======================================================
-- Change Warbringer O'mrogg - The Shattered Halls Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16809', '50403', '100', '0', '-50403', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50403','27525','0','1','1','1','0','Jeweled Boots of Sanctification');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50403','27524','0','1','1','1','0','Firemaul of Destruction');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50403','27526','0','1','1','1','0','Skyfire Hawk-Bow');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50403','27868','0','1','1','1','0','Runesong Dagger');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50403','27802','0','1','1','1','0','Tidefury Shoulderguards');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20596', '50400', '15', '0', '-50400', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20596', '50403', '100', '0', '-50403', '1', '0', '');


-- ======================================================
-- Change Warchief Kargath Bladefist - The Shattered Halls Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('16808', '50404', '100', '0', '-50404', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27528','0','1','1','1','0','Gauntlets of Desolation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27534','0','1','1','1','0','Hortus\' Seal of Brilliance');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27540','0','1','1','1','0','Nexus Torch');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27536','0','1','1','1','0','Hallowed Handwraps');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27527','0','1','1','1','0','Greaves of the Shatterer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27537','0','1','1','1','0','Gloves of Oblivion');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27474','0','1','1','1','0','Beast Lord Handguards');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27529','0','1','1','1','0','Figurine of the Colossus');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27531','0','1','1','1','0','Wastewalker Gloves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27533','0','1','1','1','0','Demonblood Eviscerator');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27535','0','1','1','1','0','Gauntlets of the Righteous');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50404','27538','0','1','1','1','0','Lightsworn Hammer');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20597', '50400', '15', '0', '-50400', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20597', '50404', '100', '0', '-50404', '2', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20597', '50405', '100', '0', '-50405', '1', '0', '');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50405','29255','0','1','1','1','0','Bands of Rarefied Magic');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50405','29263','0','1','1','1','0','Forestheart Bracers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50405','29254','0','1','1','1','0','Boots of the Righteous Path');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50405','29348','0','1','1','1','0','The Bladefist');



-- ======================================================
-- Change Public Item - The Blood Furnace Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50500','30600','0','1','1','1','0','Fluorescent Tanzanite');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50500','30602','0','1','1','1','0','Jagged Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50500','30601','0','1','1','1','0','Beaming Fire Opal');


-- ======================================================
-- Change The Maker - The Blood Furnace Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17381', '50501', '100', '0', '-50501', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50501','24388','0','1','1','1','0','Girdle of the Gale Storm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50501','24386','0','1','1','1','0','Libram of Saints Departed');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50501','24385','0','1','1','1','0','Pendant of Battle-Lust');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50501','24384','0','1','1','1','0','Diamond-Core Sledgemace');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50501','24387','0','1','1','1','0','Ironblade Gauntlets');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18621', '50500', '15', '0', '-50500', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18621', '50502', '100', '0', '-50502', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50502','27488','0','1','1','1','0','Mage-Collar of the Firestorm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50502','27485','0','1','1','1','0','Embroidered Cape of Mysteries');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50502','27487','0','1','1','1','0','Bloodlord Legplates');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50502','27483','0','1','1','1','0','Moon-Touched Bands');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50502','27484','0','1','1','1','0','Libram of Avengement');


-- ======================================================
-- Change Broggok - The Blood Furnace Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=17380 WHERE entry=17380;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17380', '50503', '100', '0', '-50503', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50503','24391','0','1','1','1','0','Kilt of the Night Strider');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50503','24389','0','1','1','1','0','Legion Blunderbuss');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50503','24393','0','1','1','1','0','Bloody Surgeon\'s Mitts');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50503','24392','0','1','1','1','0','Arcing Bracers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50503','24390','0','1','1','1','0','Auslese\'s Light Channeler');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18601', '50500', '15', '0', '-50500', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18601', '50504', '100', '0', '-50504', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50504','27492','0','1','1','1','0','Moonchild Leggings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50504','27491','0','1','1','1','0','Signet of Repose');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50504','27490','0','1','1','1','0','Firebrand Battleaxe');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50504','27884','0','1','1','1','0','Embroidered Spellpyre Boots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50504','27489','0','1','1','1','0','Virtue Bearer\'s Vambraces');


-- ======================================================
-- Change Keli'dan the Breaker - The Blood Furnace Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17377', '50505', '100', '0', '-50505', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50505','24397','0','1','1','1','0','Raiments of Divine Authority');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50505','24395','0','1','1','1','0','Mindfire Waistband]');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50505','24398','0','1','1','1','0','Mantle of the Dusk-Dweller');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50505','24394','0','1','1','1','0','Warsong Howling Axe');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50505','24396','0','1','1','1','0','Vest of Vengeance');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18607', '50500', '15', '0', '-50500', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18607', '50506', '100', '0', '-50506', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27495','0','1','1','1','0','Soldier\'s Dog Tags');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','28121','0','1','1','1','0','Icon of Unyielding Courage');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27788','0','1','1','1','0','Bloodsworn Warboots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27506','0','1','1','1','0','Robe of Effervescent Light');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27514','0','1','1','1','0','Leggings of the Unrepentant');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27507','0','1','1','1','0','Adamantine Repeater');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27512','0','1','1','1','0','The Willbreaker');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27494','0','1','1','1','0','Emerald Eye Bracer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27522','0','1','1','1','0','World\'s End Bracers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27505','0','1','1','1','0','Ruby Helm of the Just');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','27497','0','1','1','1','0','Doomplate Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50506','28264','0','1','1','1','0','Wastewalker Tunic');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18607', '50507', '100', '0', '-50507', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50507','29245','0','1','1','1','0','Wave-Crest Striders');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50507','29239','0','1','1','1','0','Eaglecrest Warboots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50507','32080','0','1','1','1','0','Mantle of Shadowy Embrace');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50507','29347','0','1','1','1','0','Talisman of the Breaker');



-- ======================================================
-- Change Public Item - Sethekk Halls Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50600','30554','0','1','1','1','0','Stalwart Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50600','30553','0','1','1','1','0','Pristine Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50600','30552','0','1','1','1','0','Blessed Tanzanite');


-- ======================================================
-- Change Darkweaver Syth - Sethekk Halls Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.6 WHERE entry=18472 AND item=24160;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.8 WHERE entry=20690 AND item=24160;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18472', '50601', '100', '0', '-50601', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50601','27917','0','1','1','1','0','Libram of the Eternal Rest');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50601','27919','0','1','1','1','0','Light-Woven Slippers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50601','27914','0','1','1','1','0','Moonstrider Boots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50601','27918','0','1','1','1','0','Bands of Syth');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50601','27916','0','1','1','1','0','Sethekk Feather-Darts');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50601','27915','0','1','1','1','0','Sky-Hunter Swift Boots');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20690', '50600', '15', '0', '-50600', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20690', '50601', '100', '0', '-50601', '1', '0', '');


-- ======================================================
-- Change Anzu - Sethekk Halls Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.9 WHERE entry=23035 AND item=32768;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('23035', '50602', '100', '0', '-50602', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50602','32778','0','1','1','1','0','Boots of Righteous Fortitude');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50602','32781','0','1','1','1','0','Talon of Anzu');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50602','32769','0','1','1','1','0','Belt of the Raven Lord');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50602','32779','0','1','1','1','0','Band of Frigid Elements');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50602','32780','0','1','1','1','0','The Boomstick');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('23035', '50600', '15', '0', '-50600', '1', '0', '');


-- ======================================================
-- Change Talon King Ikiss - Sethekk Halls Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18473', '50603', '100', '0', '-50603', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27936','0','1','1','1','0','Greaves of Desolation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27925','0','1','1','1','0','Ravenclaw Band');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27776','0','1','1','1','0','Shoulderpads of Assassination');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27980','0','1','1','1','0','Terokk\'s Nightmace');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27981','0','1','1','1','0','Sethekk Oracle Cloak');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27946','0','1','1','1','0','Avian Cloak of Feathers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27838','0','1','1','1','0','Incanter\'s Trousers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27875','0','1','1','1','0','Hallowed Trousers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27985','0','1','1','1','0','Deathforge Girdle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27986','0','1','1','1','0','Crow Wing Reaper');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50603','27948','0','1','1','1','0','Trousers of Oblivion');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20706', '50600', '15', '0', '-50600', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20706', '50604', '100', '0', '-50604', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50604','29259','0','1','1','1','0','Bracers of the Hunt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50604','29249','0','1','1','1','0','Bands of the Benevolent');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50604','32073','0','1','1','1','0','Spaulders of Dementia');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50604','29355','0','1','1','1','0','Terokk\'s Shadowstaff');



-- ======================================================
-- Change Public Item - Auchenai Crypts Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50700','30586','0','1','1','1','0','Seer\'s Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50700','30587','0','1','1','1','0','Champion\'s Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50700','30588','0','1','1','1','0','Potent Fire Opal');


-- ======================================================
-- Change Shirrak the Dead Watcher - Auchenai Crypts Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18371', '50701', '100', '0', '-50701', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50701','26055','0','1','1','1','0','Oculus of the Hidden Eye');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50701','27408','0','1','1','1','0','Hope Bearer Helm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50701','27410','0','1','1','1','0','Collar of Command');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50701','25964','0','1','1','1','0','Shaarde the Lesser');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50701','27409','0','1','1','1','0','Raven-Heart Headdress');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20318', '50700', '15', '0', '-50700', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20318', '50702', '100', '0', '-50702', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50702','27866','0','1','1','1','0','Scintillating Headdress of Second Sight');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50702','27864','0','1','1','1','0','Claw of the Watcher');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50702','27845','0','1','1','1','0','Magma Plume Boots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50702','27493','0','1','1','1','0','Gloves of the Deadwatcher');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50702','27865','0','1','1','1','0','Bracers of Shirrak');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50702','27847','0','1','1','1','0','Fanblade Pauldrons');


-- ======================================================
-- Change Exarch Maladaar - Auchenai Crypts Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18373', '50703', '100', '0', '-50703', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50703','27412','0','1','1','1','0','Ironstaff of Regeneration');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50703','27415','0','1','1','1','0','Darkguard Face Mask');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50703','27416','0','1','1','1','0','Fetish of the Fallen');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50703','27413','0','1','1','1','0','Ring of the Exarchs');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50703','27414','0','1','1','1','0','Mok\'Nathal Beast-Mask');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50703','27411','0','1','1','1','0','Slippers of Serenity');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20306', '50700', '15', '0', '-50700', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20306', '50704', '100', '0', '-50704', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50704','27523','0','1','1','1','0','Exarch\'s Diamond Band');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50704','27871','0','1','1','1','0','Maladaar\'s Blessed Chaplet');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50704','27869','0','1','1','1','0','Soulpriest\'s Ring of Resolve');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50704','27872','0','1','1','1','0','The Harvester of Souls');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50704','27867','0','1','1','1','0','Boots of the Unjust');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50704','27870','0','1','1','1','0','Doomplate Legguards');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20306', '50705', '100', '0', '-50705', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50705','29257','0','1','1','1','0','Sash of Arcane Visions');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50705','29244','0','1','1','1','0','Wave-Song Girdle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50705','29354','0','1','1','1','0','Light-Touched Stole of Altruism');



-- ======================================================
-- Change Public Item - Shadow Labyrinth Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50800','30560','0','1','1','1','0','Rune Covered Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50800','30563','0','1','1','1','0','Regal Tanzanite');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50800','30559','0','1','1','1','0','Etched Fire Opal');


-- ======================================================
-- Change Ambassador Hellmaw - Shadow Labyrinth Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18731', '50801', '100', '0', '-50801', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50801','27889','0','1','1','1','0','Jaedenfire Gloves of Annihilation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50801','27885','0','1','1','1','0','Soul-Wand of the Aldor');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50801','27884','0','1','1','1','0','Ornate Boots of the Sanctified');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50801','27886','0','1','1','1','0','Idol of the Emerald Queen');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50801','27888','0','1','1','1','0','Dream-Wing Helm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50801','27887','0','1','1','1','0','Platinum Shield of the Valorous');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20636', '50800', '15', '0', '-50800', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20636', '50801', '100', '0', '-50801', '1', '0', '');


-- ======================================================
-- Change Blackheart the Inciter - Shadow Labyrinth Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE entry=18667 AND item=25728;
UPDATE creature_loot_template SET ChanceOrQuestChance=2.5 WHERE entry=20637 AND item=25728;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18667', '50802', '100', '0', '-50802', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50802','27893','0','1','1','1','0','Ornate Leggings of the Venerated');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50802','27892','0','1','1','1','0','Cloak of the Inciter');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50802','27468','0','1','1','1','0','Moonglade Handwraps');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50802','27890','0','1','1','1','0','Wand of the Netherwing');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50802','28134','0','1','1','1','0','Brooch of Heightened Potential');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50802','27891','0','1','1','1','0','Adamantine Figurine');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20637', '50800', '15', '0', '-50800', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20637', '50802', '100', '0', '-50802', '1', '0', '');


-- ======================================================
-- Change Grandmaster Vorpil - Shadow Labyrinth Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18732', '50803', '100', '0', '-50803', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50803','27900','0','1','1','1','0','Jewel of Charismatic Mystique');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50803','27775','0','1','1','1','0','Hallowed Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50803','27898','0','1','1','1','0','Wrathfire Hand-Cannon');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50803','27901','0','1','1','1','0','Blackout Truncheon');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50803','27897','0','1','1','1','0','Breastplate of Many Graces');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20653', '50800', '15', '0', '-50800', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20653', '50803', '100', '0', '-50803', '1', '0', '');


-- ======================================================
-- Change Murmur - Shadow Labyrinth Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.5 WHERE entry=18708 AND item=24309;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.7 WHERE entry=20657 AND item=24309;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18708', '50804', '100', '0', '-50804', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27902','0','1','1','1','0','Silent Slippers of Meditation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27909','0','1','1','1','0','Tidefury Kilt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27910','0','1','1','1','0','Silvermoon Crest Shield');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','28230','0','1','1','1','0','Hallowed Garments');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27912','0','1','1','1','0','Harness of the Deep Currents');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','28232','0','1','1','1','0','Robe of Oblivion');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27903','0','1','1','1','0','Sonic Spear');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27778','0','1','1','1','0','Spaulders of Oblivion');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27913','0','1','1','1','0','Whispering Blade of Slaying');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27905','0','1','1','1','0','Greatsword of Horrid Dreams');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27803','0','1','1','1','0','Shoulderguards of the Bold');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50804','27908','0','1','1','1','0','Leggings of Assassination');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20657', '50800', '15', '0', '-50800', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20657', '50804', '100', '0', '-50804', '2', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20657', '50805', '100', '0', '-50805', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50805','29261','0','1','1','1','0','Girdle of Ferocity');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50805','30532','0','1','1','1','0','Kirin Tor Master\'s Trousers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50805','29357','0','1','1','1','0','Master Thief\'s Gloves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50805','29353','0','1','1','1','0','Shockwave Truncheon');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50805','29241','0','1','1','1','0','Belt of Depravity');



-- ======================================================
-- Change Public Item - Mana Tombs Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50900','30583','0','1','1','1','0','Timeless Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50900','30585','0','1','1','1','0','Glistening Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50900','30584','0','1','1','1','0','Enscribed Fire Opal');


-- ======================================================
-- Change Pandemonius - Mana Tombs Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18341', '50901', '100', '0', '-50901', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50901','25945','0','1','1','1','0','Creepjacker');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50901','25940','0','1','1','1','0','Idol of the Claw');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50901','25942','0','1','1','1','0','Faith Bearer\'s Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50901','25939','0','1','1','1','0','Voidfire Wand');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50901','28166','0','1','1','1','0','Shield of the Void');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50901','25941','0','1','1','1','0','Boots of the Outlander');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20267', '50900', '15', '0', '-50900', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20267', '50902', '100', '0', '-50902', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50902','27817','0','1','1','1','0','Starbolt Longbow');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50902','27818','0','1','1','1','0','Starry Robes of the Crescent');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50902','27816','0','1','1','1','0','Mindrage Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50902','27814','0','1','1','1','0','Twinblade of Mastery');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50902','27813','0','1','1','1','0','Boots of the Colossus');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50902','27815','0','1','1','1','0','Totem of the Astral Winds');


-- ======================================================
-- Change Tavarok - Mana Tombs Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18343', '50903', '100', '0', '-50903', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50903','25952','0','1','1','1','0','Scimitar of the Nexus-Stalkers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50903','25947','0','1','1','1','0','Lightning-Rod Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50903','25946','0','1','1','1','0','Nethershade Boots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50903','25944','0','1','1','1','0','Shaarde the Greater');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50903','25950','0','1','1','1','0','Staff of Polarities');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50903','25945','0','1','1','1','0','Cloak of Revival');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20268', '50900', '15', '0', '-50900', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20268', '50904', '100', '0', '-50904', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50904','27825','0','1','1','1','0','Predatory Gloves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50904','27824','0','1','1','1','0','Robe of the Great Dark Beyond');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50904','27823','0','1','1','1','0','Shard Encrusted Breastplate');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50904','27822','0','1','1','1','0','Crystal Band of Valor');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50904','27821','0','1','1','1','0','Extravagant Boots of Malice');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50904','27826','0','1','1','1','0','Mantle of the Sea Wolf');


-- ======================================================
-- Change Nexus Prince Shaffar - Mana Tombs Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=1.4 WHERE entry=18344 AND item=22921;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.4 WHERE entry=20266 AND item=22921;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18344', '50905', '100', '0', '-50905', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50905','25953','0','1','1','1','0','Scimitar of the Nexus-Stalkers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50905','25962','0','1','1','1','0','Lightning-Rod Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50905','25954','0','1','1','1','0','Nethershade Boots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50905','25957','0','1','1','1','0','Shaarde the Greater');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50905','25955','0','1','1','1','0','Staff of Polarities');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50905','25956','0','1','1','1','0','Cloak of Revival');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20266', '50900', '15', '0', '-50900', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20266', '50906', '100', '0', '-50906', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27831','0','1','1','1','0','Mantle of the Unforgiven');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27844','0','1','1','1','0','Pauldrons of Swift Retribution');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27843','0','1','1','1','0','Glyph-Lined Sash');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27827','0','1','1','1','0','Lucid Dream Bracers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27828','0','1','1','1','0','Warp-Scarab Brooch');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27840','0','1','1','1','0','Scepter of Sha\'tar');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27837','0','1','1','1','0','Wastewalker Leggings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27842','0','1','1','1','0','Grand Scepter of the Nexus-Kings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27798','0','1','1','1','0','Gauntlets of Vindication');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27835','0','1','1','1','0','Stillwater Girdle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','28400','0','1','1','1','0','Warp-Storm Warblade');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50906','27829','0','1','1','1','0','Axe of the Nexus-Kings');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20266', '50907', '100', '0', '-50907', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50907','29240','0','1','1','1','0','Bands of Negation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50907','30535','0','1','1','1','0','Forestwalker Kilt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50907','29352','0','1','1','1','0','Cobalt Band of Tyrigosa');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('50907','32082','0','1','1','1','0','The Fel Barrier');



-- ======================================================
-- Change Public Item - The Slave Pens Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51000','30605','0','1','1','1','0','Vivid Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51000','30604','0','1','1','1','0','Resplendent Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51000','30603','0','1','1','1','0','Royal Tanzanite');


-- ======================================================
-- Change Mennu the Betrayer - The Slave Pens Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=1.1 WHERE entry=17941 AND item=29674;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.1 WHERE entry=19893 AND item=29674;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17941', '51001', '100', '0', '-51001', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51001','24357','0','1','1','1','0','Vest of Living Lightning');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51001','24356','0','1','1','1','0','Wastewalker Shiv');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51001','24361','0','1','1','1','0','Spellfire Longsword');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51001','24360','0','1','1','1','0','Tracker\'s Belt]');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51001','24359','0','1','1','1','0','Princely Reign Leggings');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19893', '51000', '15', '0', '-51000', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19893', '51002', '100', '0', '-51002', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51002','27543','0','1','1','1','0','Starlight Dagger');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51002','27545','0','1','1','1','0','Mennu\'s Scaled Leggings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51002','27542','0','1','1','1','0','Cord of Belief');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51002','27544','0','1','1','1','0','Totem of Spontaneous Regrowth');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51002','27546','0','1','1','1','0','Traitor\'s Noose');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51002','27541','0','1','1','1','0','Archery Belt of the Broken');


-- ======================================================
-- Change Rokmar the Crackler - The Slave Pens Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=17991 WHERE entry=17991;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17991', '51003', '100', '0', '-51003', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51003','24376','0','1','1','1','0','Runed Fungalcap');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51003','24381','0','1','1','1','0','Coilfang Needler');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51003','24380','0','1','1','1','0','Calming Spore Reed');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51003','24379','0','1','1','1','0','Bogstrok Scale Cloak');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51003','24378','0','1','1','1','0','Coilfang Hammer of Renewal');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19895', '51000', '15', '0', '-51000', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19895', '51004', '100', '0', '-51004', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51004','27550','0','1','1','1','0','Ironscale War Cloak');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51004','27547','0','1','1','1','0','Coldwhisper Cord');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51004','27549','0','1','1','1','0','Wavefury Boots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51004','28124','0','1','1','1','0','Liar\'s Cord');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51004','27551','0','1','1','1','0','Skeletal Necklace of Battlerage');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51004','27548','0','1','1','1','0','Girdle of Many Blessings');


-- ======================================================
-- Change Quagmirran - The Slave Pens Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=17942 WHERE entry=17942;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17942', '51005', '100', '0', '-51005', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51005','24365','0','1','1','1','0','Deft Handguards');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51005','24364','0','1','1','1','0','Azureplate Greaves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51005','24363','0','1','1','1','0','Unscarred Breastplate');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51005','24366','0','1','1','1','0','Scorpid-Sting Mantle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51005','24362','0','1','1','1','0','Spore-Soaked Vaneer');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19894', '51000', '15', '0', '-51000', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19894', '51006', '100', '0', '-51006', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27673','0','1','1','1','0','Phosphorescent Blade');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27800','0','1','1','1','0','Earthsoul Britches');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27742','0','1','1','1','0','Mage-Fury Girdle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27713','0','1','1','1','0','Pauldrons of Desolation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27712','0','1','1','1','0','Shackles of Quagmirran');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27796','0','1','1','1','0','Mana-Etched Spaulders');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27740','0','1','1','1','0','Band of Ursol');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27741','0','1','1','1','0','Bleeding Hollow Warhammer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27714','0','1','1','1','0','Swamplight Lantern');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','28337','0','1','1','1','0','Breastplate of Righteous Fury');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27672','0','1','1','1','0','Girdle of the Immovable');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51006','27683','0','1','1','1','0','Quagmirran\'s Eye');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19894', '51007', '100', '0', '-51007', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51007','29242','0','1','1','1','0','Boots of Blasphemy');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51007','30538','0','1','1','1','0','Midnight Legguards');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51007','32078','0','1','1','1','0','Pauldrons of Wild Magic');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51007','29348','0','1','1','1','0','Adamantine Chain of the Unbroken');



-- ======================================================
-- Change Public Item - The Underbog Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51100','30608','0','1','1','1','0','Radiant Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51100','30607','0','1','1','1','0','Splendid Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51100','30606','0','1','1','1','0','Lambent Chrysoprase');


-- ======================================================
-- Change Hungarfen - The Underbog Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=17770 WHERE entry=17770;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17770', '51101', '100', '0', '-51101', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51101','24413','0','1','1','1','0','Totem of the Thunderhead');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51101','24451','0','1','1','1','0','Lykul Bloodbands');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51101','24452','0','1','1','1','0','Starlight Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51101','27631','0','1','1','1','0','Needle Shrike');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51101','24450','0','1','1','1','0','Manaspark Gloves');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20169', '51100', '15', '0', '-51100', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20169', '51102', '100', '0', '-51102', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51102','27745','0','1','1','1','0','Hungarhide Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51102','27743','0','1','1','1','0','Girdle of Living Flame');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51102','27747','0','1','1','1','0','Boggspine Knuckles');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51102','27748','0','1','1','1','0','Cassock of the Loyal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51102','27744','0','1','1','1','0','Idol of Ursoc');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51102','27746','0','1','1','1','0','Arcanium Signet Bands');


-- ======================================================
-- Change Ghaz'an - The Underbog Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=18105 WHERE entry=18105;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('18105', '51103', '100', '0', '-51103', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51103','24458','0','1','1','1','0','Studded Girdle of Virtue');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51103','24461','0','1','1','1','0','Hatebringer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51103','24460','0','1','1','1','0','Talisman of Tenacity');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51103','24459','0','1','1','1','0','Cloak of Healing Rays');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51103','24462','0','1','1','1','0','Luminous Pearls of Insight');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20168', '51100', '15', '0', '-51100', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20168', '51104', '100', '0', '-51104', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51104','27758','0','1','1','1','0','Hydra-fang Necklace');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51104','27761','0','1','1','1','0','Ring of the Shadow Deeps');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51104','27759','0','1','1','1','0','Headdress of the Tides');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51104','27757','0','1','1','1','0','Greatstaff of the Leviathan');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51104','27755','0','1','1','1','0','Girdle of Gallantry');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51104','27760','0','1','1','1','0','Dunewind Sash');


-- ======================================================
-- Change Swamplord Musel'ek - The Underbog Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=17826 WHERE entry=17826;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17826', '51105', '100', '0', '-51105', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51105','24454','0','1','1','1','0','Cloak of Enduring Swiftness');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51105','24453','0','1','1','1','0','Zangartooth Shortblade');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51105','24455','0','1','1','1','0','Tunic of the Nightwatcher');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51105','24457','0','1','1','1','0','Truth Bearer Shoulderguards');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51105','24456','0','1','1','1','0','Greaves of the Iron Guardian');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20183', '51100', '15', '0', '-51100', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20183', '51106', '100', '0', '-51106', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51106','27765','0','1','1','1','0','Armwraps of Disdain');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51106','27763','0','1','1','1','0','Crown of the Forest Lord');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51106','27766','0','1','1','1','0','Swampstone Necklace');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51106','27764','0','1','1','1','0','Hands of the Sun');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51106','27767','0','1','1','1','0','Bogreaver');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51106','27762','0','1','1','1','0','Weathered Band of the Swamplord');


-- ======================================================
-- Change The Black Stalker - The Underbog Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17882', '51107', '100', '0', '-51107', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51107','24464','0','1','1','1','0','The Stalker\'s Fangs');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51107','24466','0','1','1','1','0','Skulldugger\'s Leggings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51107','24463','0','1','1','1','0','Pauldrons of Brute Force');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51107','24481','0','1','1','1','0','Robes of the Augurer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51107','24465','0','1','1','1','0','Shamblehide Chestguard');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20184', '51100', '15', '0', '-51100', '1', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20184', '51108', '100', '0', '-51108', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27896','0','1','1','1','0','Alembic of Infernal Power');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27781','0','1','1','1','0','Demonfang Ritual Helm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27773','0','1','1','1','0','Barbaric Legstraps');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27779','0','1','1','1','0','Bone Chain Necklace');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27780','0','1','1','1','0','Ring of Fabled Hope');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27772','0','1','1','1','0','Stormshield of Renewal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27769','0','1','1','1','0','Endbringer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27771','0','1','1','1','0','Doomplate Shoulderguards');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27768','0','1','1','1','0','Oracle Belt of Timeless Mystery');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27770','0','1','1','1','0','Argussian Compass]');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27938','0','1','1','1','0','Savage Mask of the Lynx Lord');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51108','27907','0','1','1','1','0','Mana-Etched Pantaloons');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20184', '51109', '100', '0', '-51109', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51109','29265','0','1','1','1','0','Barkchip Boots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51109','30541','0','1','1','1','0','Stormsong Kilt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51109','29350','0','1','1','1','0','The Black Stalk');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51109','32081','0','1','1','1','0','Eye of the Stalker');



-- ======================================================
-- Change Public Item - The Steamvault Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51200','30550','0','1','1','1','0','Sundered Chrysoprase');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51200','30551','0','1','1','1','0','Infused Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51200','30549','0','1','1','1','0','Shifting Tanzanite');


-- ======================================================
-- Change Hydromancer Thespia - The Steamvault Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE entry=17797 AND item=29673;
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE entry=20629 AND item=29673;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17797', '51201', '100', '0', '-51201', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51201','27508','0','1','1','1','0','Incanter\'s Gloves');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51201','27783','0','1','1','1','0','Moonrage Girdle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51201','27787','0','1','1','1','0','Chestguard of No Remorse');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51201','27784','0','1','1','1','0','Scintillating Coral Band');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51201','27789','0','1','1','1','0','Cloak of Whispering Shells');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20629', '51200', '15', '0', '-51200', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20629', '51201', '100', '0', '-51201', '1', '0', '');


-- ======================================================
-- Change Mekgineer Steamrigger - The Steamvault Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.8 WHERE entry=17796 AND item=23887;
UPDATE creature_loot_template SET ChanceOrQuestChance=2.9 WHERE entry=20630 AND item=23887;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17796', '51202', '100', '0', '-51202', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51202','27794','0','1','1','1','0','Recoilless Rocket Ripper X-54');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51202','27790','0','1','1','1','0','Mask of Penance');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51202','27791','0','1','1','1','0','Serpentcrest Life-Staff');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51202','27793','0','1','1','1','0','Earth Mantle Handwraps');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51202','27792','0','1','1','1','0','Steam-Hinge Chain of Valor');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20630', '51200', '15', '0', '-51200', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20630', '51202', '100', '0', '-51202', '1', '0', '');


-- ======================================================
-- Change Warlord Kalithresh - The Steamvault Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.5 WHERE entry=17798 AND item=24313;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.8 WHERE entry=20633 AND item=24313;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17798', '51203', '100', '0', '-51203', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27805','0','1','1','1','0','Ring of the Silver Hand');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27799','0','1','1','1','0','Vermillion Robes of the Dominant');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27806','0','1','1','1','0','Fathomheart Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27737','0','1','1','1','0','Moonglade Shoulders');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27738','0','1','1','1','0','Incanter\'s Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27795','0','1','1','1','0','Sash of Serpentra');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27510','0','1','1','1','0','Tidefury Gauntlets');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27804','0','1','1','1','0','Devilshark Cape');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27475','0','1','1','1','0','Gauntlets of the Bold');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','28203','0','1','1','1','0','Breastplate of the Righteous');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27801','0','1','1','1','0','Beast Lord Mantle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51203','27874','0','1','1','1','0','Beast Lord Leggings');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20633', '51200', '15', '0', '-51200', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20633', '51203', '100', '0', '-51203', '2', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20633', '51204', '100', '0', '-51204', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51204','29243','0','1','1','1','0','Wave-Fury Vambraces');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51204','29463','0','1','1','1','0','Amber Bands of the Aggressor');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51204','30543','0','1','1','1','0','Pontifex Kilt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51204','29351','0','1','1','1','0','Wrathtide Longbow');



-- ======================================================
-- Change Public Item - The Botanica Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51300','30574','0','1','1','1','0','Brutal Tanzanite');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51300','30573','0','1','1','1','0','Mysterious Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51300','30572','0','1','1','1','0','Imperial Tanzanite');


-- ======================================================
-- Change Commander Sarannis - The Botanica Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17976', '51301', '100', '0', '-51301', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51301','28296','0','1','1','1','0','Libram of the Lightbringer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51301','28306','0','1','1','1','0','Towering Mantle of the Hunt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51301','28304','0','1','1','1','0','Prismatic Mittens of Mending');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51301','28301','0','1','1','1','0','Syrannis\' Mystic Sheen');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51301','28311','0','1','1','1','0','Revenger');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21551', '51300', '15', '0', '-51300', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21551', '51301', '100', '0', '-51301', '1', '0', '');


-- ======================================================
-- Change High Botanist Freywinn - The Botanica Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=1.4 WHERE entry=17975 AND item=23617;
UPDATE creature_loot_template SET ChanceOrQuestChance=3.5 WHERE entry=21558 AND item=23617;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17975', '51302', '100', '0', '-51302', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51302','28317','0','1','1','1','0','Energis Armwraps');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51302','28315','0','1','1','1','0','Stormreaver Warblades');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51302','28318','0','1','1','1','0','Obsidian Clodstompers');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51302','28321','0','1','1','1','0','Enchanted Thorium Torque');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51302','28316','0','1','1','1','0','Aegis of the Sunbird');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21558', '51300', '15', '0', '-51300', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21558', '51302', '100', '0', '-51302', '1', '0', '');


-- ======================================================
-- Change Thorngrin the Tender - The Botanica Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=2.1 WHERE entry=17978 AND item=24310;
UPDATE creature_loot_template SET ChanceOrQuestChance=4.2 WHERE entry=21581 AND item=24310;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17978', '51303', '100', '0', '-51303', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51303','28322','0','1','1','1','0','Runed Dagger of Solace');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51303','28323','0','1','1','1','0','Ring of Umbral Doom');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51303','28327','0','1','1','1','0','Arcane Netherband');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51303','28325','0','1','1','1','0','Dreamer\'s Dragonstaff');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51303','28324','0','1','1','1','0','Gauntlets of Cruel Intention');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21581', '51300', '15', '0', '-51300', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21581', '51303', '100', '0', '-51303', '1', '0', '');


-- ======================================================
-- Change Laj - The Botanica Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=17980 WHERE entry=17980;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17980', '51304', '100', '0', '-51304', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51304','28339','0','1','1','1','0','Boots of the Shifting Sands');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51304','28328','0','1','1','1','0','Mithril-Bark Cloak');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51304','27739','0','1','1','1','0','Spaulders of the Righteous');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51304','28338','0','1','1','1','0','Devil-Stitched Leggings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51304','28340','0','1','1','1','0','Mantle of Autumn');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21559', '51300', '15', '0', '-51300', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21559', '51304', '100', '0', '-51304', '1', '0', '');


-- ======================================================
-- Change Warp Splinter - The Botanica Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=0.4 WHERE entry=17977 AND item=24311;
UPDATE creature_loot_template SET ChanceOrQuestChance=3.1 WHERE entry=21582 AND item=24311;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('17977', '51305', '100', '0', '-51305', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28371','0','1','1','1','0','Netherfury Cape');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28349','0','1','1','1','0','Tidefury Helm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28370','0','1','1','1','0','Bangle of Endless Blessings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28367','0','1','1','1','0','Greatsword of Forlorn Visions');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28343','0','1','1','1','0','Jagged Bark Pendant');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28347','0','1','1','1','0','Warpscale Leggings');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28348','0','1','1','1','0','Moonglade Cowl');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28345','0','1','1','1','0','Warp Splinter\'s Thorn');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28342','0','1','1','1','0','Warp Infused Drape');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28350','0','1','1','1','0','Warhelm of the Bold');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28228','0','1','1','1','0','Beast Lord Cuirass');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28229','0','1','1','1','0','Incanter\'s Robe');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51305','28341','0','1','1','1','0','Warpstaff of Arcanum');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21582', '51300', '15', '0', '-51300', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21582', '51305', '100', '0', '-51305', '2', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21582', '51306', '100', '0', '-51306', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51306','29258','0','1','1','1','0','Boots of Ethereal Manipulation');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51306','29262','0','1','1','1','0','Boots of the Endless Hunt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51306','32072','0','1','1','1','0','Gauntlets of Dissension');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51306','29359','0','1','1','1','0','Feral Staff of Lashing');



-- ======================================================
-- Change Public Item - The Arcatraz Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51400','30575','0','1','1','1','0','Nimble Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51400','30581','0','1','1','1','0','Durable Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51400','30582','0','1','1','1','0','Deadly Fire Opal');


-- ======================================================
-- Change Zereketh the Unbound - The Arcatraz Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=20870 WHERE entry=20870;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20870', '51401', '100', '0', '-51401', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51401','28384','0','1','1','1','0','Outland Striders');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51401','28373','0','1','1','1','0','Cloak of Scintillating Auras');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51401','28374','0','1','1','1','0','Mana-Sphere Shoulderguards');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51401','28372','0','1','1','1','0','Idol of Feral Shadows');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51401','28375','0','1','1','1','0','Rubium War-Girdle');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21626', '51400', '15', '0', '-51400', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21626', '51401', '100', '0', '-51401', '1', '0', '');


-- ======================================================
-- Change Dalliah the Doomsayer - The Arcatraz Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=2.5 WHERE entry=20885 AND item=24308;
UPDATE creature_loot_template SET ChanceOrQuestChance=5.1 WHERE entry=21590 AND item=24308;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20885', '51402', '100', '0', '-51402', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51402','28392','0','1','1','1','0','Reflex Blades');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51402','28386','0','1','1','1','0','Nether Core\'s Control Rod');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51402','28391','0','1','1','1','0','Worldfire Chestguard');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51402','28387','0','1','1','1','0','Lamp of Peaceful Repose');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51402','28390','0','1','1','1','0','Thatia\'s Self-Correcting Gauntlets');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21590', '51400', '15', '0', '-51400', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21590', '51402', '100', '0', '-51402', '1', '0', '');


-- ======================================================
-- Change Wrath Scryer Soccothrates - The Arcatraz Reference Loot
-- ======================================================
UPDATE creature_template SET LootId=20886 WHERE entry=20886;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20886', '51403', '100', '0', '-51403', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51403','28394','0','1','1','1','0','Ryngo\'s Band of Ingenuity');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51403','28393','0','1','1','1','0','Warmaul of Infused Light');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51403','28397','0','1','1','1','0','Emberhawk Crossbow');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51403','28398','0','1','1','1','0','The Sleeper\'s Cord');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51403','28396','0','1','1','1','0','Gloves of the Unbound');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21624', '51400', '15', '0', '-51400', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21624', '51403', '100', '0', '-51403', '1', '0', '');


-- ======================================================
-- Change Harbinger Skyriss - The Arcatraz Reference Loot
-- ======================================================
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('20912', '51404', '100', '0', '-51404', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28416','0','1','1','1','0','Hungering Spineripper');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28231','0','1','1','1','0','Tidefury Chestpiece');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28413','0','1','1','1','0','Hallowed Crown');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28419','0','1','1','1','0','Choker of Fluid Thought');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28406','0','1','1','1','0','Sigil-Laced Boots');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28403','0','1','1','1','0','Doomplate Chestguard');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28407','0','1','1','1','0','Elementium Band of the Sentry');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28414','0','1','1','1','0','Helm of Assassination');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28412','0','1','1','1','0','Lamp of Peaceful Radiance');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28205','0','1','1','1','0','Breastplate of the Bold');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28418','0','1','1','1','0','Shiffar\'s Nexus-Horn');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51404','28415','0','1','1','1','0','Hood of Oblivion');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21599', '51400', '15', '0', '-51400', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21599', '51404', '100', '0', '-51404', '2', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21599', '51405', '100', '0', '-51405', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51405','29248','0','1','1','1','0','Shadowstep Striders');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51405','29252','0','1','1','1','0','Bracers of Dignity');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51405','29241','0','1','1','1','0','Belt of Depravity');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51405','29360','0','1','1','1','0','Vileblade of the Betrayer');


-- ======================================================
-- Change Public Item - The Mechanar Reference Loot
-- ======================================================
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51500','30564','0','1','1','1','0','Shining Fire Opal');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51500','30566','0','1','1','1','0','Defender\'s Tanzanite');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51500','30565','0','1','1','1','0','Assassin\'s Fire Opal');


-- ======================================================
-- Change Mechano Lord Capacitus - The Mechanar Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=4.4 WHERE entry=19219 AND item=35582;
UPDATE creature_loot_template SET ChanceOrQuestChance=6.7 WHERE entry=21533 AND item=35582;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19219', '51501', '100', '0', '-51501', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51501','28253','0','1','1','1','0','Plasma Rat\'s Hyper-Scythe');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51501','28254','0','1','1','1','0','Warp Engineer\'s Prismatic Chain');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51501','28255','0','1','1','1','0','Lunar-Claw Pauldrons');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51501','28256','0','1','1','1','0','Thoriumweave Cloak');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51501','28257','0','1','1','1','0','Hammer of the Penitent');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21533', '51500', '15', '0', '-51500', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21533', '51501', '100', '0', '-51501', '1', '0', '');


-- ======================================================
-- Change Nethermancer Sepethrea - The Mechanar Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=2 WHERE entry=19221 AND item=22920;
UPDATE creature_loot_template SET ChanceOrQuestChance=4 WHERE entry=21536 AND item=22920;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19221', '51502', '100', '0', '-51502', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51502','28259','0','1','1','1','0','Cosmic Lifeband');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51502','28258','0','1','1','1','0','Nethershrike');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51502','28260','0','1','1','1','0','Manual of the Nethermancer');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51502','28262','0','1','1','1','0','Jade-Skull Breastplate');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51502','28263','0','1','1','1','0','Stellaris');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21536', '51500', '15', '0', '-51500', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21536', '51502', '100', '0', '-51502', '1', '0', '');


-- ======================================================
-- Change Pathaleon the Calculator - The Mechanar Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=4 WHERE entry=19220 AND item=21907;
UPDATE creature_loot_template SET ChanceOrQuestChance=8 WHERE entry=21537 AND item=21907;

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('19220', '51503', '100', '0', '-51503', '2', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28266','0','1','1','1','0','Molten Earth Kilt');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28278','0','1','1','1','0','Incanter\'s Cowl');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28275','0','1','1','1','0','Beast Lord Helm');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28202','0','1','1','1','0','Moonglade Robe');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28204','0','1','1','1','0','Tunic of Assassination');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28286','0','1','1','1','0','Telescopic Sharprifle');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28269','0','1','1','1','0','Baba\'s Cloak of Arcanistry');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28267','0','1','1','1','0','Edge of the Cosmos');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','27899','0','1','1','1','0','Mana Wrath');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28285','0','1','1','1','0','Helm of the Righteous');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28288','0','1','1','1','0','Abacus of Violent Odds');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51503','28265','0','1','1','1','0','Dath\'Remar\'s Ring of Defense');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21537', '51500', '15', '0', '-51500', '1', '0', '');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21537', '51503', '100', '0', '-51503', '2', '0', '');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('21537', '51504', '100', '0', '-51504', '1', '0', '');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51504','30533','0','1','1','1','0','Vanquisher\'s Legplates');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51504','29251','0','1','1','1','0','Boots of the Pious');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51504','32076','0','1','1','1','0','Handguards of the Steady');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('51504','29362','0','1','1','1','0','The Sun Eater');



-- ======================================================
-- Change - Zul'Aman Reference Loot
-- ======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=3.2 WHERE entry=23574 AND item=33307;
UPDATE creature_loot_template SET ChanceOrQuestChance=2.8 WHERE entry=23576 AND item=33307;
UPDATE creature_loot_template SET ChanceOrQuestChance=2.6 WHERE entry=23577 AND item=33307;
UPDATE creature_loot_template SET ChanceOrQuestChance=3.1 WHERE entry=23578 AND item=33307;
UPDATE creature_loot_template SET ChanceOrQuestChance=2.2 WHERE entry=24239 AND item=33307;
UPDATE creature_loot_template SET ChanceOrQuestChance=1.8 WHERE entry=23863 AND item=33307;