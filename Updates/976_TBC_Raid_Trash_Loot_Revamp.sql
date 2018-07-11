

-- ====================================================================
-- ==========          Raid Trash NPC Loot Overhaul          ==========
-- ====================================================================

-- ========
-- Karazhan
-- ========

-- --------------------------------------------
-- Arcane Anomaly 16488 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16488 WHERE entry=16488;
DELETE FROM creature_loot_template WHERE entry IN (16488);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16488','24508','75','0','2','4','0','Elemental Fragment'),
('16488','22576','32','0','2','4','0','Mote of Mana'),
('16488','24511','18','0','2','4','0','Primordial Essence'),
('16488','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16488','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16488','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16488','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16488','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16488','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16488','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16488','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Arcane Protector 16504 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16504 WHERE entry=16504;
DELETE FROM creature_loot_template WHERE entry IN (16504);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16504','31952','1.6','0','1','1','0','Khorium Lockbox'),
('16504','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16504','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16504','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16504','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16504','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16504','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16504','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Arcane Watchman 16485 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16485 WHERE entry=16485;
DELETE FROM creature_loot_template WHERE entry IN (16485);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16485','31952','0.8','0','1','1','0','Khorium Lockbox'),
('16485','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16485','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16485','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16485','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16485','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16485','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16485','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Astral Flare 17096 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17096;
DELETE FROM creature_loot_template WHERE entry IN (17096);

-- --------------------------------------------
-- Astral Spark 17283 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17283;
DELETE FROM creature_loot_template WHERE entry IN (17283);

-- --------------------------------------------
-- Baron Rafe Dreuger 19874 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=19874;
DELETE FROM creature_loot_template WHERE entry IN (19874);

-- --------------------------------------------
-- Baroness Dorothea Millstipe 19875 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=19875;
DELETE FROM creature_loot_template WHERE entry IN (19875);

-- --------------------------------------------
-- Chaotic Sentience 16489 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16489 WHERE entry=16489;
DELETE FROM creature_loot_template WHERE entry IN (16489);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16489','24508','75','0','2','4','0','Elemental Fragment'),
('16489','22576','32','0','2','4','0','Mote of Mana'),
('16489','24511','18','0','2','4','0','Primordial Essence'),
('16489','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16489','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16489','61125','7','0','-61125','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
('16489','61225','0.3','0','-61225','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
('16489','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16489','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16489','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16489','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Coldmist Stalker 16170
-- --------------------------------------------
UPDATE creature_template SET LootId=16170 WHERE entry=16170;
DELETE FROM creature_loot_template WHERE entry IN (16170);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16170','21881','73','0','1','1','0','Netherweb Spider Silk'),
('16170','31952','0.8','0','1','1','0','Khorium Lockbox'),
('16170','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16170','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16170','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16170','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16170','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16170','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Coldmist Widow 16171
-- --------------------------------------------
UPDATE creature_template SET LootId=16171 WHERE entry=16171;
DELETE FROM creature_loot_template WHERE entry IN (16171);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16171','21881','73','0','1','1','0','Netherweb Spider Silk'),
('16171','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16171','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16171','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16171','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16171','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16171','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16171','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Concubine 16461 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16461 WHERE entry=16461;
DELETE FROM creature_loot_template WHERE entry IN (16461);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16461','21877','50','0','2','3','0','Netherweave Cloth'),
('16461','27854','9','0','1','2','0','Smoked Talbuk Venison'),
('16461','27860','4','0','1','1','0','Purified Draenic Water'),
('16461','22829','3','0','1','1','0','Super Healing Potion'),
('16461','22832','1.2','0','1','1','0','Super Mana Potion'),
('16461','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16461','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16461','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16461','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16461','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16461','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16461','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16461','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16461','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16461','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Conjured Elemental 17167 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17167;
DELETE FROM creature_loot_template WHERE entry IN (17167);

-- --------------------------------------------
-- Demon Chains 17248 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17248;
DELETE FROM creature_loot_template WHERE entry IN (17248);

-- --------------------------------------------
-- Dreadbeast 16177
-- --------------------------------------------
UPDATE creature_template SET LootId=16177 WHERE entry=16177;
DELETE FROM creature_loot_template WHERE entry IN (16177);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16177','25418','74','0','2','4','0','Razor Sharp Fang'),
('16177','25421','18','0','2','4','0','Gnarled Claw'),
('16177','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16177','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16177','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16177','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16177','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16177','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');

-- --------------------------------------------
-- Ethereal Spellfilcher 16545 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16545 WHERE entry=16545;
DELETE FROM creature_loot_template WHERE entry IN (16545);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16545','21877','39','0','2','3','0','Netherweave Cloth'),
('16545','27854','7','0','1','2','0','Smoked Talbuk Venison'),
('16545','27860','4','0','1','1','0','Purified Draenic Water'),
('16545','22829','2','0','1','1','0','Super Healing Potion'),
('16545','22832','1.2','0','1','1','0','Super Mana Potion'),
('16545','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16545','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16545','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16545','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16545','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16545','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16545','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16545','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16545','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Ethereal Thief 16544 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16544 WHERE entry=16544;
DELETE FROM creature_loot_template WHERE entry IN (16544);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16544','21877','50','0','2','3','0','Netherweave Cloth'),
('16544','27854','9','0','1','2','0','Smoked Talbuk Venison'),
('16544','27860','4','0','1','1','0','Purified Draenic Water'),
('16544','22829','3','0','1','1','0','Super Healing Potion'),
('16544','22832','1.2','0','1','1','0','Super Mana Potion'),
('16544','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16544','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16544','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16544','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16544','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16544','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16544','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16544','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16544','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16544','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Fiendish Imp 17267 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17267;
DELETE FROM creature_loot_template WHERE entry IN (17267);

-- --------------------------------------------
-- Fleshbeast 16595 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16595 WHERE entry=16595;
DELETE FROM creature_loot_template WHERE entry IN (16595);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16595','25418','74','0','2','4','0','Razor Sharp Fang'),
('16595','25421','18','0','2','4','0','Gnarled Claw'),
('16595','31952','0.4','0','1','1','0','Khorium Lockbox'),
('16595','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16595','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16595','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16595','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16595','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16595','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16595','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Ghastly Haunt 16481 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16481 WHERE entry=16481;
DELETE FROM creature_loot_template WHERE entry IN (16481);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16481','21882','40','0','1','2','0','Soul Essence'),
('16481','21877','35','0','2','3','0','Netherweave Cloth'),
('16481','27859','6','0','1','2','0','Zangar Caps'),
('16481','27860','4','0','1','1','0','Purified Draenic Water'),
('16481','22829','2','0','1','1','0','Super Healing Potion'),
('16481','22832','1.2','0','1','1','0','Super Mana Potion'),
('16481','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16481','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16481','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16481','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16481','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16481','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16481','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16481','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16481','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16481','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Ghostly Baker 16412 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16412 WHERE entry=16412;
DELETE FROM creature_loot_template WHERE entry IN (16412);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16412','21882','40','0','1','2','0','Soul Essence'),
('16412','21877','35','0','2','3','0','Netherweave Cloth'),
('16412','27855','6','0','1','2','0','Mag\'har Grainbread'),
('16412','27860','4','0','1','1','0','Purified Draenic Water'),
('16412','22829','2','0','1','1','0','Super Healing Potion'),
('16412','22832','1.2','0','1','1','0','Super Mana Potion'),
('16412','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16412','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16412','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16412','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16412','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16412','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16412','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16412','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16412','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16412','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Ghostly Philanthropist 16470 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16470 WHERE entry=16470;
DELETE FROM creature_loot_template WHERE entry IN (16470);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16470','21882','45','0','1','2','0','Soul Essence'),
('16470','21877','37','0','2','3','0','Netherweave Cloth'),
('16470','27855','6','0','1','2','0','Mag\'har Grainbread'),
('16470','27860','4','0','1','1','0','Purified Draenic Water'),
('16470','22829','2','0','1','1','0','Super Healing Potion'),
('16470','22832','1.2','0','1','1','0','Super Mana Potion'),
('16470','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16470','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16470','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16470','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16470','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16470','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16470','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16470','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16470','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16470','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Ghostly Steward 16414 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16414 WHERE entry=16414;
DELETE FROM creature_loot_template WHERE entry IN (16414);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16414','21882','45','0','1','2','0','Soul Essence'),
('16414','21877','37','0','2','3','0','Netherweave Cloth'),
('16414','27855','6','0','1','2','0','Mag\'har Grainbread'),
('16414','27860','4','0','1','1','0','Purified Draenic Water'),
('16414','22829','2','0','1','1','0','Super Healing Potion'),
('16414','22832','1.2','0','1','1','0','Super Mana Potion'),
('16414','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16414','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16414','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16414','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16414','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16414','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16414','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16414','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16414','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16414','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Greater Fleshbeast 16596 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16596 WHERE entry=16596;
DELETE FROM creature_loot_template WHERE entry IN (16596);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16596','25418','74','0','2','4','0','Razor Sharp Fang'),
('16596','25421','18','0','2','4','0','Gnarled Claw'),
('16596','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16596','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16596','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16596','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16596','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16596','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16596','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16596','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Greater Shadowbat 16174
-- --------------------------------------------
UPDATE creature_template SET LootId=16174 WHERE entry=16174;
DELETE FROM creature_loot_template WHERE entry IN (16174);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16174','11404','46','0','1','1','0','Evil Bat Eye'),
('16174','11403','46','0','1','1','0','Large Bat Fang'),
('16174','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16174','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16174','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16174','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16174','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');

-- --------------------------------------------
-- Homunculus 16539 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16539 WHERE entry=16539;
DELETE FROM creature_loot_template WHERE entry IN (16539);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16539','21877','64','0','2','3','0','Netherweave Cloth'),
('16539','31952','0.9','0','1','1','0','Khorium Lockbox'),
('16539','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16539','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16539','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16539','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16539','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16539','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16539','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16539','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Kil'rek 17229 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17229;
DELETE FROM creature_loot_template WHERE entry IN (17229);

-- --------------------------------------------
-- Lady Catriona Von'Indi 19872 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=19872;
DELETE FROM creature_loot_template WHERE entry IN (19872);

-- --------------------------------------------
-- Lady Keira Berrybuck 17007 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17007;
DELETE FROM creature_loot_template WHERE entry IN (17007);

-- --------------------------------------------
-- Lord Crispin Ference 19873 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=19873;
DELETE FROM creature_loot_template WHERE entry IN (19873);

-- --------------------------------------------
-- Lord Robin Daris 19876 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=19876;
DELETE FROM creature_loot_template WHERE entry IN (19876);

-- --------------------------------------------
-- Magical Horror 16529 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16529 WHERE entry=16529;
DELETE FROM creature_loot_template WHERE entry IN (16529);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16529','24508','75','0','2','4','0','Elemental Fragment'),
('16529','22576','32','0','2','4','0','Mote of Mana'),
('16529','24511','18','0','2','4','0','Primordial Essence'),
('16529','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16529','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16529','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16529','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16529','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16529','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16529','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16529','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Mana Feeder 16491 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16491 WHERE entry=16491;
DELETE FROM creature_loot_template WHERE entry IN (16491);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16491','24508','75','0','2','4','0','Elemental Fragment'),
('16491','22576','32','0','2','4','0','Mote of Mana'),
('16491','24511','18','0','2','4','0','Primordial Essence'),
('16491','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16491','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16491','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16491','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16491','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16491','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16491','60346','0.45','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16491','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Mana Warp 16530 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16530 WHERE entry=16530;
DELETE FROM creature_loot_template WHERE entry IN (16530);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16530','24508','75','0','2','4','0','Elemental Fragment'),
('16530','22576','32','0','2','4','0','Mote of Mana'),
('16530','24511','18','0','2','4','0','Primordial Essence'),
('16530','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16530','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16530','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16530','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16530','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16530','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16530','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16530','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Night Mistress 16460 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16460 WHERE entry=16460;
DELETE FROM creature_loot_template WHERE entry IN (16460);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16460','21877','50','0','2','3','0','Netherweave Cloth'),
('16460','27854','9','0','1','2','0','Smoked Talbuk Venison'),
('16460','27860','4','0','1','1','0','Purified Draenic Water'),
('16460','22829','3','0','1','1','0','Super Healing Potion'),
('16460','22832','1.2','0','1','1','0','Super Mana Potion'),
('16460','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16460','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16460','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16460','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16460','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16460','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16460','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16460','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16460','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16460','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Phantom Attendant 16406 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16406 WHERE entry=16406;
DELETE FROM creature_loot_template WHERE entry IN (16406);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16406','21882','45','0','1','2','0','Soul Essence'),
('16406','21877','37','0','2','3','0','Netherweave Cloth'),
('16406','27855','6','0','1','2','0','Mag\'har Grainbread'),
('16406','27860','4','0','1','1','0','Purified Draenic Water'),
('16406','22829','2','0','1','1','0','Super Healing Potion'),
('16406','22832','1.2','0','1','1','0','Super Mana Potion'),
('16406','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16406','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16406','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16406','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16406','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16406','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16406','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16406','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16406','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16406','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Phantom Guardsman 16425 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16425 WHERE entry=16425;
DELETE FROM creature_loot_template WHERE entry IN (16425);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16425','21882','45','0','1','2','0','Soul Essence'),
('16425','21877','37','0','2','3','0','Netherweave Cloth'),
('16425','27855','6','0','1','2','0','Mag\'har Grainbread'),
('16425','27860','4','0','1','1','0','Purified Draenic Water'),
('16425','22829','2','0','1','1','0','Super Healing Potion'),
('16425','22832','1.2','0','1','1','0','Super Mana Potion'),
('16425','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16425','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16425','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16425','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16425','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16425','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16425','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16425','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16425','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16425','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Phantom Guest 16409 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16409 WHERE entry=16409;
DELETE FROM creature_loot_template WHERE entry IN (16409);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16409','21882','14','0','1','2','0','Soul Essence'),
('16409','21877','39','0','2','3','0','Netherweave Cloth'),
('16409','27855','15','0','1','2','0','Mag\'har Grainbread'),
('16409','27860','7','0','1','1','0','Purified Draenic Water'),
('16409','22829','4','0','1','1','0','Super Healing Potion'),
('16409','22832','2','0','1','1','0','Super Mana Potion'),
('16409','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16409','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16409','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16409','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16409','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16409','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16409','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16409','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16409','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16409','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Phantom Hound 17067 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17067;
DELETE FROM creature_loot_template WHERE entry IN (17067);

-- --------------------------------------------
-- Phantom Stagehand 16472 - Drops BOP EPIC - Formula: Enchant Boots - Surefooted
-- --------------------------------------------
UPDATE creature_template SET LootId=16472 WHERE entry=16472;
DELETE FROM creature_loot_template WHERE entry IN (16472);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16472','21882','38','0','1','2','0','Soul Essence'),
('16472','21877','33','0','2','3','0','Netherweave Cloth'),
('16472','27855','6','0','1','2','0','Mag\'har Grainbread'),
('16472','27860','4','0','1','1','0','Purified Draenic Water'),
('16472','22829','2','0','1','1','0','Super Healing Potion'),
('16472','22832','1.2','0','1','1','0','Super Mana Potion'),
('16472','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16472','22545','12','0','1','1','0','Formula: Enchant Boots - Surefooted'),
('16472','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16472','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16472','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16472','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16472','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16472','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16472','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16472','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16472','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Phantom Valet 16408 - Drops BOP EPIC - Pattern: Soulcloth Vest
-- --------------------------------------------
UPDATE creature_template SET LootId=16408 WHERE entry=16408;
DELETE FROM creature_loot_template WHERE entry IN (16408);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16408','21882','46','0','1','2','0','Soul Essence'),
('16408','21877','38','0','2','3','0','Netherweave Cloth'),
('16408','27855','7','0','1','2','0','Mag\'har Grainbread'),
('16408','27860','4','0','1','1','0','Purified Draenic Water'),
('16408','22829','2','0','1','1','0','Super Healing Potion'),
('16408','22832','1.2','0','1','1','0','Super Mana Potion'),
('16408','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16408','21904','1','0','1','1','0','Pattern: Soulcloth Vest'),
('16408','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16408','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16408','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16408','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16408','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16408','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16408','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16408','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16408','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Phase Hound 16178
-- --------------------------------------------
UPDATE creature_template SET LootId=16178 WHERE entry=16178;
DELETE FROM creature_loot_template WHERE entry IN (16178);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16178','25418','74','0','2','4','0','Razor Sharp Fang'),
('16178','25421','18','0','2','4','0','Gnarled Claw'),
('16178','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16178','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16178','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16178','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16178','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16178','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16178','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Restless Skeleton 17261 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17261;
DELETE FROM creature_loot_template WHERE entry IN (17261);

-- --------------------------------------------
-- Shadow Pillager 16540 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16540 WHERE entry=16540;
DELETE FROM creature_loot_template WHERE entry IN (16540);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16540','21877','50','0','2','3','0','Netherweave Cloth'),
('16540','27855','9','0','1','2','0','Mag\'har Grainbread'),
('16540','27860','4','0','1','1','0','Purified Draenic Water'),
('16540','22829','2','0','1','1','0','Super Healing Potion'),
('16540','22832','1.2','0','1','1','0','Super Mana Potion'),
('16540','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16540','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16540','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16540','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16540','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16540','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16540','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16540','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16540','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16540','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Shadowbat 16173
-- --------------------------------------------
UPDATE creature_template SET LootId=16173 WHERE entry=16173;
DELETE FROM creature_loot_template WHERE entry IN (16173);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16173','11404','46','0','1','1','0','Evil Bat Eye'),
('16173','11403','46','0','1','1','0','Large Bat Fang'),
('16173','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16173','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16173','61123','7','0','-61123','1','0','NPC LOOT (Green World Drop) - (Item Levels: 108-117) - (NPC Levels: 69-70) - TBC NPC ONLY'),
('16173','61223','0.3','0','-61223','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69-70) - TBC NPC ONLY'),
('16173','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');

-- --------------------------------------------
-- Shadowbeast 16176
-- --------------------------------------------
UPDATE creature_template SET LootId=16176 WHERE entry=16176;
DELETE FROM creature_loot_template WHERE entry IN (16176);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16176','25418','74','0','2','4','0','Razor Sharp Fang'),
('16176','25421','18','0','2','4','0','Gnarled Claw'),
('16176','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16176','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16176','61123','7','0','-61123','1','0','NPC LOOT (Green World Drop) - (Item Levels: 108-117) - (NPC Levels: 69-70) - TBC NPC ONLY'),
('16176','61223','0.3','0','-61223','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69-70) - TBC NPC ONLY'),
('16176','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16176','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');

-- --------------------------------------------
-- Skeletal Usher 16471 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16471 WHERE entry=16471;
DELETE FROM creature_loot_template WHERE entry IN (16471);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16471','21877','50','0','2','3','0','Netherweave Cloth'),
('16471','27859','9','0','1','2','0','Zangar Caps'),
('16471','27860','4','0','1','1','0','Purified Draenic Water'),
('16471','22829','2','0','1','1','0','Super Healing Potion'),
('16471','22832','1.2','0','1','1','0','Super Mana Potion'),
('16471','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16471','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16471','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16471','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16471','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16471','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16471','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16471','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16471','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16471','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Skeletal Waiter 16415 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16415 WHERE entry=16415;
DELETE FROM creature_loot_template WHERE entry IN (16415);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16415','21877','50','0','2','3','0','Netherweave Cloth'),
('16415','27859','9','0','1','2','0','Zangar Caps'),
('16415','27860','4','0','1','1','0','Purified Draenic Water'),
('16415','22829','2','0','1','1','0','Super Healing Potion'),
('16415','22832','1.2','0','1','1','0','Super Mana Potion'),
('16415','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16415','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16415','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16415','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16415','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16415','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16415','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16415','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16415','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16415','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Sorcerous Shade 16526 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16526 WHERE entry=16526;
DELETE FROM creature_loot_template WHERE entry IN (16526);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16526','21882','61','0','1','2','0','Soul Essence'),
('16526','31952','0.7','0','1','1','0','Khorium Lockbox'),
('16526','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16526','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16526','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16526','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16526','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16526','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16526','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Apprentice 16389
-- --------------------------------------------
UPDATE creature_template SET LootId=16389 WHERE entry=16389;
DELETE FROM creature_loot_template WHERE entry IN (16389);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16389','21882','46','0','1','2','0','Soul Essence'),
('16389','21877','38','0','2','3','0','Netherweave Cloth'),
('16389','27855','7','0','1','2','0','Mag\'har Grainbread'),
('16389','27860','4','0','1','1','0','Purified Draenic Water'),
('16389','22829','2','0','1','1','0','Super Healing Potion'),
('16389','22832','1.2','0','1','1','0','Super Mana Potion'),
('16389','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16389','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16389','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16389','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16389','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16389','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16389','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16389','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only');

-- --------------------------------------------
-- Spectral Charger 15547 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=15547 WHERE entry=15547;
DELETE FROM creature_loot_template WHERE entry IN (15547);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15547','21882','27','0','1','2','0','Soul Essence'),
('15547','25409','74','0','2','4','0','Resilient Tail Hair'),
('15547','25411','18','0','2','4','0','Worn Hoof'),
('15547','31952','0.3','0','1','1','0','Khorium Lockbox'),
('15547','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('15547','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('15547','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('15547','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('15547','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('15547','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('15547','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Chef 16411 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16411 WHERE entry=16411;
DELETE FROM creature_loot_template WHERE entry IN (16411);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16411','21882','43','0','1','2','0','Soul Essence'),
('16411','21877','37','0','2','3','0','Netherweave Cloth'),
('16411','27854','6','0','1','2','0','Smoked Talbuk Venison'),
('16411','27860','4','0','1','1','0','Purified Draenic Water'),
('16411','22829','3','0','1','1','0','Super Healing Potion'),
('16411','22832','1.2','0','1','1','0','Super Mana Potion'),
('16411','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16411','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16411','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16411','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16411','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16411','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16411','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16411','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16411','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16411','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Patron 16468 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16468 WHERE entry=16468;
DELETE FROM creature_loot_template WHERE entry IN (16468);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16468','21877','50','0','2','3','0','Netherweave Cloth'),
('16468','21882','19','0','1','2','0','Soul Essence'),
('16468','27854','8','0','1','2','0','Smoked Talbuk Venison'),
('16468','27860','4','0','1','1','0','Purified Draenic Water'),
('16468','22829','3','0','1','1','0','Super Healing Potion'),
('16468','22832','1.2','0','1','1','0','Super Mana Potion'),
('16468','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16468','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16468','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16468','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16468','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16468','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16468','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16468','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16468','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16468','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Performer 16473 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16473 WHERE entry=16473;
DELETE FROM creature_loot_template WHERE entry IN (16473);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16473','21882','45','0','1','2','0','Soul Essence'),
('16473','21877','37','0','2','3','0','Netherweave Cloth'),
('16473','27854','6','0','1','2','0','Smoked Talbuk Venison'),
('16473','27860','4','0','1','1','0','Purified Draenic Water'),
('16473','22829','3','0','1','1','0','Super Healing Potion'),
('16473','22832','1.2','0','1','1','0','Super Mana Potion'),
('16473','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16473','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16473','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16473','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16473','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16473','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16473','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16473','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16473','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16473','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Retainer 16410 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16410 WHERE entry=16410;
DELETE FROM creature_loot_template WHERE entry IN (16410);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16410','21882','45','0','1','2','0','Soul Essence'),
('16410','21877','37','0','2','3','0','Netherweave Cloth'),
('16410','27854','6','0','1','2','0','Smoked Talbuk Venison'),
('16410','27860','4','0','1','1','0','Purified Draenic Water'),
('16410','22829','3','0','1','1','0','Super Healing Potion'),
('16410','22832','1.2','0','1','1','0','Super Mana Potion'),
('16410','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16410','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16410','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16410','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16410','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16410','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16410','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16410','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16410','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16410','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Sentry 16424 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16424 WHERE entry=16424;
DELETE FROM creature_loot_template WHERE entry IN (16424);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16424','21882','45','0','1','2','0','Soul Essence'),
('16424','21877','37','0','2','3','0','Netherweave Cloth'),
('16424','27854','6','0','1','2','0','Smoked Talbuk Venison'),
('16424','27860','4','0','1','1','0','Purified Draenic Water'),
('16424','22829','3','0','1','1','0','Super Healing Potion'),
('16424','22832','1.2','0','1','1','0','Super Mana Potion'),
('16424','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16424','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16424','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16424','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16424','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16424','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16424','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16424','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16424','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16424','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Servant 16407 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16407 WHERE entry=16407;
DELETE FROM creature_loot_template WHERE entry IN (16407);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16407','21882','45','0','1','2','0','Soul Essence'),
('16407','21877','37','0','2','3','0','Netherweave Cloth'),
('16407','27855','6','0','1','2','0','Mag\'har Grainbread'),
('16407','27860','4','0','1','1','0','Purified Draenic Water'),
('16407','22829','3','0','1','1','0','Super Healing Potion'),
('16407','22832','1.2','0','1','1','0','Super Mana Potion'),
('16407','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16407','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16407','61123','7','0','-61123','1','0','NPC LOOT (Green World Drop) - (Item Levels: 108-117) - (NPC Levels: 69-70) - TBC NPC ONLY'),
('16407','61223','0.3','0','-61223','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69-70) - TBC NPC ONLY'),
('16407','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16407','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16407','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16407','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16407','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16407','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Stable Hand 15551 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=15551 WHERE entry=15551;
DELETE FROM creature_loot_template WHERE entry IN (15551);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15551','21882','45','0','1','2','0','Soul Essence'),
('15551','21877','37','0','2','3','0','Netherweave Cloth'),
('15551','27855','6','0','1','2','0','Mag\'har Grainbread'),
('15551','27860','4','0','1','1','0','Purified Draenic Water'),
('15551','22829','3','0','1','1','0','Super Healing Potion'),
('15551','22832','1.2','0','1','1','0','Super Mana Potion'),
('15551','31952','0.6','0','1','1','0','Khorium Lockbox'),
('15551','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('15551','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('15551','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('15551','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('15551','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('15551','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('15551','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('15551','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('15551','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spectral Stallion 15548 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=15548 WHERE entry=15548;
DELETE FROM creature_loot_template WHERE entry IN (15548);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15548','21882','27','0','1','2','0','Soul Essence'),
('15548','25409','74','0','2','4','0','Resilient Tail Hair'),
('15548','25411','18','0','2','4','0','Worn Hoof'),
('15548','31952','0.3','0','1','1','0','Khorium Lockbox'),
('15548','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('15548','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('15548','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('15548','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('15548','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('15548','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('15548','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Spell Shade 16525 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16525 WHERE entry=16525;
DELETE FROM creature_loot_template WHERE entry IN (16525);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16525','21882','66','0','1','2','0','Soul Essence'),
('16525','31952','0.8','0','1','1','0','Khorium Lockbox'),
('16525','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16525','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16525','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16525','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16525','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16525','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16525','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Syphoner 16492 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16492 WHERE entry=16492;
DELETE FROM creature_loot_template WHERE entry IN (16492);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16492','24508','75','0','2','4','0','Elemental Fragment'),
('16492','22576','32','0','2','4','0','Mote of Mana'),
('16492','24511','18','0','2','4','0','Primordial Essence'),
('16492','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16492','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16492','61124','7','0','-61124','1','0','NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
('16492','61224','0.3','0','-61224','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
('16492','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16492','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16492','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16492','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16492','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16492','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Trapped Soul 16482 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16482 WHERE entry=16482;
DELETE FROM creature_loot_template WHERE entry IN (16482);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16482','21877','34','0','2','3','0','Netherweave Cloth'),
('16482','27859','6','0','1','2','0','Zangar Caps'),
('16482','27860','4','0','1','1','0','Purified Draenic Water'),
('16482','22829','2','0','1','1','0','Super Healing Potion'),
('16482','22832','1.2','0','1','1','0','Super Mana Potion'),
('16482','31952','0.5','0','1','1','0','Khorium Lockbox'),
('16482','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16482','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('16482','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('16482','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16482','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16482','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16482','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16482','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16482','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Vampiric Shadowbat 16175
-- --------------------------------------------
UPDATE creature_template SET LootId=16175 WHERE entry=16175;
DELETE FROM creature_loot_template WHERE entry IN (16175);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16175','11404','46','0','1','1','0','Evil Bat Eye'),
('16175','11403','46','0','1','1','0','Large Bat Fang'),
('16175','31952','0.3','0','1','1','0','Khorium Lockbox'),
('16175','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16175','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16175','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16175','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');

-- --------------------------------------------
-- Wanton Hostess 16459 - Drops BOP EPIC
-- --------------------------------------------
UPDATE creature_template SET LootId=16459 WHERE entry=16459;
DELETE FROM creature_loot_template WHERE entry IN (16459);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16459','21882','45','0','1','2','0','Soul Essence'),
('16459','21877','37','0','2','3','0','Netherweave Cloth'),
('16459','27854','6','0','1','2','0','Smoked Talbuk Venison'),
('16459','27860','4','0','1','1','0','Purified Draenic Water'),
('16459','22829','3','0','1','1','0','Super Healing Potion'),
('16459','22832','1.2','0','1','1','0','Super Mana Potion'),
('16459','31952','0.6','0','1','1','0','Khorium Lockbox'),
('16459','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('16459','61126','7','0','-61126','1','0','NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('16459','61226','0.3','0','-61226','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
('16459','50604','0.5','0','-50604','1','0','NPC LOOT (World Drop) - (Level: 60 Scrolls) - (Item Levels: 70) - NPC Levels 58-72 (WORLD LOOT DROP)'),
('16459','50501','0.1','0','-50501','1','0','NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ (WORLD CLASS LOOT DROP)'),
('16459','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('16459','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('16459','60346','0.8','0','-60346','1','0','NPC LOOT (Karazhan Zone Drop) - (Item Levels: 115) - (NPC Levels 70+) - (RAID SPECIFIC EPIC BOP LOOT DROP)'),
('16459','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- ===================================
-- Gruul's Lair
-- ===================================
-- --------------------------------------------
-- Blindeye the Seer 18836 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=18836;
DELETE FROM creature_loot_template WHERE entry IN (18836);

-- --------------------------------------------
-- Gronn-Priest 21350
-- --------------------------------------------
UPDATE creature_template SET LootId=21350 WHERE entry=21350;
DELETE FROM creature_loot_template WHERE entry IN (21350);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('21350','21877','72','0','2','3','0','Netherweave Cloth'),
('21350','27854','1.5','0','1','2','0','Smoked Talbuk Venison'),
('21350','22829','0.6','0','1','1','0','Super Healing Potion'),
('21350','22832','0.2','0','1','1','0','Super Mana Potion'),
('21350','31952','1','0','1','1','0','Khorium Lockbox'),
('21350','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('21350','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('21350','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('21350','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('21350','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('21350','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Kiggler the Crazed 18835 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=18835;
DELETE FROM creature_loot_template WHERE entry IN (18835);

-- --------------------------------------------
-- Krosh Firehand 18832 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=18832;
DELETE FROM creature_loot_template WHERE entry IN (18832);

-- --------------------------------------------
-- Lair Brute 19389
-- --------------------------------------------
UPDATE creature_template SET LootId=19389 WHERE entry=19389;
DELETE FROM creature_loot_template WHERE entry IN (19389);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('19389','21877','72','0','2','3','0','Netherweave Cloth'),
('19389','27854','1.5','0','1','2','0','Smoked Talbuk Venison'),
('19389','22829','0.6','0','1','1','0','Super Healing Potion'),
('19389','22832','0.2','0','1','1','0','Super Mana Potion'),
('19389','31952','1','0','1','1','0','Khorium Lockbox'),
('19389','61001','25','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('19389','61128','7','0','-61128','1','0','NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
('19389','61228','0.3','0','-61228','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
('19389','50500','0.1','0','-50500','1','0','NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('19389','49001','0.05','0','-49001','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-8) - Elite Dungeon NPC Only'),
('19389','60345','0.01','0','-60345','1','0','NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

-- --------------------------------------------
-- Olm the Summoner 18834 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=18834;
DELETE FROM creature_loot_template WHERE entry IN (18834);

-- --------------------------------------------
-- Wild Fel Stalker 18847 - NO LOOT
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=18847;
DELETE FROM creature_loot_template WHERE entry IN (18847);

-- ===================================
-- Magtheridon's Lair
-- ===================================
-- --------------------------------------------
-- Burning Abyssal 17454
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17454;
DELETE FROM creature_loot_template WHERE entry IN (17454);

-- --------------------------------------------
-- Hellfire Channeler 17256
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=17256;
DELETE FROM creature_loot_template WHERE entry IN (17256);

-- --------------------------------------------
-- Hellfire Warder 18829
-- --------------------------------------------
UPDATE creature_template SET LootId=0 WHERE entry=18829;
DELETE FROM creature_loot_template WHERE entry IN (18829);

-- ===================================
-- Caverns of Time: Hyjal Summit
-- ===================================

-- Hyjal Summit & Black Temple (Trash Loot)
DELETE FROM `reference_loot_template` WHERE `entry` IN (36196,36197,36198,36199,39534); -- 14099,34069
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Hyjal Summit Epic Items
(36196, 32589, 0, 1, 1, 1, 0, 'Hellfire-Encased Pendant'),
(36196, 32590, 0, 1, 1, 1, 0, 'Nethervoid Cloak'),
(36196, 32591, 0, 1, 1, 1, 0, 'Choker of Serrated Blades'),
(36196, 32592, 0, 1, 1, 1, 0, 'Chestguard of Relentless Storms'),
(36196, 32609, 0, 1, 1, 1, 0, 'Boots of the Divine Light'),
(36196, 32945, 0, 1, 1, 1, 0, 'Fist of Molten Fury'),
(36196, 32946, 0, 1, 1, 1, 0, 'Claw of Molten Fury'),
(36196, 34009, 0, 1, 1, 1, 0, 'Hammer of Judgement'),
(36196, 34010, 0, 1, 1, 1, 0, 'Pepe\'s Shroud of Pacification'),
-- Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)
(36197, 32739, 0, 1, 1, 1, 0, 'Plans: Dawnsteel Shoulders'),
(36197, 32745, 0, 1, 1, 1, 0, 'Pattern: Shoulderpads of Renewed Life'),
(36197, 32751, 0, 1, 1, 1, 0, 'Pattern: Living Earth Shoulders'),
(36197, 32755, 0, 1, 1, 1, 0, 'Pattern: Mantle of Nimble Thought'),
(36197, 32736, 0, 1, 1, 1, 198, 'Plans: Swiftsteel Bracers'),
(36197, 32746, 0, 1, 1, 1, 199, 'Pattern: Swiftstrike Bracers'),
(36197, 32748, 0, 1, 1, 1, 199, 'Pattern: Bindings of Lightning Reflexes'),
(36197, 32752, 0, 1, 1, 1, 201, 'Pattern: Swiftheal Wraps'),
-- Black Temple (Trash Loot) - Epic Items
(36198, 32526, 0, 1, 1, 1, 0, 'Band of Devastation'),
(36198, 32527, 0, 1, 1, 1, 0, 'Ring of Ancient Knowledge'),
(36198, 32528, 0, 1, 1, 1, 0, 'Blessed Band of Karabor'),
(36198, 32593, 0, 1, 1, 1, 0, 'Treads of the Den Mother'),
(36198, 32606, 0, 1, 1, 1, 0, 'Girdle of the Lightbearer'),
(36198, 32608, 0, 1, 1, 1, 0, 'Pillager\'s Gauntlets'),
(36198, 32943, 0, 1, 1, 1, 0, 'Swiftsteel Bludgeon'),
(36198, 34011, 0, 1, 1, 1, 0, 'Illidari Runeshield'),
(36198, 34012, 0, 1, 1, 1, 0, 'Shroud of the Final Stand'),
-- Black Temple (Trash Loot) - Profession (-Pattern,-Plans)
(36199, 32737, 0, 1, 1, 1, 0, 'Plans: Swiftsteel Shoulders'),
(36199, 32747, 0, 1, 1, 1, 0, 'Pattern: Swiftstrike Shoulders'),
(36199, 32749, 0, 1, 1, 1, 0, 'Pattern: Shoulders of Lightning Reflexes'),
(36199, 32753, 0, 1, 1, 1, 0, 'Pattern: Swiftheal Mantle'),
(36199, 32738, 0, 1, 1, 1, 198, 'Plans: Dawnsteel Bracers'),
(36199, 32744, 0, 1, 1, 1, 199, 'Pattern: Bracers of Renewed Life'),
(36199, 32750, 0, 1, 1, 1, 199, 'Pattern: Living Earth Bindings'),
(36199, 32754, 0, 1, 1, 1, 201, 'Pattern: Bracers of Nimble Thought');

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (34093,36196,36197,36198,36199);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(34093, 'Epic Gem - TBC'),
(36196, 'Hyjal Summit (Trash Loot) - Epic Items'),
(36197, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(36198, 'Black Temple (Trash Loot) - Epic Items'),
(36199, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)');

-- Ghoul 17895
DELETE FROM `creature_loot_template` WHERE entry=17895;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17895, 21877, 13, 0, 1, 3, 0, 'Netherweave Cloth'),
(17895, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(17895, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(17895, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'),
(17895, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17895, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17895, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17895, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17895, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17895, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17895, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17895, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(17895, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Crypt Fiend 17897
DELETE FROM `creature_loot_template` WHERE entry=17897;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17897, 21881, 9, 0, 1, 3, 0, 'Netherweb Spider Silk'),
(17897, 32897, 16, 0, 1, 1, 0, 'Mark of the Illidari'),
(17897, 32428, 11, 0, 1, 1, 0, 'Heart of Darkness'),
(17897, 31952, 0.6, 0, 1, 1, 0, 'Khorium Lockbox'),
(17897, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17897, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17897, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17897, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17897, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17897, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17897, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17897, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(17897, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Abomination 17898
DELETE FROM `creature_loot_template` WHERE entry=17898;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17898, 21877, 14, 0, 2, 3, 0, 'Netherweave Cloth'),
(17898, 32897, 11, 0, 1, 1, 0, 'Mark of the Illidari'),
(17898, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(17898, 31952, 0.9, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(17898, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17898, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17898, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17898, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17898, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17898, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17898, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17898, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(17898, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

-- Shadowy Necromancer 17899
DELETE FROM `creature_loot_template` WHERE entry=17899;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17899, 21877, 14, 0, 1, 3, 0, 'Netherweave Cloth'),
(17899, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(17899, 32428, 10, 0, 1, 1, 0, 'Heart of Darkness'),
(17899, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(17899, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17899, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17899, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17899, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17899, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17899, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17899, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17899, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(17899, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Banshee 17905
DELETE FROM `creature_loot_template` WHERE entry=17905;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17905, 21877, 13, 0, 2, 3, 0, 'Netherweave Cloth'),
(17905, 32897, 11, 0, 1, 1, 0, 'Mark of the Illidari'),
(17905, 32428, 11, 0, 1, 1, 0, 'Heart of Darkness'),
(17905, 31952, 0.3, 0, 1, 1, 0, 'Khorium Lockbox'),
(17905, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17905, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17905, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17905, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17905, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17905, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17905, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17905, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(17905, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Gargoyle 17906
DELETE FROM `creature_loot_template` WHERE entry=17906;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17906, 25418, 69, 0, 2, 4, 0, 'Razor Sharp Fang'),
(17906, 25421, 17, 0, 2, 4, 0, 'Gnarled Claw'),
(17906, 32897, 4, 0, 1, 1, 0, 'Mark of the Illidari'),
(17906, 32428, 2, 0, 1, 1, 0, 'Heart of Darkness'),
(17906, 31952, 0.09, 0, 1, 1, 0, 'Khorium Lockbox'),
(17906, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17906, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17906, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17906, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17906, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17906, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17906, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17906, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(17906, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Frost Wyrm 17907
DELETE FROM `creature_loot_template` WHERE entry=17907;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17907, 32897, 9, 0, 1, 1, 0, 'Mark of the Illidari'),
(17907, 32428, 7, 0, 1, 1, 0, 'Heart of Darkness'),
(17907, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(17907, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17907, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17907, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17907, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17907, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17907, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17907, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17907, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(17907, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

-- Giant Infernal 17908
DELETE FROM `creature_loot_template` WHERE entry=17908;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17908, 32897, 17, 0, 1, 1, 0, 'Mark of the Illidari'), -- 34
(17908, 32428, 11, 0, 1, 1, 0, 'Heart of Darkness'), -- 22
(17908, 31952, 0.7, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(17908, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17908, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17908, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17908, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17908, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17908, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17908, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17908, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(17908, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

-- Fel Stalker 17916
DELETE FROM `creature_loot_template` WHERE entry=17916;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17916, 25418, 68, 0, 2, 4, 0, 'Razor Sharp Fang'),
(17916, 25421, 17, 0, 2, 4, 0, 'Gnarled Claw'),
(17916, 32897, 3, 0, 1, 1, 0, 'Mark of the Illidari'),
(17916, 32428, 1.9, 0, 1, 1, 0, 'Heart of Darkness'),
(17916, 31952, 0.09, 0, 1, 1, 0, 'Khorium Lockbox'),
(17916, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(17916, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(17916, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(17916, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(17916, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(17916, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(17916, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(17916, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(17916, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- ===================================
-- Black Temple
-- ===================================

-- Ashtongue Battlelord 22844
UPDATE `creature_template` SET `PickpocketLootId` = 22844 WHERE `entry` = 22844;
DELETE FROM `creature_loot_template` WHERE entry=22844;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22844, 21877, 37.85, 0, 2, 3, 0, 'Netherweave Cloth'),
(22844, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(22844, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(22844, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22844, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22844, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22844, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22844, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22844, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22844, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22844, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22844, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22844, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22844, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22844;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22844, 29569, 55, 0, 1, 1, 0, 'Strong Junkbox');

-- Ashtongue Mystic 22845
UPDATE `creature_template` SET `PickpocketLootId` = 22845 WHERE `entry` = 22845;
DELETE FROM `creature_loot_template` WHERE entry=22845;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22845, 21877, 42.48, 0, 2, 3, 0, 'Netherweave Cloth'),
(22845, 32428, 12, 0, 1, 1, 0, 'Heart of Darkness'),
(22845, 32897, 10, 0, 1, 1, 0, 'Mark of the Illidari'),
(22845, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22845, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22845, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22845, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22845, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22845, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22845, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22845, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22845, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22845, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22845, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22845;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22845, 29570, 77, 0, 1, 1, 0, 'A Gnome Effigy');

-- Ashtongue Stormcaller 22846
UPDATE `creature_template` SET `PickpocketLootId` = 22846 WHERE `entry` = 22846;
DELETE FROM `creature_loot_template` WHERE entry=22846;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22846, 21877, 40.1, 0, 2, 3, 0, 'Netherweave Cloth'),
(22846, 32428, 10, 0, 1, 1, 0, 'Heart of Darkness'),
(22846, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(22846, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22846, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22846, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22846, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22846, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22846, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22846, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22846, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22846, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22846, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22846, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22846;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22846, 29569, 38, 0, 1, 1, 0, 'Strong Junkbox'),
(22846, 29570, 31, 0, 1, 1, 0, 'A Gnome Effigy'),
(22846, 27854, 5, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22846, 27855, 8, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Ashtongue Primalist 22847
UPDATE `creature_template` SET `PickpocketLootId` = 22847 WHERE `entry` = 22847;
DELETE FROM `creature_loot_template` WHERE entry=22847;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22847, 21877, 38.14, 0, 2, 3, 0, 'Netherweave Cloth'),
(22847, 32428, 11.63, 0, 1, 1, 0, 'Heart of Darkness'),
(22847, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(22847, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22847, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22847, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22847, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22847, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22847, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22847, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22847, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22847, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22847, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22847, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22847;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22847, 22829, 10, 0, 1, 1, 0, 'Super Healing Potion'),
(22847, 29569, 70, 0, 1, 1, 0, 'Strong Junkbox'),
(22847, 29570, 10, 0, 1, 1, 0, 'A Gnome Effigy');

-- Storm Fury 22848
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 22848;
DELETE FROM `creature_loot_template` WHERE `entry` = 22848;

-- Ashtongue Feral Spirit 22849
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 22849;
DELETE FROM `creature_loot_template` WHERE `entry` = 22849;

-- Illidari Defiler 22853
UPDATE `creature_template` SET `PickpocketLootId` = 22853 WHERE `entry` = 22853;
DELETE FROM `creature_loot_template` WHERE entry=22853;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22853, 21877, 32.74, 0, 2, 3, 0, 'Netherweave Cloth'),
(22853, 32428, 10, 0, 1, 1, 0, 'Heart of Darkness'),
(22853, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(22853, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22853, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22853, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22853, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22853, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22853, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22853, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22853, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22853, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22853, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22853, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22853;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22853, 29569, 35, 0, 1, 1, 0, 'Strong Junkbox'),
(22853, 29570, 48, 0, 1, 1, 0, 'A Gnome Effigy'),
(22853, 27854, 16, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22853, 27855, 14, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Illidari Nightlord 22855
UPDATE `creature_template` SET `PickpocketLootId` = 22855 WHERE `entry` = 22855;
DELETE FROM `creature_loot_template` WHERE entry=22855;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22855, 21877, 40.85, 0, 2, 3, 0, 'Netherweave Cloth'),
(22855, 32428, 10, 0, 1, 1, 0, 'Heart of Darkness'),
(22855, 32897, 12.68, 0, 1, 1, 0, 'Mark of the Illidari'),
(22855, 34093, 20, 1, -34093, 1, 0, 'Epic Gem'),
(22855, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22855, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22855, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22855, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22855, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22855, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22855, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22855, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22855, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22855, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22855;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22855, 29569, 11, 0, 1, 1, 0, 'Strong Junkbox'),
(22855, 29570, 61, 0, 1, 1, 0, 'A Gnome Effigy'),
(22855, 22829, 6, 0, 1, 1, 0, 'Super Healing Potion');

-- Illidari Boneslicer 22869
UPDATE `creature_template` SET `PickpocketLootId` = 22869 WHERE `entry` = 22869;
DELETE FROM `creature_loot_template` WHERE entry=22869;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22869, 21877, 43.41, 0, 2, 3, 0, 'Netherweave Cloth'),
(22869, 32428, 10.24, 0, 1, 1, 0, 'Heart of Darkness'),
(22869, 32897, 15, 0, 1, 1, 0, 'Mark of the Illidari'),
(22869, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22869, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22869, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22869, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22869, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22869, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22869, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22869, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22869, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22869, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22869, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22869;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22869, 29569, 38, 0, 1, 1, 0, 'Strong Junkbox'),
(22869, 29570, 38, 0, 1, 1, 0, 'A Gnome Effigy'),
(22869, 27854, 7, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22869, 27855, 18, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Coilskar General 22873
UPDATE `creature_template` SET `PickpocketLootId` = 22873 WHERE `entry` = 22873;
DELETE FROM `creature_loot_template` WHERE entry=22873;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22873, 17057, 17.86, 0, 1, 1, 0, 'Shiny Fish Scales'),
(22873, 17058, 26.19, 0, 1, 1, 0, 'Fish Oil'),
(22873, 27858, 4.76, 0, 1, 3, 0, 'Sunspring Carp'),
(22873, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22873, 29452, 0.02, 0, 1, 1, 0, 'Zangar Trout'),
(22873, 42006, 2, 0, -42006, 1, 0, 'Scrolls V & Super Potions - (NPC Levels 58-72) - TBC NPC ONLY'),
(22873, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(22873, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22873, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22873, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22873, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22873, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22873, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22873, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22873, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22873, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22873, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22873, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22873;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22873, 29576, 62, 0, 1, 1, 0, 'Shark Bait'),
(22873, 27858, 20, 0, 1, 1, 0, 'Sunspring Carp'),
(22873, 29569, 16, 0, 1, 1, 0, 'Strong Junkbox');

-- Coilskar Harpooner 22874
UPDATE `creature_template` SET `PickpocketLootId` = 22874 WHERE `entry` = 22874;
DELETE FROM `creature_loot_template` WHERE entry=22874;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22874, 17057, 24.39, 0, 1, 1, 0, 'Shiny Fish Scales'),
(22874, 17058, 34.15, 0, 1, 1, 0, 'Fish Oil'),
(22874, 27858, 4.76, 0, 1, 3, 0, 'Sunspring Carp'),
(22874, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22874, 29452, 0.02, 0, 1, 1, 0, 'Zangar Trout'),
(22874, 42006, 2, 0, -42006, 1, 0, 'NPC LOOT - Scrolls V & Super Potions - (NPC Levels 58-72) - TBC NPC ONLY'),
(22874, 32897, 11, 0, 1, 1, 0, 'Mark of the Illidari'),
(22874, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22874, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22874, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22874, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22874, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22874, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22874, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22874, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22874, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22874, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22874, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22874;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22874, 27858, 22, 0, 1, 1, 0, 'Sunspring Carp');

-- Coilskar Sea-Caller 22875
UPDATE `creature_template` SET `PickpocketLootId` = 22875 WHERE `entry` = 22875;
DELETE FROM `creature_loot_template` WHERE entry=22875;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22875, 17057, 27.83, 0, 1, 1, 0, 'Shiny Fish Scales'),
(22875, 17058, 31.3, 0, 1, 1, 0, 'Fish Oil'),
(22875, 27858, 1.74, 0, 1, 2, 0, 'Sunspring Carp'),
(22875, 27860, 0.87, 0, 1, 1, 0, 'Purified Draenic Water'),
(22875, 29452, 0.02, 0, 1, 1, 0, 'Zangar Trout'),
(22875, 42006, 2, 0, -42006, 1, 0, 'NPC LOOT - Scrolls V & Super Potions - (NPC Levels 58-72) - TBC NPC ONLY'),
(22875, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(22875, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22875, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22875, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22875, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22875, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22875, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22875, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22875, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22875, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22875, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22875, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22875;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22875, 22829, 4, 0, 1, 1, 0, 'Super Healing Potion'),
(22875, 27858, 35, 0, 1, 1, 0, 'Sunspring Carp'),
(22875, 29569, 45, 0, 1, 1, 0, 'Strong Junkbox'),
(22875, 29576, 10, 0, 1, 1, 0, 'Shark Bait');

-- Coilskar Soothsayer 22876
UPDATE `creature_template` SET `PickpocketLootId` = 22876 WHERE `entry` = 22876;
DELETE FROM `creature_loot_template` WHERE entry=22876;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22876, 17057, 32.31, 0, 1, 1, 0, 'Shiny Fish Scales'),
(22876, 17058, 21.54, 0, 1, 1, 0, 'Fish Oil'),
(22876, 27858, 1.54, 0, 1, 3, 0, 'Sunspring Carp'),
(22876, 27860, 0.87, 0, 1, 1, 0, 'Purified Draenic Water'),
(22876, 29452, 0.03, 0, 1, 1, 0, 'Zangar Trout'),
(22876, 42006, 2, 0, -42006, 1, 0, 'NPC LOOT - Scrolls V & Super Potions - (NPC Levels 58-72) - TBC NPC ONLY'),
(22876, 32897, 11, 0, 1, 1, 0, 'Mark of the Illidari'),
(22876, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22876, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22876, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22876, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22876, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22876, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22876, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22876, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22876, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22876, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22876, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22876;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22876, 22829, 39, 0, 1, 1, 0, 'Super Healing Potion'),
(22876, 27858, 37, 0, 1, 1, 0, 'Sunspring Carp'),
(22876, 29569, 5, 0, 1, 1, 0, 'Strong Junkbox');

-- Coilskar Wrangler 22877
UPDATE `creature_template` SET `PickpocketLootId` = 22877 WHERE `entry` = 22877;
DELETE FROM `creature_loot_template` WHERE entry=22877;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22877, 17057, 24.51, 0, 1, 1, 0, 'Shiny Fish Scales'),
(22877, 17058, 26.47, 0, 1, 1, 0, 'Fish Oil'),
(22877, 27858, 4.41, 0, 1, 3, 0, 'Sunspring Carp'),
(22877, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22877, 29452, 0.04, 0, 1, 1, 0, 'Zangar Trout'),
(22877, 42006, 2, 0, -42006, 1, 0, 'NPC LOOT - Scrolls V & Super Potions - (NPC Levels 58-72) - TBC NPC ONLY'),
(22877, 32897, 11.27, 0, 1, 1, 0, 'Mark of the Illidari'),
(22877, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22877, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22877, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22877, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22877, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22877, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22877, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22877, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22877, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22877, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22877, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22877;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22877, 22829, 3, 0, 1, 1, 0, 'Super Healing Potion'),
(22877, 27858, 24, 0, 1, 1, 0, 'Sunspring Carp'),
(22877, 29569, 25, 0, 1, 1, 0, 'Strong Junkbox'),
(22877, 29576, 50, 0, 1, 1, 0, 'Shark Bait');

-- Aqueous Lord 22878
DELETE FROM `creature_loot_template` WHERE entry=22878;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22878, 22578, 26.4, 0, 2, 4, 0, 'Mote of Water'),
(22878, 24508, 67.51, 0, 2, 4, 0, 'Elemental Fragment'),
(22878, 24511, 20.81, 0, 2, 4, 0, 'Primordial Essence'),
(22878, 7080, 0.9, 0, 2, 4, 0, 'Essence of Water'),
(22878, 32897, 9.14, 0, 1, 1, 0, 'Mark of the Illidari'),
(22878, 34093, 10, 1, -34093, 1, 0, 'Epic Gem'),
(22878, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22878, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22878, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22878, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22878, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22878, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22878, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22878, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22878, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22878, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

-- Shadowmoon Reaver 22879
UPDATE `creature_template` SET `PickpocketLootId` = 22879 WHERE `entry` = 22879;
DELETE FROM `creature_loot_template` WHERE entry=22879;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22879, 21877, 34.3, 0, 2, 3, 0, 'Netherweave Cloth'),
(22879, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(22879, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(22879, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22879, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22879, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22879, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22879, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22879, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22879, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22879, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22879, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22879, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22879, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22879;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22879, 22829, 17, 0, 1, 1, 0, 'Super Healing Potion'),
(22879, 29570, 25, 0, 1, 1, 0, 'A Gnome Effigy'),
(22879, 29569, 39, 0, 1, 1, 0, 'Strong Junkbox'),
(22879, 27855, 14, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22879, 27854, 12, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22879, 23441, 0.9, 0, 1, 1, 0, 'Nightseye');

-- Shadowmoon Champion 22880
UPDATE `creature_template` SET `PickpocketLootId` = 22880 WHERE `entry` = 22880;
DELETE FROM `creature_loot_template` WHERE entry=22880;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22880, 21877, 37.34, 0, 2, 3, 0, 'Netherweave Cloth'),
(22880, 32428, 10, 0, 1, 1, 0, 'Heart of Darkness'),
(22880, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(22880, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22880, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22880, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22880, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22880, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22880, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22880, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22880, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22880, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22880, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22880, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22880;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22880, 29569, 3, 0, 1, 1, 0, 'Strong Junkbox'),
(22880, 29570, 3, 0, 1, 1, 0, 'A Gnome Effigy'),
(22880, 27854, 1.2, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22880, 27855, 0.4, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22880, 23436, 0.18, 0, 1, 1, 0, 'Living Ruby');

-- Aqueous Surger 22881
DELETE FROM `creature_loot_template` WHERE entry=22881;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22881, 24508, 55.32, 0, 2, 4, 0, 'Elemental Fragment'),
(22881, 24511, 27.66, 0, 2, 4, 0, 'Primordial Essence'),
(22881, 22578, 29.79, 0, 2, 4, 0, 'Mote of Water'),
(22881, 7080, 6.38, 0, 1, 1, 0, 'Essence of Water'),
(22881, 32897, 8, 0, 1, 1, 0, 'Mark of the Illidari'),
(22881, 31952, 0.3, 0, 1, 1, 0, 'Khorium Lockbox'),
(22881, 34093, 10, 1, -34093, 1, 0, 'Epic Gem'),
(22881, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22881, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22881, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22881, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22881, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22881, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22881, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Aqueous Spawn 22883
DELETE FROM `creature_loot_template` WHERE entry=22883;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22883, 24508, 75.74, 0, 1, 4, 0, 'Elemental Fragment'),
(22883, 24511, 17.16, 0, 1, 4, 0, 'Primordial Essence'),
(22883, 22578, 27.9, 0, 2, 4, 0, 'Mote of Water'),
(22883, 7080, 3.29, 0, 1, 1, 0, 'Essence of Water'),
(22883, 32897, 8.84, 0, 1, 1, 0, 'Mark of the Illidari'),
(22883, 31952, 0.3, 0, 1, 1, 0, 'Khorium Lockbox'),
(22883, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22883, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22883, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22883, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22883, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Leviathan 22884
DELETE FROM `creature_loot_template` WHERE entry=22884;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22884, 17057, 22.4, 0, 1, 1, 0, 'Shiny Fish Scales'),
(22884, 17058, 22.4, 0, 1, 1, 0, 'Fish Oil'),
(22884, 27858, 0.8, 0, 1, 3, 0, 'Sunspring Carp'),
(22884, 27860, 2.4, 0, 1, 1, 0, 'Purified Draenic Water'),
(22884, 29452, 0.03, 0, 1, 1, 0, 'Zangar Trout'),
(22884, 42006, 2, 0, -42006, 1, 0, 'Scrolls V & Super Potions - (NPC Levels 58-72) - TBC ONLY'),
(22884, 32897, 15, 0, 1, 1, 0, 'Mark of the Illidari'),
(22884, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22884, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22884, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22884, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22884, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22884, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22884, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22884, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22884, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22884, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22884, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

-- Dragon Turtle 22885
DELETE FROM `creature_loot_template` WHERE entry=22885;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22885, 17057, 21.05, 0, 1, 1, 0, 'Shiny Fish Scales'),
(22885, 17058, 36.84, 0, 1, 1, 0, 'Fish Oil'),
(22885, 27858, 11, 0, 1, 3, 0, 'Sunspring Carp'),
(22885, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22885, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22885, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(22885, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'),
(22885, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22885, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22885, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22885, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22885, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22885, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22885, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22885, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Temple Concubine 22939
UPDATE `creature_template` SET `PickpocketLootId` = 22939 WHERE `entry` = 22939;
DELETE FROM `creature_loot_template` WHERE entry=22939;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22939, 21877, 39.66, 0, 1, 3, 0, 'Netherweave Cloth'),
(22939, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(22939, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(22939, 32897, 16, 0, 1, 1, 0, 'Mark of the Illidari'),
(22939, 32428, 4.81, 0, 1, 1, 0, 'Heart of Darkness'),
(22939, 34093, 6, 1, -34093, 1, 0, 'Epic Gem'),
(22939, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22939, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22939, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22939, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22939, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22939, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22939, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22939, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22939;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22939, 29569, 18, 0, 1, 1, 0, 'Strong Junkbox'),
(22939, 29570, 12, 0, 1, 1, 0, 'A Gnome Effigy'),
(22939, 27854, 9, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22939, 27855, 4, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22939, 22829, 6, 0, 1, 1, 0, 'Super Healing Potion');

-- Shadowmoon Blood Mage 22945
UPDATE `creature_template` SET `PickpocketLootId` = 22945 WHERE `entry` = 22945;
DELETE FROM `creature_loot_template` WHERE entry=22945;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22945, 21877, 38.9, 0, 2, 3, 0, 'Netherweave Cloth'),
(22945, 32428, 10, 0, 1, 1, 0, 'Heart of Darkness'),
(22945, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(22945, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22945, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22945, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22945, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22945, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22945, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22945, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22945, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22945, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22945, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22945, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22945;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22945, 29569, 41, 0, 1, 1, 0, 'Strong Junkbox'),
(22945, 29570, 36, 0, 1, 1, 0, 'A Gnome Effigy'),
(22945, 27854, 15, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22945, 27855, 3, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22945, 22829, 1.8, 0, 1, 1, 0, 'Super Healing Potion');

-- Shadowmoon War Hound 22946
DELETE FROM `creature_loot_template` WHERE entry=22946;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22946, 25418, 66.15, 0, 1, 4, 0, 'Razor Sharp Fang'),
(22946, 25421, 23.44, 0, 1, 4, 0, 'Gnarled Claw'),
(22946, 32428, 2, 0, 1, 1, 0, 'Heart of Darkness'),
(22946, 32897, 11, 0, 1, 1, 0, 'Mark of the Illidari'),
(22946, 34093, 5, 1, -34093, 1, 0, 'Epic Gem'),
(22946, 31952, 0.3, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22946, 36198, 0.5, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22946, 36199, 0.5, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22946, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22946, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22946, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22946, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22946, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22946, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

-- Wrathbone Flayer 22953
UPDATE `creature_template` SET `PickpocketLootId` = 22953 WHERE `entry` = 22953;
DELETE FROM `creature_loot_template` WHERE entry=22953;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22953, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22953, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(22953, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(22953, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22953, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22953, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22953, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22953, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22953, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22953, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22953, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22953, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22953, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22953, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22953;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22953, 29569, 23, 0, 1, 1, 0, 'Strong Junkbox'),
(22953, 22829, 54, 0, 1, 1, 0, 'Super Healing Potion');

-- Illidari Fearbringer 22954
UPDATE `creature_template` SET `PickpocketLootId` = 22954 WHERE `entry` = 22954;
DELETE FROM `creature_loot_template` WHERE entry=22954;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22954, 21877, 42.13, 0, 2, 3, 0, 'Netherweave Cloth'),
(22954, 32428, 6, 0, 1, 1, 0, 'Heart of Darkness'),
(22954, 32897, 7.61, 0, 1, 1, 0, 'Mark of the Illidari'),
(22954, 34093, 6, 1, -34093, 1, 0, 'Epic Gem'),
(22954, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22954, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22954, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22954, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22954, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22954, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22954, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22954, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22954, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22954, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22954;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22954, 29569, 14, 0, 1, 1, 0, 'Strong Junkbox'),
(22954, 29570, 29, 0, 1, 1, 0, 'A Gnome Effigy'),
(22954, 27854, 33, 0, 1, 1, 0, 'Smoked Talbuk Venison');

-- Charming Courtesan 22955
UPDATE `creature_template` SET `PickpocketLootId` = 22955 WHERE `entry` = 22955;
DELETE FROM `creature_loot_template` WHERE entry=22955;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22955, 21877, 42.42, 0, 1, 3, 0, 'Netherweave Cloth'),
(22955, 32428, 3.59, 0, 1, 1, 0, 'Heart of Darkness'),
(22955, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(22955, 34093, 6, 1, -34093, 1, 0, 'Epic Gem'),
(22955, 31952, 0.8, 0, 1, 1, 0, 'Khorium Lockbox'),
(22955, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22955, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22955, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22955, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22955, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22955, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22955, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22955, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22955;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22955, 29569, 40, 0, 1, 1, 0, 'Strong Junkbox'),
(22955, 29571, 35, 0, 1, 1, 0, 'A Steamy Romance Novel'),
(22955, 27856, 15, 0, 1, 1, 0, 'Skethyl Berries'),
(22955, 22829, 10, 0, 1, 1, 0, 'Super Healing Potion'),
(22955, 27855, 9, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22955, 30458, 8, 0, 1, 1, 0, 'Stromgarde Muenster'),
(22955, 23107, 1, 0, 1, 1, 0, 'Shadow Draenite'),
(22955, 23437, 0.17, 0, 1, 1, 0, 'Talasite');

-- Sister of Pain 22956
UPDATE `creature_template` SET `PickpocketLootId` = 22956 WHERE `entry` = 22956;
DELETE FROM `creature_loot_template` WHERE entry=22956;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22956, 21877, 33.33, 0, 2, 3, 0, 'Netherweave Cloth'),
(22956, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(22956, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(22956, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22956, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22956, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22956, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22956, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22956, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22956, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22956, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22956, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22956, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22956, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22956;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22956, 29570, 34, 0, 1, 1, 0, 'A Gnome Effigy'),
(22956, 29569, 16, 0, 1, 1, 0, 'Strong Junkbox'),
(22956, 27854, 22, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22956, 27855, 27, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22956, 22829, 1, 0, 1, 1, 0, 'Super Healing Potion');

-- Sister of Pleasure 22964
UPDATE `creature_template` SET `PickpocketLootId` = 22964 WHERE `entry` = 22964;
DELETE FROM `creature_loot_template` WHERE entry=22964;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22964, 21877, 37.69, 0, 2, 3, 0, 'Netherweave Cloth'),
(22964, 32428, 11, 0, 1, 1, 0, 'Heart of Darkness'),
(22964, 32897, 16, 0, 1, 1, 0, 'Mark of the Illidari'),
(22964, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22964, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22964, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22964, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22964, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22964, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22964, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22964, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22964, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22964, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22964, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22964;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22964, 29570, 0.9, 0, 1, 1, 0, 'A Gnome Effigy'),
(22964, 29569, 1.1, 0, 1, 1, 0, 'Strong Junkbox'),
(22964, 27855, 0.9, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22964, 22829, 0.6, 0, 1, 1, 0, 'Super Healing Potion');

-- Shadowmoon Riding Hound 23083
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 23083;
DELETE FROM `creature_loot_template` WHERE `entry` = 23083;

-- Delete old BT Trash Item RefLoot 14099 when all are done

-- ===================================
-- Refloot Cleanup/Fixup
-- ===================================

-- Cleanup Names
UPDATE `creature_loot_template` SET `comments` = 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids' WHERE `mincountOrRef` = -49001;
UPDATE `reference_loot_template_names` SET `name` = 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids' WHERE `entry` = 49001;
UPDATE `creature_loot_template` SET `comments` = 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids' WHERE `mincountOrRef` = -49002;
UPDATE `reference_loot_template_names` SET `name` = 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids' WHERE `entry` = 49002;
UPDATE `creature_loot_template` SET `comments` = 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy Ace) - Dungeon End Bosses (Levels: 70+)' WHERE `mincountOrRef` = -49000;
UPDATE `reference_loot_template_names` SET `name` = 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy Ace) - Dungeon End Bosses (Levels: 70+)' WHERE `entry` = 49000;
UPDATE `creature_loot_template` SET `comments` = 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - NPC Level 68+ Elite' WHERE `mincountOrRef` = -50501;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - NPC Level 68+ Elite' WHERE `entry` = 50501;
UPDATE `reference_loot_template_names` SET `name` = 'Scrolls V & Super Healing/Mana Potion - (NPC Levels 58-72) - TBC' WHERE `entry` = 42006;
UPDATE `reference_loot_template_names` SET `name` = 'Scrolls V - (NPC Levels 58-72) - TBC' WHERE `entry` = 50604;

-- Remove Cards 2-4 from 5-8 Refloot
DELETE FROM `reference_loot_template` WHERE `entry` = 49001 AND `item` IN (31885,31888,31889,31895,31899,31900,31904,31908,31909,31913,31917,31918);

-- Add missing Drops for 50501 - NPC LOOT (World Drop) - (Profession -Design, -Formula, -Pattern, -Plans, -Recipe, -Schematic) - NPC Levels 68+ Elite
DELETE FROM `reference_loot_template` WHERE `entry` = 50501 AND `item` IN (16253,22540,22541,24302,24296,23804,29714,29724,29727,29731,29733,32411);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(50501, 16253, 0, 1, 1, 1, 203, 'Formula: Enchant Chest - Greater Stats'),
(50501, 22540, 0, 1, 1, 1, 203, 'Formula: Enchant Shield - Shield Block'),
(50501, 22541, 0, 1, 1, 1, 203, 'Formula: Enchant Shield - Resistance'),
(50501, 24302, 0, 1, 1, 1, 201, 'Pattern: Unyielding Girdle'),
(50501, 24296, 0, 1, 1, 1, 201, 'Pattern: Unyielding Bracers'),
(50501, 23804, 0, 1, 1, 1, 202, 'Schematic: Power Amplification Goggles'),
(50501, 29714, 0, 1, 1, 1, 199, 'Pattern: Drums of Restoration'),
(50501, 29724, 0, 1, 1, 1, 199, 'Pattern: Cobrascale Gloves'),
(50501, 29727, 0, 1, 1, 1, 199, 'Pattern: Gloves of the Living Touch'),
(50501, 29731, 0, 1, 1, 1, 199, 'Pattern: Windstrike Gloves'),
(50501, 29733, 0, 1, 1, 1, 199, 'Pattern: Netherdrake Gloves'),
(50501, 32411, 0, 1, 1, 1, 204, 'Design: Thundering Skyfire Diamond');

-- Add more Single Mob Drop for Formula: Enchant Cloak - Major Resistance (-4 / + 14)
DELETE FROM `creature_loot_template` WHERE `entry` IN (23596,21124,23386,21519,22323,16415,16409,24684,18313,18323,18322,23169,20901) AND `item` = 22548;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23596, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(21124, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(23386, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(21519, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(22323, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(16415, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(16409, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(24684, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(18313, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(18323, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(18322, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(23169, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance'),
(20901, 22548, 0.03, 0, 1, 1, 0, 'Formula: Enchant Cloak - Major Resistance');

-- Typo 29279 should have been 28279
DELETE FROM `reference_loot_template` WHERE `entry` = 10006 AND `item` IN (29279,28279);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10006, 28279, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Cat\'s Swiftness');

-- Add 75-25% Super Healing Potion / Super Mana Potion Template 42009
DELETE FROM `reference_loot_template` WHERE `entry` = 42009;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(42009, 22829, 75, 0, 1, 1, 0, 'Super Healing Potion'),
(42009, 22832, 25, 0, 1, 1, 0, 'Super Mana Potion');

DELETE FROM `reference_loot_template_names` WHERE `entry` = 42009;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (42009, 'Super Healing/Mana Potion (75%)(25%) - TBC');