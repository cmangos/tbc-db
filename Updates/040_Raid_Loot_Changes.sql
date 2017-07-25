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



-- ===================================================
-- Change Moroes - Karazhan Reference Loot
-- ===================================================
DELETE FROM reference_loot_template_names WHERE entry IN (40205,40206);
insert into `reference_loot_template_names` (`entry`, `name`) values('40205','Karazhan (Boss Loot) - Moroes - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40206','Karazhan (Boss Loot) - Moroes - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40205,40206);
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



-- ========================================
-- Change Illhoof - Karazhan Reference Loot
-- ========================================
DELETE FROM reference_loot_template_names WHERE entry IN (40215,40216);
insert into `reference_loot_template_names` (`entry`, `name`) values('40215','Karazhan (Boss Loot) - Terestian Illhoof - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40216','Karazhan (Boss Loot) - Terestian Illhoof - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40215,40216);
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



-- ==============================================
-- Change Shade of Aran - Karazhan Reference Loot
-- ==============================================
DELETE FROM reference_loot_template_names WHERE entry IN (40217,40218);
insert into `reference_loot_template_names` (`entry`, `name`) values('40217','Karazhan (Boss Loot) - Shade of Aran - Epic Items (Group 1)');
insert into `reference_loot_template_names` (`entry`, `name`) values('40218','Karazhan (Boss Loot) - Shade of Aran - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40217,40218);
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













