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



-- ====================
-- Attumen the Huntsman
-- ====================
DELETE FROM reference_loot_template_names WHERE entry IN (40203,40204);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40203','Karazhan (Boss Loot) - Attumen the Huntsman - Epic Items (Group 1)'),
('40204','Karazhan (Boss Loot) - Attumen the Huntsman - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40203,40204);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Group 1
('40203','28453','0','1','1','1','0','Bracers of the White Stag'),
('40203','28454','0','1','1','1','0','Stalker\'s War Bands'),
('40203','28477','0','1','1','1','0','Harbinger Bands'),
('40203','28502','0','1','1','1','0','Vambraces of Courage'),
('40203','28503','0','1','1','1','0','Whirlwind Bracers'),
('40203','28504','0','1','1','1','0','Steelhawk Crossbow'),
-- Group 2
('40204','28505','0','1','1','1','0','Gauntlets of Renewed Hope'),
('40204','28506','0','1','1','1','0','Gloves of Dexterous Manipulation'),
('40204','28507','0','1','1','1','0','Handwraps of Flowing Thought'),
('40204','28508','0','1','1','1','0','Gloves of Saintly Blessings'),
('40204','28509','0','1','1','1','0','Worgen Claw Necklace'),
('40204','28510','0','1','1','1','0','Spectral Band of Innervation');


-- ======
-- Moroes
-- ======
DELETE FROM reference_loot_template_names WHERE entry IN (40205,40206);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40205','Karazhan (Boss Loot) - Moroes - Epic Items (Group 1)'),
('40206','Karazhan (Boss Loot) - Moroes - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40205,40206);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Group 1
('40205','28524','0','1','1','1','0','Emerald Ripper'),
('40205','28528','0','1','1','1','0','Moroes\' Lucky Pocket Watch'),
('40205','28529','0','1','1','1','0','Royal Cloak of Arathi Kings'),
('40205','28530','0','1','1','1','0','Brooch of Unquenchable Fury'),
('40205','28545','0','1','1','1','0','Edgewalker Longboots'),
('40205','28566','0','1','1','1','0','Crimson Girdle of the Indomitable'),
-- Group 2
('40206','28525','0','1','1','1','0','Signet of Unshakable Faith'),
('40206','28565','0','1','1','1','0','Nethershard Girdle'),
('40206','28567','0','1','1','1','0','Belt of Gale Force'),
('40206','28568','0','1','1','1','0','Idol of the Avian Heart'),
('40206','28569','0','1','1','1','0','Boots of Valiance'),
('40206','28570','0','1','1','1','0','Shadow-Cloak of Dalaran');


-- ================
-- Maiden of Virtue
-- ================
DELETE FROM reference_loot_template_names WHERE entry IN (40207,40208);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40207','Karazhan (Boss Loot) - Maiden of Virtue - Epic Items (Group 1)'),
('40208','Karazhan (Boss Loot) - Maiden of Virtue - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40207,40208);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Group 1
('40207','28511','0','1','1','1','0','Bands of Indwelling'),
('40207','28512','0','1','1','1','0','Bracers of Justice'),
('40207','28514','0','1','1','1','0','Bracers of Maliciousness'),
('40207','28515','0','1','1','1','0','Bands of Nefarious Deeds'),
('40207','28517','0','1','1','1','0','Boots of Foretelling'),
('40207','28522','0','1','1','1','0','Shard of the Virtuous'),
-- Group 2
('40208','28516','0','1','1','1','0','Barbed Choker of Discipline'),
('40208','28518','0','1','1','1','0','Iron Gauntlets of the Maiden'),
('40208','28519','0','1','1','1','0','Gloves of Quickening'),
('40208','28520','0','1','1','1','0','Gloves of Centering'),
('40208','28521','0','1','1','1','0','Mitts of the Treemender'),
('40208','28523','0','1','1','1','0','Totem of Healing Rains');


-- ===========
-- Opera Event
-- ===========
DELETE FROM reference_loot_template_names WHERE entry IN (40209,40210,40211,40212);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40209','Karazhan (Boss Loot) - All Opera Event Bosses - Epic Items'),
('40210','Karazhan (Boss Loot) - The Big Bad Wolf - Epic Items'),
('40211','Karazhan (Boss Loot) - Julianne - Epic Items'),
('40212','Karazhan (Boss Loot) - The Crone - Epic Items');

DELETE FROM reference_loot_template WHERE entry IN (40209,40210,40211,40212);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Shared Loot
('40209','28589','0','1','1','1','0','Beastmaw Pauldrons'),
('40209','28590','0','1','1','1','0','Ribbon of Sacrifice'),
('40209','28591','0','1','1','1','0','Earthsoul Leggings'),
('40209','28592','0','1','1','1','0','Libram of Souls Redeemed'),
('40209','28593','0','1','1','1','0','Eternium Greathelm'),
('40209','28594','0','1','1','1','0','Trial-Fire Trousers'),
-- The Big Bad Wolf
('40210','28581','0','1','1','1','0','Wolfslayer Sniper Rifle'),
('40210','28582','0','1','1','1','0','Red Riding Hood\'s Cloak'),
('40210','28583','0','1','1','1','0','Big Bad Wolf\'s Head'),
('40210','28584','0','1','1','1','0','Big Bad Wolf\'s Paw'),
-- Julianne
('40211','28572','0','1','1','1','0','Blade of the Unrequited'),
('40211','28573','0','1','1','1','0','Despair'),
('40211','28578','0','1','1','1','0','Masquerade Gown'),
('40211','28579','0','1','1','1','0','Romulo\'s Poison Vial'),
-- The Crone
('40212','28585','0','1','1','1','0','Ruby Slippers'),
('40212','28586','0','1','1','1','0','Wicked Witch\'s Hat'),
('40212','28587','0','1','1','1','0','Legacy'),
('40212','28588','0','1','1','1','0','Blue Diamond Witchwand');


-- ===========
-- The Curator
-- ===========
DELETE FROM reference_loot_template_names WHERE entry IN (40213,40214);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40213','Karazhan (Boss Loot) - The Curator - Epic Items - (Tokens Only)'),
('40214','Karazhan (Boss Loot) - The Curator - Epic Items - (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40213,40214);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Token Items
('40213','29756','0','1','1','1','0','Gloves of the Fallen Hero'),
('40213','29757','0','1','1','1','0','Gloves of the Fallen Champion'),
('40213','29758','0','1','1','1','0','Gloves of the Fallen Defender'),
-- Non Token Items
('40214','28612','0','1','1','1','0','Pauldrons of the Solace-Giver'),
('40214','28621','0','1','1','1','0','Wrynn Dynasty Greaves'),
('40214','28631','0','1','1','1','0','Dragon-Quake Shoulderguards'),
('40214','28633','0','1','1','1','0','Staff of Infinite Mysteries'),
('40214','28647','0','1','1','1','0','Forest Wind Shoulderpads'),
('40214','28649','0','1','1','1','0','Garona\'s Signet Ring');


-- =================
-- Terestian Illhoof
-- =================
DELETE FROM reference_loot_template_names WHERE entry IN (40215,40216);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40215','Karazhan (Boss Loot) - Terestian Illhoof - Epic Items (Group 1)'),
('40216','Karazhan (Boss Loot) - Terestian Illhoof - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40215,40216);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Group 1
('40215','28652','0','1','1','1','0','Cincture of Will'),
('40215','28654','0','1','1','1','0','Malefic Girdle'),
('40215','28655','0','1','1','1','0','Cord of Nature\'s Sustenance'),
('40215','28656','0','1','1','1','0','Girdle of the Prowler'),
('40215','28658','0','1','1','1','0','Terestian\'s Stranglestaff'),
('40215','28660','0','1','1','1','0','Gilded Thorium Cloak'),
-- Group 2
('40216','28653','0','1','1','1','0','Shadowvine Cloak of Infusion'),
('40216','28657','0','1','1','1','0','Fool\'s Bane'),
('40216','28659','0','1','1','1','0','Xavian Stiletto'),
('40216','28661','0','1','1','1','0','Mender\'s Heart-Ring'),
('40216','28662','0','1','1','1','0','Breastplate of the Lightbinder'),
('40216','28785','0','1','1','1','0','The Lightning Capacitor');


-- =============
-- Shade of Aran
-- =============
DELETE FROM reference_loot_template_names WHERE entry IN (40217,40218);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40217','Karazhan (Boss Loot) - Shade of Aran - Epic Items (Group 1)'),
('40218','Karazhan (Boss Loot) - Shade of Aran - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40217,40218);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Group 1
('40217','28670','0','1','1','1','0','Boots of the Infernal Coven'),
('40217','28673','0','1','1','1','0','Tirisfal Wand of Ascendancy'),
('40217','28674','0','1','1','1','0','Saberclaw Talisman'),
('40217','28726','0','1','1','1','0','Mantle of the Mind Flayer'),
('40217','28727','0','1','1','1','0','Pendant of the Violet Eye'),
('40217','28728','0','1','1','1','0','Aran\'s Soothing Sapphire'),
-- Group 2
('40218','28663','0','1','1','1','0','Boots of the Incorrupt'),
('40218','28666','0','1','1','1','0','Pauldrons of the Justice-Seeker'),
('40218','28669','0','1','1','1','0','Rapscallion Boots'),
('40218','28671','0','1','1','1','0','Steelspine Faceguard'),
('40218','28672','0','1','1','1','0','Drape of the Dark Reavers'),
('40218','28675','0','1','1','1','0','Shermanar Great-Ring');


-- ===========
-- Netherspite
-- ===========
DELETE FROM reference_loot_template_names WHERE entry IN (40219,40220);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40219','Karazhan (Boss Loot) - Netherspite - Epic Items (Group 1)'),
('40220','Karazhan (Boss Loot) - Netherspite - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40219,40220);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Group 1
('40219','28729','0','1','1','1','0','Spiteblade'),
('40219','28730','0','1','1','1','0','Mithril Band of the Unscarred'),
('40219','28731','0','1','1','1','0','Shining Chain of the Afterworld'),
('40219','28732','0','1','1','1','0','Cowl of Defiance'),
('40219','28733','0','1','1','1','0','Girdle of Truth'),
('40219','28734','0','1','1','1','0','Jewel of Infinite Possibilities'),
-- Group 2
('40220','28735','0','1','1','1','0','Earthblood Chestguard'),
('40220','28740','0','1','1','1','0','Rip-Flayer Leggings'),
('40220','28741','0','1','1','1','0','Skulker\'s Greaves'),
('40220','28742','0','1','1','1','0','Pantaloons of Repentance'),
('40220','28743','0','1','1','1','0','Mantle of Abrahmis'),
('40220','28744','0','1','1','1','0','Uni-Mind Headdress');


-- =========
-- Nightbane
-- =========
DELETE FROM reference_loot_template_names WHERE entry IN (40221,40222);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40221','Karazhan (Boss Loot) - Nightbane - Epic Items (Group 1)'),
('40222','Karazhan (Boss Loot) - Nightbane - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40221,40222);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Group 1
('40221','28597','0','1','1','1','0','Panzar\'Thar Breastplate'),
('40221','28599','0','1','1','1','0','Scaled Breastplate of Carnage'),
('40221','28600','0','1','1','1','0','Stonebough Jerkin'),
('40221','28601','0','1','1','1','0','Chestguard of the Conniver'),
('40221','28602','0','1','1','1','0','Robe of the Elder Scribes'),
('40221','28603','0','1','1','1','0','Talisman of Nightbane'),
-- Group 2
('40222','28604','0','1','1','1','0','Nightstaff of the Everliving'),
('40222','28606','0','1','1','1','0','Shield of Impenetrable Darkness'),
('40222','28608','0','1','1','1','0','Ironstriders of Urgency'),
('40222','28609','0','1','1','1','0','Emberspur Talisman'),
('40222','28610','0','1','1','1','0','Ferocious Swift-Kickers'),
('40222','28611','0','1','1','1','0','Dragonheart Flameshield');


-- ==================
-- Dust Covered Chest
-- ==================
DELETE FROM reference_loot_template_names WHERE entry IN (40223,40224);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40223','Karazhan (Boss Loot) - Dust Covered Chest (Chess Event) - Epic Items (Group 1)'),
('40224','Karazhan (Boss Loot) - Dust Covered Chest (Chess Event) - Epic Items (Group 2)');

DELETE FROM reference_loot_template WHERE entry IN (40223,40224);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Group 1
('40223','28745','0','1','1','1','0','Mithril Chain of Heroism'),
('40223','28750','0','1','1','1','0','Girdle of Treachery'),
('40223','28746','0','1','1','1','0','Fiend Slayer Boots'),
('40223','28747','0','1','1','1','0','Battlescar Boots'),
('40223','28749','0','1','1','1','0','King\'s Defender'),
('40223','28755','0','1','1','1','0','Bladed Shoulderpads of the Merciless'),
-- Group 2
('40224','28748','0','1','1','1','0','Legplates of the Innocent'),
('40224','28751','0','1','1','1','0','Heart-Flame Leggings'),
('40224','28752','0','1','1','1','0','Forestlord Striders'),
('40224','28753','0','1','1','1','0','Ring of Recurrence'),
('40224','28754','0','1','1','1','0','Triptych Shield of the Ancients'),
('40224','28756','0','1','1','1','0','Headdress of the High Potentate');


-- =================
-- Prince Malchezaar
-- =================
DELETE FROM reference_loot_template_names WHERE entry IN (40225,40226,40227);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40225','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Tokens Only)'),
('40226','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Group 1) - (Non-Tokens Only)'),
('40227','Karazhan (Boss Loot) - Prince Malchezaar - Epic Items (Group 2) - (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40225,40226,40227);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Token Items
('40225','29759','0','1','1','1','0','Helm of the Fallen Hero'),
('40225','29760','0','1','1','1','0','Helm of the Fallen Champion'),
('40225','29761','0','1','1','1','0','Helm of the Fallen Defender'),
-- Group 1 - Non Token Items
('40226','28757','0','1','1','1','0','Ring of a Thousand Marks'),
('40226','28762','0','1','1','1','0','Adornment of Stolen Souls'),
('40226','28763','0','1','1','1','0','Jade Ring of the Everliving'),
('40226','28764','0','1','1','1','0','Farstrider Wildercloak'),
('40226','28765','0','1','1','1','0','Stainless Cloak of the Pure Hearted'),
('40226','28766','0','1','1','1','0','Ruby Drape of the Mysticant'),
-- Group 2 - Non Token Items
('40227','28767','0','1','1','1','0','The Decapitator'),
('40227','28768','0','1','1','1','0','Malchazeen'),
('40227','28770','0','1','1','1','0','Nathrezim Mindblade'),
('40227','28771','0','1','1','1','0','Light\'s Justice'),
('40227','28772','0','1','1','1','0','Sunfury Bow of the Phoenix'),
('40227','28773','0','1','1','1','0','Gorehowl');


-- =================
-- High King Maulgar
-- =================
DELETE FROM reference_loot_template_names WHERE entry IN (40300,40301);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40300','Gruul\'s Lair (Boss Loot) - High King Maulgar - Epic Items (Tokens Only)'),
('40301','Gruul\'s Lair (Boss Loot) - High King Maulgar - Epic Items (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40300,40301);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Token Items
('40300','29762','0','1','1','1','0','Pauldrons of the Fallen Hero'),
('40300','29763','0','1','1','1','0','Pauldrons of the Fallen Champion'),
('40300','29764','0','1','1','1','0','Pauldrons of the Fallen Defender'),
-- Non Token Items
('40301','28795','0','1','1','1','0','Bladespire Warbands'),
('40301','28796','0','1','1','1','0','Malefic Mask of the Shadows'),
('40301','28797','0','1','1','1','0','Brute Cloak of the Ogre-Magi'),
('40301','28799','0','1','1','1','0','Belt of Divine Inspiration'),
('40301','28800','0','1','1','1','0','Hammer of the Naaru'),
('40301','28801','0','1','1','1','0','Maulgar\'s Warhelm');


-- ======================
-- Gruul the Dragonkiller
-- ======================
DELETE FROM reference_loot_template_names WHERE entry IN (40302,40303,40304);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40302','Gruul\'s Lair (Boss Loot) - Gruul the Dragonkiller - Epic Items (Tokens Only)'),
('40303','Gruul\'s Lair (Boss Loot) - Gruul the Dragonkiller - Epic Items (Group 1) - (Non-Tokens Only)'),
('40304','Gruul\'s Lair (Boss Loot) - Gruul the Dragonkiller - Epic Items (Group 2) - (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40302,40303,40304);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Token Items
('40302','29765','0','1','1','1','0','Leggings of the Fallen Hero'),
('40302','29766','0','1','1','1','0','Leggings of the Fallen Champion'),
('40302','29767','0','1','1','1','0','Leggings of the Fallen Defender'),
-- Group 1 - Non Token Items
('40303','28824','0','1','1','1','0','Gauntlets of Martial Perfection'),
('40303','28825','0','1','1','1','0','Aldori Legacy Defender'),
('40303','28828','0','1','1','1','0','Gronn-Stitched Girdle'),
('40303','28830','0','1','1','1','0','Dragonspine Trophy'),
('40303','28794','0','1','1','1','0','Axe of the Gronn Lords'),
('40303','28827','0','1','1','1','0','Gauntlets of the Dragonslayer'),
('40303','28826','0','1','1','1','0','Shuriken of Negation'),
-- Group 2 - Non Token Items
('40304','28802','0','1','1','1','0','Bloodmaw Magus-Blade'),
('40304','28803','0','1','1','1','0','Cowl of Nature\'s Breath'),
('40304','28804','0','1','1','1','0','Collar of Cho\'gall'),
('40304','28810','0','1','1','1','0','Windshear Boots'),
('40304','28822','0','1','1','1','0','Teeth of Gruul'),
('40304','28823','0','1','1','1','0','Eye of Gruul');


-- ===========
-- Magtheridon
-- ===========
DELETE FROM reference_loot_template_names WHERE entry IN (40400,40401,40402);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40400','Magtheridon\'s Lair (Boss Loot) - Magtheridon - Epic Items (Tokens Only)'),
('40401','Magtheridon\'s Lair (Boss Loot) - Magtheridon - Epic Items (Group 1) - (Non-Tokens Only)'),
('40402','Magtheridon\'s Lair (Boss Loot) - Magtheridon - Epic Items (Group 2) - (Non-Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (40400,40401,40402);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Token Items
('40400','29753','0','1','1','1','0','Chestguard of the Fallen Defender'),
('40400','29754','0','1','1','1','0','Chestguard of the Fallen Champion'),
('40400','29755','0','1','1','1','0','Chestguard of the Fallen Hero'),
-- Group 1 - Non Token Items
('40401','28780','0','1','1','1','0','Soul-Eater\'s Handwraps'),
('40401','28781','0','1','1','1','0','Karaborian Talisman'),
('40401','28782','0','1','1','1','0','Crystalheart Pulse-Staff'),
('40401','28783','0','1','1','1','0','Eredar Wand of Obliteration'),
('40401','28789','0','1','1','1','0','Eye of Magtheridon'),
('40401','29458','0','1','1','1','0','Aegis of the Vindicator'),
-- Group 2 - Non Token Items
('40402','28779','0','1','1','1','0','Girdle of the Endless Pit'),
('40402','28774','0','1','1','1','0','Glaive of the Pit'),
('40402','28777','0','1','1','1','0','Cloak of the Pit Stalker'),
('40402','28775','0','1','1','1','0','Thundering Greathelm'),
('40402','28778','0','1','1','1','0','Terror Pit Girdle'),
('40402','28776','0','1','1','1','0','Liar\'s Tongue Gloves');


