INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14822,25365,-1,5,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12421,22563,-1,10,2,2,17);

UPDATE creature_template SET EquipmentTemplateId=122 WHERE entry IN (6228);
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('122','12421','0','0');

UPDATE creature_template SET MinLevelHealth=999300, MaxLevelHealth=999300 WHERE entry IN (17499);

UPDATE creature SET spawndist=0 WHERE guid IN (63371,73277,73278,73279);

UPDATE creature_template SET NPCFlags=515 WHERE entry IN (20159);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (9659501);

-- DELETE FROM db_script_string WHERE entry IN (2000000043);
-- insert into `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000043','%s begins a spell of summoning...','0','2','0','0',NULL);

-- Replaced With Newer Code
DELETE FROM dbscripts_on_spell WHERE id = 37097; 


-- Remove Obsolete DB_Strings
DELETE FROM db_script_string WHERE entry IN (2000000395);
DELETE FROM db_script_string WHERE entry IN (2000000396);
DELETE FROM db_script_string WHERE entry IN (2000000397);
DELETE FROM db_script_string WHERE entry IN (2000005488);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005568 AND 2000005575;

DELETE FROM `pet_levelstats` WHERE `creature_entry`=2070 AND `level` >= 64;
insert into `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) values('2070','64','3639','1718','3601','146','79','76','83','71');
insert into `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) values('2070','65','3696','1744','3658','148','80','77','84','72');
insert into `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) values('2070','66','3753','1770','3715','150','81','78','85','73');
insert into `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) values('2070','67','3810','1796','3772','152','82','79','86','74');
insert into `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) values('2070','68','3867','1822','3829','154','83','80','87','75');
insert into `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) values('2070','69','3924','1848','3886','156','84','81','88','76');
insert into `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) values('2070','70','3981','1874','3943','158','85','82','89','77');

-- =====================
-- Fix NPC Loot Problems
-- =====================
DELETE FROM creature_loot_template WHERE entry IN (19984);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','21877','41','0','1','3','0','Netherweave Cloth');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','17056','29','0','1','1','0','Light Feather');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','27854','4','0','1','1','0','Smoked Talbuk Venison');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','27860','2','0','1','1','0','Purified Draenic Water');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','5760','0.4','0','1','1','0','Eternium Lockbox');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','31952','0.4','0','1','1','0','Khorium Lockbox');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','30561','-25','0','1','1','228','Vekh\'nir Crystal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','30655','-25','0','1','1','0','Infused Vekh\'nir Crystal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','49002','0.1','0','-49002','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-4) - TBC NPC Not Located In Dungeons and Raids');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','61000','20','0','-61000','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 66-69) - (NPC Levels: 58-65) - TBC NPC ONLY');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','61115','2','0','-61115','1','0','NPC LOOT (Green World Drop) - (Item Levels: 96-105) - (NPC Levels: 65-66) - TBC NPC ONLY');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19984','61215','0.05','0','-61215','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 97-106) - (NPC Levels: 65-66) - TBC NPC ONLY');


DELETE FROM creature_loot_template WHERE entry IN (19983);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','21877','48','0','1','3','0','Netherweave Cloth');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','17056','35','0','1','1','0','Light Feather');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','27854','5','0','1','1','0','Smoked Talbuk Venison');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','5760','0.4','0','1','1','0','Eternium Lockbox');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','27860','3','0','1','1','0','Purified Draenic Water');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','30561','-30','0','1','1','228','Vekh\'nir Crystal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','30655','-30','0','1','1','0','Infused Vekh\'nir Crystal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','49002','0.1','0','-49002','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-4) - TBC NPC Not Located In Dungeons and Raids');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','61000','20','0','-61000','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 66-69) - (NPC Levels: 58-65) - TBC NPC ONLY');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','61114','2','0','-61114','1','0','NPC LOOT (Green World Drop) - (Item Levels: 96-102) - (NPC Levels: 65) - TBC NPC ONLY');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19983','61214','0.05','0','-61214','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 97-103) - (NPC Levels: 65) - TBC NPC ONLY');


DELETE FROM creature_loot_template WHERE entry IN (19982);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','17056','35','0','1','1','0','Light Feather');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','21877','48','0','1','3','0','Netherweave Cloth');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','27854','5','0','1','1','0','Smoked Talbuk Venison');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','5760','0.4','0','1','1','0','Eternium Lockbox');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','27860','2','0','1','1','0','Purified Draenic Water');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','30561','-30','0','1','1','228','Vekh\'nir Crystal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','30655','-30','0','1','1','0','Infused Vekh\'nir Crystal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','49002','0.1','0','-49002','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-4) - TBC NPC Not Located In Dungeons and Raids');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','61000','20','0','-61000','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 66-69) - (NPC Levels: 58-65) - TBC NPC ONLY');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','61115','2','0','-61115','1','0','NPC LOOT (Green World Drop) - (Item Levels: 96-105) - (NPC Levels: 65-66) - TBC NPC ONLY');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('19982','61215','0.05','0','-61215','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 97-106) - (NPC Levels: 65-66) - TBC NPC ONLY');


DELETE FROM creature_loot_template WHERE entry IN (20161);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','17056','17','0','1','1','0','Light Feather');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','21877','22','0','1','3','0','Netherweave Cloth');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','27854','2','0','1','1','0','Smoked Talbuk Venison');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','27860','2','0','1','1','0','Purified Draenic Water');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','30561','-10','0','1','1','228','Vekh\'nir Crystal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','30655','-10','0','1','1','0','Infused Vekh\'nir Crystal');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','31952','0.4','0','1','1','0','Khorium Lockbox');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','49002','0.1','0','-49002','1','0','NPC LOOT (World Drop) - Darkmoon Cards (2-4) - TBC NPC Not Located In Dungeons and Raids');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','61001','20','0','-61001','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','61116','2','0','-61116','1','0','NPC LOOT (Green World Drop) - (Item Levels: 99-105) - (NPC Levels: 66) - TBC NPC ONLY');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20161','61216','0.05','0','-61216','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 100-106) - (NPC Levels: 66) - TBC NPC ONLY');


-- ===========================
-- Updated Game Event Schedule
-- ===========================
TRUNCATE game_event;
ALTER TABLE `game_event` MODIFY `start_time` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute start date, the event will never start before', MODIFY `end_time` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute end date, the event will never start after';
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES
('1','2012-06-21 02:00:00','2020-12-31 00:00:00','525600','20160','341','Midsummer Fire Festival'), -- Occurrence: 525600
('2','2012-12-15 08:00:00','2020-12-31 00:00:00','525600','25920','141','Feast of Winter Veil - Main Event'), -- Occurrence: 525600

('6','2010-12-31 12:00:00','2020-12-31 00:00:00','525600','1080','0','New Year\'s Eve'), -- Occurrence: 525600
('7','2012-01-22 02:00:00','2020-12-31 00:00:00','525600','30240','327','Lunar Festival'), -- Occurrence: 525600
('8','2012-02-05 02:00:00','2020-12-31 00:00:00','525600','20160','335','Love is in the Air'), -- Occurrence: 525600
('9','2010-12-25 08:00:00','2020-12-31 08:00:00','525600','11520','0','Feast of Winter Veil - Presents Event'), -- Occurrence: 525600
('10','2012-04-29 02:00:00','2020-12-31 00:00:00','525600','10080','201','Children\'s Week '), -- Occurrence: 525600
('11','2012-09-24 02:00:00','2020-12-31 00:00:00','525600','10080','321','Harvest Festival'),
('12','2012-10-18 02:00:00','2020-12-31 00:00:00','525600','20160','324','Hallow\'s End'), -- Occurrence: 525600
('13','1970-01-01 00:00:00','1970-01-01 00:00:00','525600','1','0','Elemental Invasions'), -- Occurrence: 525600

('16','2007-08-04 14:00:00','2020-12-31 00:00:00','180','120','0','Gurubashi Arena Booty Run'),
('17','1970-01-01 00:00:00','1970-01-01 00:00:00','525600','1','0','Scourge Invasion'), -- Occurrence: 525600
('18','2011-01-14 02:00:00','2020-12-31 00:00:00','5760','5760','283','Call to Arms: Alterac Valley!'), -- Occurrence: 5760
('19','2011-01-21 02:00:00','2020-12-31 00:00:00','5760','5760','284','Call to Arms: Warsong Gulch!'), -- Occurrence: 5760
('20','2011-01-28 02:00:00','2020-12-31 00:00:00','5760','5760','285','Call to Arms: Arathi Basin!'), -- Occurrence: 5760
('21','2010-01-07 02:00:00','2020-12-31 00:00:00','5760','5760','353','Call to Arms: Eye of the Storm!'), -- Occurrence: 5760
('22','1970-01-01 00:00:00','1970-01-01 00:00:00','525600','1','0','AQ War Effort'), -- Occurrence: 525600
('23','2011-01-01 21:00:00','2020-12-31 00:00:00','1440','510','0','Pyrewood Village - Night Time Scourge Curse'),
('24','2011-01-01 00:58:00','2020-12-31 00:00:00','30','10','0','Stormwind City - Stockades Jail Break'),

('26','2012-09-20 02:00:00','2020-12-31 00:00:00','525600','23040','372','Brewfest'), -- Occurrence: 525600
('27','2011-01-01 21:00:00','2020-12-31 00:00:00','1440','510','0','Night Time'),
('28','2012-04-08 02:00:00','2020-12-31 00:00:00','525600','10080','181','Noblegarden'), -- Occurrence: 525600
('29','2010-12-27 21:00:00','2020-12-31 00:00:00','86400','21600','0','Zul\'Gurub - Edge of Madness (Gri\'lek)'),
('30','2011-01-10 21:00:00','2020-12-31 00:00:00','86400','21600','0','Zul\'Gurub - Edge of Madness (Hazza\'rah)'),
('31','2011-01-24 21:00:00','2020-12-31 00:00:00','86400','21600','0','Zul\'Gurub - Edge of Madness (Renataki)'),
('32','2010-12-13 21:00:00','2020-12-31 00:00:00','86400','21600','0','Zul\'Gurub - Edge of Madness (Wushoolay)'),
('33','1970-01-01 00:00:00','1970-01-01 00:00:00','5184000','2592000','0','Arena Tournament'),
('34','2009-01-04 10:00:00','2020-12-31 00:00:00','10080','240','0','Stranglethorn Fishing Extravaganza - Announce'),
('35','2009-01-04 14:00:00','2020-12-31 00:00:00','10080','120','301','Stranglethorn Fishing Extravaganza'),
('36','2009-01-04 14:00:00','2020-12-31 00:00:00','10080','180','0','Stranglethorn Fishing Extravaganza - Turn-in'),

('39','2010-12-30 00:01:00','2020-12-30 23:00:00','131040','4320','0','Darkmoon Faire (Mulgore) - Building Stage 1'), -- Occurrence: 131040
('40','2010-12-31 00:01:00','2020-12-30 23:00:00','131040','2880','0','Darkmoon Faire (Mulgore) - Building Stage 2'), -- Occurrence: 131040
('41','2011-03-03 00:01:00','2020-12-31 00:00:00','131040','4320','0','Darkmoon Faire (Elwynn Forest) - Building Stage 1'), -- Occurrence: 131040
('42','2011-03-04 00:01:00','2020-12-31 00:00:00','131040','2880','0','Darkmoon Faire (Elwynn Forest) - Building Stage 2'), -- Occurrence: 131040
('43','2011-02-03 00:01:00','2020-12-30 23:00:00','131040','4320','0','Darkmoon Faire (Terokkar Forest) - Building Stage 1'), -- Occurrence: 131040
('44','2011-02-04 00:01:00','2020-12-30 23:00:00','131040','2880','0','Darkmoon Faire (Terokkar Forest) - Building Stage 2'), -- Occurrence: 131040
('45','2011-01-02 00:01:00','2020-12-31 00:00:00','131040','8638','375','Darkmoon Faire (Mulgore)'), -- Occurrence: 131040
('46','2011-03-06 00:01:00','2020-12-31 00:00:00','131040','8638','374','Darkmoon Faire (Elwynn Forest)'), -- Occurrence: 131040
('47','2011-02-06 00:01:00','2020-12-31 00:00:00','131040','8638','376','Darkmoon Faire (Terokkar Forest)'), -- Occurrence: 131040

('53','2015-12-31 03:00:00','2020-12-31 00:00:00','525600','201600','0','Arena PvP Season 1'), -- Occurrence: January 30, 2007 - June 19, 2007 20 Weeks
('54','2020-12-31 00:00:00','2020-12-31 00:00:00','525600','1','0','Arena PvP Season 2'), -- Occurrence: June 20, 2007 - November 26, 2007 23 Weeks
('55','2020-12-31 00:00:00','2020-12-31 00:00:00','525600','1','0','Arena PvP Season 3'), -- Occurrence: November 28, 2007 - June 23, 2008 29 Weeks
('56','2020-12-31 00:00:00','2020-12-31 00:00:00','525600','1','0','Arena PvP Season 4'), -- Occurrence: June 24, 2008 - October 14, 2008 17 Weeks

('57','2011-01-01 02:48:00','2020-12-31 00:00:00','180','24','0','World\'s End Tavern - Perry Gatner Announce'),
('58','2011-01-01 03:00:00','2020-12-31 00:00:00','180','5','0','World\'s End Tavern - Perry Gatner Standup Comedy'),
('59','2011-01-01 03:48:00','2020-12-31 00:00:00','180','24','0','World\'s End Tavern - L70ETC Concert Announce'),
('60','2011-01-01 01:00:00','2020-12-31 00:00:00','180','5','0','World\'s End Tavern - L70ETC Concert'),
('61','2011-01-01 19:48:00','2020-12-31 00:00:00','1440','24','0','Grim Guzzler - L70ETC Pre-Concert'),
('62','2011-01-01 20:00:00','2020-12-31 00:00:00','1440','5','0','Grim Guzzler - L70ETC Concert'),
('63','2011-10-22 00:00:00','2011-10-24 00:00:00','60','5','0','L70ETC Concert - Terrokar Forest (Blizzcon Event)'),
('64','2011-01-01 00:00:00','2020-12-30 23:00:00','525600','44640','0','Brew of the Month - January'),
('65','2011-02-01 00:00:00','2020-12-30 23:00:00','525600','40320','0','Brew of the Month - February'),
('66','2011-03-01 00:00:00','2020-12-30 23:00:00','525600','44640','0','Brew of the Month - March'),
('67','2011-04-01 00:00:00','2020-12-30 23:00:00','525600','43200','0','Brew of the Month - April'),
('68','2011-05-01 00:00:00','2020-12-30 23:00:00','525600','44640','0','Brew of the Month - May'),
('69','2011-06-01 00:00:00','2020-12-30 23:00:00','525600','43200','0','Brew of the Month - June'),
('70','2011-07-01 00:00:00','2020-12-30 23:00:00','525600','44640','0','Brew of the Month - July'),
('71','2011-08-01 00:00:00','2020-12-30 23:00:00','525600','44640','0','Brew of the Month - August'),
('72','2011-09-01 00:00:00','2020-12-30 23:00:00','525600','43200','0','Brew of the Month - September'),
('73','2011-10-01 00:00:00','2020-12-30 23:00:00','525600','44640','0','Brew of the Month - October'),
('74','2011-11-01 00:00:00','2020-12-30 23:00:00','525600','43200','0','Brew of the Month - November'),
('75','2011-12-01 00:00:00','2020-12-30 23:00:00','525600','44640','0','Brew of the Month - December');


UPDATE creature_template SET MaxLevel=68 WHERE entry=22163;
UPDATE creature_template SET UnitClass=2 WHERE entry IN(18093,18094,18499,18500,18501,24696);
UPDATE creature_template SET UnitClass=8 WHERE entry IN(17377);
UPDATE creature_movement SET textid5=0,emote=378 WHERE id=52352 AND point=2;
UPDATE creature_movement SET textid5=0,emote=378 WHERE id=79712 AND point=6;
UPDATE creature_movement SET textid4=0,emote=378 WHERE id=79712 AND point=3;

DELETE FROM item_template WHERE entry=13622;
INSERT INTO item_template VALUES
('13622', '2', '10', '-1', 'Monster - Staff, D01 Circling Black Skull', '24343', '0', '0', '1', '0', '0', '17', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0');

UPDATE creature SET curMana=4896 WHERE guid IN(154664,154667,154669,154672,154638,154636,154634,154632,154630,154628,154626,154624,154622);

UPDATE creature_template SET MinLevelMana=0,MaxLevelMana=0 WHERE entry IN(8906,3129,3128,12900);
DELETE FROM creature_addon WHERE guid IN(31839,47259,84523);

UPDATE creature_template SET MinLevelHealth=2085,MaxLevelHealth=2232 WHERE entry IN(5981);

UPDATE creature SET curMana=12620 WHERE guid IN(140387,140390);

UPDATE creature_template SET MinLevelMana=2933 WHERE entry=21385;

UPDATE creature SET curmana=6061 WHERE guid IN(52388);
UPDATE creature SET curmana=31557 WHERE guid IN(91186);
UPDATE creature SET curmana=15775 WHERE guid IN(85102,85109,85115,85118,85124,85133);
UPDATE creature SET curmana=4623 WHERE guid IN(159993);
UPDATE creature SET curmana=8393 WHERE guid IN(83367,83368);
UPDATE creature SET curmana=8438 WHERE guid IN(83354);
UPDATE creature SET curmana=12620 WHERE guid IN(140386);

DELETE FROM db_script_string WHERE entry IN(2000000043);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(2,4,7,8);

UPDATE creature SET MovementType=0 WHERE guid IN(73277,73278,73279);

UPDATE creature a join creature_template b on a.id=b.entry SET a.curhealth=b.MinLevelHealth WHERE a.curhealth<b.MinLevelHealth AND b.RegenerateStats&1 AND a.id=b.entry;
UPDATE creature_template SET LootId=0 WHERE entry IN(18994,20742,7768,8876,17380,17770,17826,17848,17880,17942,17980,17991,18105,20303,20870,20886,24723);

DELETE FROM reference_loot_template WHERE entry IN(40034,40035,40036,40037,42005,42004,42003,42008,42006,42007);
INSERT INTO reference_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('40034', '24044', '0', '1', '1', '1', '0', 'Hellreaver'),
('40034', '24045', '0', '1', '1', '1', '0', 'Band of Renewal'),
('40034', '24046', '0', '1', '1', '1', '0', 'Kilt of Rolling Thunders'),
('40034', '24063', '0', '1', '1', '1', '0', 'Shifting Sash of Midnight'),
('40034', '24064', '0', '1', '1', '1', '0', 'Ironsole Clompers'),
('40034', '24083', '0', '1', '1', '1', '0', 'Lifegiver Britches'),
('40034', '24150', '0', '1', '1', '1', '0', 'Mok\'Nathal Wildercloak'),
('40034', '24151', '0', '1', '1', '1', '0', 'Mok\'Nathal Clan Ring'),
('40034', '24154', '0', '1', '1', '1', '0', 'Witching Band'),
('40034', '24155', '0', '1', '1', '1', '0', 'Ursol\'s Claw'),
('40035', '27452', '0', '1', '1', '1', '0', 'Light Scribe Bands'),
('40035', '27453', '0', '1', '1', '1', '0', 'Averinn\'s Ring of Slaying'),
('40035', '27454', '0', '1', '1', '1', '0', 'Volcanic Pauldrons'),
('40035', '27455', '0', '1', '1', '1', '0', 'Irondrake Faceguard'),
('40035', '27456', '0', '1', '1', '1', '0', 'Raiments of Nature\'s Breath'),
('40035', '27457', '0', '1', '1', '1', '0', 'Life Bearer\'s Gauntlets'),
('40035', '27458', '0', '1', '1', '1', '0', 'Oceansong Kilt'),
('40035', '27459', '0', '1', '1', '1', '0', 'Vambraces of Daring'),
('40035', '27460', '0', '1', '1', '1', '0', 'Reavers\' Ring'),
('40035', '27461', '0', '1', '1', '1', '0', 'Chestguard of the Prowler'),
('40036', '29238', '0', '1', '1', '1', '0', 'Lion\'s Heart Girdle'),
('40036', '29264', '0', '1', '1', '1', '0', 'Tree-Mender\'s Belt'),
('40036', '29346', '0', '1', '1', '1', '0', 'Feltooth Eviscerator'),
('40036', '32077', '0', '1', '1', '1', '0', 'Wrath Infused Gauntlets'),
('40037', '30592', '0', '1', '1', '1', '0', 'Steady Chrysoprase'),
('40037', '30593', '0', '1', '1', '1', '0', 'Iridescent Fire Opal'),
('40037', '30594', '0', '1', '1', '1', '0', 'Effulgent Chrysoprase'),
('42003', '22829', '20', '1', '1', '1', '0', 'Super Healing Potion'),
('42003', '22832', '20', '1', '1', '1', '0', 'Super Mana Potion'),
('42003', '27498', '0', '1', '1', '1', '0', 'Scroll of Agility V'),
('42003', '27499', '0', '1', '1', '1', '0', 'Scroll of Intellect V'),
('42003', '27500', '0', '1', '1', '1', '0', 'Scroll of Protection V'),
('42003', '27501', '0', '1', '1', '1', '0', 'Scroll of Spirit V'),
('42003', '27502', '0', '1', '1', '1', '0', 'Scroll of Stamina V'),
('42003', '27503', '0', '1', '1', '1', '0', 'Scroll of Strength V'),
('42004', '21929', '0', '1', '1', '1', '0', 'Flame Spessarite'),
('42004', '23077', '0', '1', '1', '1', '0', 'Blood Garnet'),
('42004', '23079', '0', '1', '1', '1', '0', 'Deep Peridot'),
('42004', '23107', '0', '1', '1', '1', '0', 'Shadow Draenite'),
('42004', '23112', '0', '1', '1', '1', '0', 'Golden Draenite'),
('42004', '23117', '0', '1', '1', '1', '0', 'Azure Moonstone'),
('42004', '23436', '4', '1', '1', '1', '0', 'Living Ruby'),
('42004', '23437', '4', '1', '1', '1', '0', 'Talasite'),
('42004', '23438', '4', '1', '1', '1', '0', 'Star of Elune'),
('42004', '23439', '4', '1', '1', '1', '0', 'Noble Topaz'),
('42004', '23440', '4', '1', '1', '1', '0', 'Dawnstone'),
('42004', '23441', '4', '1', '1', '1', '0', 'Nightseye'),
('42005', '24653', '0', '1', '1', '1', '0', 'Consortium Sash'),
('42005', '24654', '0', '1', '1', '1', '0', 'Consortium Boot'),
('42005', '24657', '0', '1', '1', '1', '0', 'Consortium Hood'),
('42005', '24658', '0', '1', '1', '1', '0', 'Consortium Pants'),
('42005', '24659', '0', '1', '1', '1', '0', 'Consortium Mantle'),
('42005', '24660', '0', '1', '1', '1', '0', 'Consortium Bracer'),
('42005', '24669', '0', '1', '1', '1', '0', 'Eldr\'naan Belt'),
('42005', '24670', '0', '1', '1', '1', '0', 'Eldr\'naan Boot'),
('42005', '24671', '0', '1', '1', '1', '0', 'Eldr\'naan Jerkin'),
('42005', '24672', '0', '1', '1', '1', '0', 'Eldr\'naan Gloves'),
('42005', '24674', '0', '1', '1', '1', '0', 'Eldr\'naan Pants'),
('42005', '24675', '0', '1', '1', '1', '0', 'Eldr\'naan Shoulderpads'),
('42005', '24676', '0', '1', '1', '1', '0', 'Eldr\'naan Bracelets'),
('42005', '24685', '0', '1', '1', '1', '0', 'Elementalist Belt'),
('42005', '24686', '0', '1', '1', '1', '0', 'Elementalist Boots'),
('42005', '24687', '0', '1', '1', '1', '0', 'Elementalist Tunic'),
('42005', '24688', '0', '1', '1', '1', '0', 'Elementalist Gloves'),
('42005', '24689', '0', '1', '1', '1', '0', 'Elementalist Skullcap'),
('42005', '24690', '0', '1', '1', '1', '0', 'Elementalist Leggings'),
('42005', '24691', '0', '1', '1', '1', '0', 'Elementalist Mantle'),
('42005', '24692', '0', '1', '1', '1', '0', 'Elementalist Bracelets'),
('42005', '24765', '0', '1', '1', '1', '0', 'Clefthoof Belt'),
('42005', '24766', '0', '1', '1', '1', '0', 'Clefthoof Wanderboots'),
('42005', '24767', '0', '1', '1', '1', '0', 'Clefthoof Hidemantle'),
('42005', '24768', '0', '1', '1', '1', '0', 'Clefthoof Gloves'),
('42005', '24769', '0', '1', '1', '1', '0', 'Clefthoof Cover'),
('42005', '24770', '0', '1', '1', '1', '0', 'Clefthoof Britches'),
('42005', '24771', '0', '1', '1', '1', '0', 'Clefthoof Shoulderguards'),
('42005', '24781', '0', '1', '1', '1', '0', 'Murkblood Belt'),
('42005', '24783', '0', '1', '1', '1', '0', 'Murkblood Boots'),
('42005', '24784', '0', '1', '1', '1', '0', 'Murkblood Chestpiece'),
('42005', '24785', '0', '1', '1', '1', '0', 'Murkblood Gloves'),
('42005', '24786', '0', '1', '1', '1', '0', 'Murkblood Cover'),
('42005', '24787', '0', '1', '1', '1', '0', 'Murkblood Pants'),
('42005', '24788', '0', '1', '1', '1', '0', 'Murkblood Shoulderguards'),
('42005', '24789', '0', '1', '1', '1', '0', 'Murkblood Bracers'),
('42005', '24798', '0', '1', '1', '1', '0', 'Dragonhawk Belt'),
('42005', '24799', '0', '1', '1', '1', '0', 'Dragonhawk Boots'),
('42005', '24800', '0', '1', '1', '1', '0', 'Dragonhawk Tunic'),
('42005', '24801', '0', '1', '1', '1', '0', 'Dragonhawk Gloves'),
('42005', '24802', '0', '1', '1', '1', '0', 'Dragonhawk Hat'),
('42005', '24803', '0', '1', '1', '1', '0', 'Dragonhawk Pants'),
('42005', '24804', '0', '1', '1', '1', '0', 'Dragonhawk Shoulderguards'),
('42005', '24805', '0', '1', '1', '1', '0', 'Dragonhawk Bands'),
('42005', '24878', '0', '1', '1', '1', '0', 'Der\'izu Belt'),
('42005', '24879', '0', '1', '1', '1', '0', 'Der\'izu Greaves'),
('42005', '24880', '0', '1', '1', '1', '0', 'Der\'izu Chestpiece'),
('42005', '24882', '0', '1', '1', '1', '0', 'Der\'izu Helm'),
('42005', '24883', '0', '1', '1', '1', '0', 'Der\'izu Legguards'),
('42005', '24884', '0', '1', '1', '1', '0', 'Der\'izu Spaulders'),
('42005', '24885', '0', '1', '1', '1', '0', 'Der\'izu Bracer'),
('42005', '24894', '0', '1', '1', '1', '0', 'Sundered Waistband'),
('42005', '24895', '0', '1', '1', '1', '0', 'Sundered Footwraps'),
('42005', '24896', '0', '1', '1', '1', '0', 'Sundered Chestpiece'),
('42005', '24897', '0', '1', '1', '1', '0', 'Sundered Gauntlets'),
('42005', '24898', '0', '1', '1', '1', '0', 'Sundered Helmet'),
('42005', '24899', '0', '1', '1', '1', '0', 'Sundered Legguards'),
('42005', '24900', '0', '1', '1', '1', '0', 'Sundered Spaulders'),
('42005', '24901', '0', '1', '1', '1', '0', 'Tortured Bracer'),
('42005', '24910', '0', '1', '1', '1', '0', 'Netherstorm Belt'),
('42005', '24911', '0', '1', '1', '1', '0', 'Netherstorm Greaves'),
('42005', '24912', '0', '1', '1', '1', '0', 'Netherstorm Chestpiece'),
('42005', '24913', '0', '1', '1', '1', '0', 'Netherstorm Gauntlets'),
('42005', '24914', '0', '1', '1', '1', '0', 'Netherstorm Helm'),
('42005', '24915', '0', '1', '1', '1', '0', 'Netherstorm Legguards'),
('42005', '24916', '0', '1', '1', '1', '0', 'Netherstorm Shoulderguards'),
('42005', '24917', '0', '1', '1', '1', '0', 'Netherstorm Bracer'),
('42005', '24990', '0', '1', '1', '1', '0', 'Warmaul Belt'),
('42005', '24991', '0', '1', '1', '1', '0', 'Warmaul Greaves'),
('42005', '24993', '0', '1', '1', '1', '0', 'Warmaul Gloves'),
('42005', '24994', '0', '1', '1', '1', '0', 'Warmaul Helmet'),
('42005', '24995', '0', '1', '1', '1', '0', 'Warmaul Legplates'),
('42005', '24997', '0', '1', '1', '1', '0', 'Warmaul Vambraces'),
('42005', '25006', '0', '1', '1', '1', '0', 'Conqueror\'s Girdle'),
('42005', '25007', '0', '1', '1', '1', '0', 'Conqueror\'s Greaves'),
('42005', '25008', '0', '1', '1', '1', '0', 'Conqueror\'s Breastplate'),
('42005', '25009', '0', '1', '1', '1', '0', 'Conqueror\'s Gauntlets'),
('42005', '25010', '0', '1', '1', '1', '0', 'Conqueror\'s Helmet'),
('42005', '25011', '0', '1', '1', '1', '0', 'Conqueror\'s Legplates'),
('42005', '25012', '0', '1', '1', '1', '0', 'Conqueror\'s Epaulets'),
('42005', '25013', '0', '1', '1', '1', '0', 'Conqueror\'s Vambraces'),
('42005', '25022', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Girdle'),
('42005', '25023', '0', '1', '1', '1', '0', 'Warlord\'s Sabatons'),
('42005', '25024', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Breastplate'),
('42005', '25025', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Gauntlets'),
('42005', '25026', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Helm'),
('42005', '25027', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Legplates'),
('42005', '25028', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Epaulets'),
('42005', '25029', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Vambraces'),
('42005', '25039', '0', '1', '1', '1', '0', 'Farseer Cloak'),
('42005', '25041', '0', '1', '1', '1', '0', 'Ambusher\'s Cloak'),
('42005', '25043', '0', '1', '1', '1', '0', 'Amber Cape'),
('42005', '25053', '0', '1', '1', '1', '0', 'Lazuli Ring'),
('42005', '25055', '0', '1', '1', '1', '0', 'Alexandrite Ring'),
('42005', '25057', '0', '1', '1', '1', '0', 'Amber Band'),
('42005', '25067', '0', '1', '1', '1', '0', 'Diopside Beads'),
('42005', '25069', '0', '1', '1', '1', '0', 'Epidote Stone Necklace'),
('42005', '25071', '0', '1', '1', '1', '0', 'Tanzanite Pendant'),
('42005', '25081', '0', '1', '1', '1', '0', 'Bayeaux Shield'),
('42005', '25083', '0', '1', '1', '1', '0', 'Smouldering Shield'),
('42005', '25085', '0', '1', '1', '1', '0', 'Dragonscale Shield'),
('42005', '25095', '0', '1', '1', '1', '0', 'Archmage Orb'),
('42005', '25097', '0', '1', '1', '1', '0', 'Astralaan Orb'),
('42005', '25099', '0', '1', '1', '1', '0', 'Draenei Crystal Rod'),
('42005', '25111', '0', '1', '1', '1', '0', 'Lionhead Dagger'),
('42005', '25113', '0', '1', '1', '1', '0', 'Phantom Dagger'),
('42005', '25127', '0', '1', '1', '1', '0', 'Knight\'s War Hammer'),
('42005', '25137', '0', '1', '1', '1', '0', 'Draenethyst Mallet'),
('42005', '25141', '0', '1', '1', '1', '0', 'Halaani Hammer'),
('42005', '25155', '0', '1', '1', '1', '0', 'Iron Skull Sword'),
('42005', '25167', '0', '1', '1', '1', '0', 'Nethersteel Claymore'),
('42005', '25169', '0', '1', '1', '1', '0', 'Fel Orc Brute Sword'),
('42005', '25183', '0', '1', '1', '1', '0', 'Voodoo Hex-Staff'),
('42005', '25195', '0', '1', '1', '1', '0', 'Diamond Tipped Claws'),
('42005', '25197', '0', '1', '1', '1', '0', 'Razor Scythes'),
('42005', '25207', '0', '1', '1', '1', '0', 'Shadowmoon Cleaver'),
('42005', '25211', '0', '1', '1', '1', '0', 'Rockbiter Cutter'),
('42005', '25225', '0', '1', '1', '1', '0', 'Deepforge Broadaxe'),
('42005', '25235', '0', '1', '1', '1', '0', 'Ethereal-Etched Glaive'),
('42005', '25237', '0', '1', '1', '1', '0', 'Nether Trident'),
('42005', '25239', '0', '1', '1', '1', '0', 'Legend\'s Glaive'),
('42005', '25291', '0', '1', '1', '1', '0', 'Nobility Torch'),
('42005', '25293', '0', '1', '1', '1', '0', 'Draenethyst Wand'),
('42005', '25295', '0', '1', '1', '1', '0', 'Flawless Wand'),
('42005', '25305', '0', '1', '1', '1', '0', 'Elemental Dagger'),
('42005', '25307', '0', '1', '1', '1', '0', 'Shadow Dagger'),
('42005', '25309', '0', '1', '1', '1', '0', 'Warpdagger'),
('42005', '25319', '0', '1', '1', '1', '0', 'Tranquility Mace'),
('42005', '25321', '0', '1', '1', '1', '0', 'Divine Hammer'),
('42005', '25323', '0', '1', '1', '1', '0', 'Ascendant\'s Scepter'),
('42005', '25337', '0', '1', '1', '1', '0', 'Swarming Sting-Staff'),
('42005', '31234', '0.25', '1', '1', '1', '0', 'Crystalblade of the Draenei'),
('42005', '31240', '0.25', '1', '1', '1', '0', 'Scales of the Beast'),
('42005', '31275', '0.25', '1', '1', '1', '0', 'Necklace of Trophies'),
('42005', '31280', '0.25', '1', '1', '1', '0', 'Thundercaller\'s Gauntlets'),
('42005', '31287', '0.25', '1', '1', '1', '0', 'Draenei Honor Guard Shield'),
('42005', '31288', '0.25', '1', '1', '1', '0', 'The Master\'s Treads'),
('42005', '31289', '0.25', '1', '1', '1', '0', 'Staff of Divine Infusion'),
('42005', '31290', '0.25', '1', '1', '1', '0', 'Band of Dominion'),
('42005', '31291', '0.25', '1', '1', '1', '0', 'Crystalforged War Axe'),
('42005', '31292', '0.25', '1', '1', '1', '0', 'Crystal Pulse Shield'),
('42005', '31293', '0.25', '1', '1', '1', '0', 'Girdle of Gale Force'),
('42005', '31294', '0.25', '1', '1', '1', '0', 'Pauldrons of Surging Mana'),
('42005', '31295', '0.25', '1', '1', '1', '0', 'Chestguard of the Dark Stalker'),
('42005', '31297', '0.25', '1', '1', '1', '0', 'Robe of the Crimson Order'),
('42005', '31298', '0.25', '1', '1', '1', '0', 'Legguards of the Shattered Hand'),
('42005', '31299', '0.25', '1', '1', '1', '0', 'The Oathkeeper'),
('42005', '31303', '0.25', '1', '1', '1', '0', 'Valanos\' Longbow'),
('42005', '31304', '0.25', '1', '1', '1', '0', 'The Essence Focuser'),
('42005', '31305', '0.25', '1', '1', '1', '0', 'Ced\'s Carver'),
('42005', '31306', '0.25', '1', '1', '1', '0', 'Leggings of the Sacred Crest'),
('42005', '31308', '0.25', '1', '1', '1', '0', 'The Bringer of Death'),
('42006', '22829', '22.7', '0', '1', '1', '0', 'Super Healing Potion'),
('42006', '22832', '24.3', '0', '1', '1', '0', 'Super Mana Potion'),
('42006', '27498', '0', '1', '1', '1', '0', 'Scroll of Agility V'),
('42006', '27499', '0', '1', '1', '1', '0', 'Scroll of Intellect V'),
('42006', '27500', '0', '1', '1', '1', '0', 'Scroll of Protection V'),
('42006', '27501', '0', '1', '1', '1', '0', 'Scroll of Spirit V'),
('42006', '27502', '0', '1', '1', '1', '0', 'Scroll of Stamina V'),
('42006', '27503', '0', '1', '1', '1', '0', 'Scroll of Strength V'),
('42007', '21929', '0', '1', '1', '1', '0', 'Flame Spessarite'),
('42007', '23077', '0', '1', '1', '1', '0', 'Blood Garnet'),
('42007', '23079', '0', '1', '1', '1', '0', 'Deep Peridot'),
('42007', '23107', '0', '1', '1', '1', '0', 'Shadow Draenite'),
('42007', '23112', '0', '1', '1', '1', '0', 'Golden Draenite'),
('42007', '23117', '0', '1', '1', '1', '0', 'Azure Moonstone'),
('42007', '23436', '4', '1', '1', '1', '0', 'Living Ruby'),
('42007', '23437', '4', '1', '1', '1', '0', 'Talasite'),
('42007', '23438', '4', '1', '1', '1', '0', 'Star of Elune'),
('42007', '23439', '4', '1', '1', '1', '0', 'Noble Topaz'),
('42007', '23440', '4', '1', '1', '1', '0', 'Dawnstone'),
('42007', '23441', '4', '1', '1', '1', '0', 'Nightseye'),
('42008', '24685', '0', '1', '1', '1', '0', 'Elementalist Belt'),
('42008', '24686', '0', '1', '1', '1', '0', 'Elementalist Boots'),
('42008', '24687', '0', '1', '1', '1', '0', 'Elementalist Tunic'),
('42008', '24688', '0', '1', '1', '1', '0', 'Elementalist Gloves'),
('42008', '24689', '0', '1', '1', '1', '0', 'Elementalist Skullcap'),
('42008', '24690', '0', '1', '1', '1', '0', 'Elementalist Leggings'),
('42008', '24691', '0', '1', '1', '1', '0', 'Elementalist Mantle'),
('42008', '24692', '0', '1', '1', '1', '0', 'Elementalist Bracelets'),
('42008', '24798', '0', '1', '1', '1', '0', 'Dragonhawk Belt'),
('42008', '24799', '0', '1', '1', '1', '0', 'Dragonhawk Boots'),
('42008', '24800', '0', '1', '1', '1', '0', 'Dragonhawk Tunic'),
('42008', '24801', '0', '1', '1', '1', '0', 'Dragonhawk Gloves'),
('42008', '24802', '0', '1', '1', '1', '0', 'Dragonhawk Hat'),
('42008', '24803', '0', '1', '1', '1', '0', 'Dragonhawk Pants'),
('42008', '24804', '0', '1', '1', '1', '0', 'Dragonhawk Shoulderguards'),
('42008', '24805', '0', '1', '1', '1', '0', 'Dragonhawk Bands'),
('42008', '24910', '0', '1', '1', '1', '0', 'Netherstorm Belt'),
('42008', '24911', '0', '1', '1', '1', '0', 'Netherstorm Greaves'),
('42008', '24912', '0', '1', '1', '1', '0', 'Netherstorm Chestpiece'),
('42008', '24913', '0', '1', '1', '1', '0', 'Netherstorm Gauntlets'),
('42008', '24914', '0', '1', '1', '1', '0', 'Netherstorm Helm'),
('42008', '24915', '0', '1', '1', '1', '0', 'Netherstorm Legguards'),
('42008', '24916', '0', '1', '1', '1', '0', 'Netherstorm Shoulderguards'),
('42008', '24917', '0', '1', '1', '1', '0', 'Netherstorm Bracer'),
('42008', '25022', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Girdle'),
('42008', '25023', '0', '1', '1', '1', '0', 'Warlord\'s Sabatons'),
('42008', '25024', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Breastplate'),
('42008', '25025', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Gauntlets'),
('42008', '25026', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Helm'),
('42008', '25027', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Legplates'),
('42008', '25028', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Epaulets'),
('42008', '25029', '0', '1', '1', '1', '0', 'Warlord\'s Iron-Vambraces'),
('42008', '25043', '0', '1', '1', '1', '0', 'Amber Cape'),
('42008', '25057', '0', '1', '1', '1', '0', 'Amber Band'),
('42008', '25071', '0', '1', '1', '1', '0', 'Tanzanite Pendant'),
('42008', '25085', '0', '1', '1', '1', '0', 'Dragonscale Shield'),
('42008', '25099', '0', '1', '1', '1', '0', 'Draenei Crystal Rod'),
('42008', '25113', '0', '1', '1', '1', '0', 'Phantom Dagger'),
('42008', '25127', '0', '1', '1', '1', '0', 'Knight\'s War Hammer'),
('42008', '25141', '0', '1', '1', '1', '0', 'Halaani Hammer'),
('42008', '25155', '0', '1', '1', '1', '0', 'Iron Skull Sword'),
('42008', '25169', '0', '1', '1', '1', '0', 'Fel Orc Brute Sword'),
('42008', '25183', '0', '1', '1', '1', '0', 'Voodoo Hex-Staff'),
('42008', '25197', '0', '1', '1', '1', '0', 'Razor Scythes'),
('42008', '25211', '0', '1', '1', '1', '0', 'Rockbiter Cutter'),
('42008', '25225', '0', '1', '1', '1', '0', 'Deepforge Broadaxe'),
('42008', '25239', '0', '1', '1', '1', '0', 'Legend\'s Glaive'),
('42008', '25253', '0', '1', '1', '1', '0', 'Windspear Longbow'),
('42008', '25281', '0', '1', '1', '1', '0', 'Big-Boar Battle Rifle'),
('42008', '25295', '0', '1', '1', '1', '0', 'Flawless Wand'),
('42008', '25309', '0', '1', '1', '1', '0', 'Warpdagger'),
('42008', '25323', '0', '1', '1', '1', '0', 'Ascendant\'s Scepter'),
('42008', '25337', '0', '1', '1', '1', '0', 'Swarming Sting-Staff'),
('42008', '31291', '0.5', '1', '1', '1', '0', 'Crystalforged War Axe'),
('42008', '31292', '0.5', '1', '1', '1', '0', 'Crystal Pulse Shield'),
('42008', '31293', '0.5', '1', '1', '1', '0', 'Girdle of Gale Force'),
('42008', '31294', '0.5', '1', '1', '1', '0', 'Pauldrons of Surging Mana'),
('42008', '31295', '0.5', '1', '1', '1', '0', 'Chestguard of the Dark Stalker'),
('42008', '31297', '0.5', '1', '1', '1', '0', 'Robe of the Crimson Order'),
('42008', '31298', '0.5', '1', '1', '1', '0', 'Legguards of the Shattered Hand'),
('42008', '31299', '0.5', '1', '1', '1', '0', 'The Oathkeeper'),
('42008', '31303', '0.5', '1', '1', '1', '0', 'Valanos\' Longbow'),
('42008', '31304', '0.5', '1', '1', '1', '0', 'The Essence Focuser'),
('42008', '31305', '0.5', '1', '1', '1', '0', 'Ced\'s Carver'),
('42008', '31306', '0.5', '1', '1', '1', '0', 'Leggings of the Sacred Crest'),
('42008', '31308', '0.5', '1', '1', '1', '0', 'The Bringer of Death');

DELETE FROM reference_loot_template WHERE entry IN(39000,39001);
INSERT INTO reference_loot_template VALUEs
('39000', '22575', '10', '2', '1', '3', '0', 'Mote of Life'),
('39000', '22785', '0', '1', '1', '3', '0', 'Felweed'),
('39000', '22786', '0', '1', '1', '3', '0', 'Dreaming Glory'),
('39000', '22789', '0', '1', '1', '3', '0', 'Terocone'),
('39000', '22790', '0', '1', '1', '3', '0', 'Ancient Lichen'),
('39000', '22793', '0', '1', '1', '3', '0', 'Mana Thistle'),
('39000', '22794', '2', '1', '1', '3', '0', 'Fel Lotus'),
('39000', '24401', '40', '1', '1', '1', '0', 'Unidentified Plant Parts'),
('39001', '21929', '0.9', '1', '1', '1', '0', 'Flame Spessarite'),
('39001', '22573', '20', '1', '1', '3', '0', 'Mote of Earth'),
('39001', '23077', '0.9', '1', '1', '1', '0', 'Blood Garnet'),
('39001', '23079', '0.9', '1', '1', '1', '0', 'Deep Peridot'),
('39001', '23107', '0.9', '1', '1', '1', '0', 'Shadow Draenite'),
('39001', '23112', '0.9', '1', '1', '1', '0', 'Golden Draenite'),
('39001', '23117', '0.9', '1', '1', '1', '0', 'Azure Moonstone'),
('39001', '23424', '15', '3', '1', '3', '0', 'Fel Iron Ore'),
('39001', '23425', '10', '3', '1', '3', '0', 'Adamantite Ore'),
('39001', '23426', '5', '3', '1', '2', '0', 'Khorium Ore'),
('39001', '23436', '0.01', '2', '1', '1', '0', 'Living Ruby'),
('39001', '23437', '0.01', '2', '1', '1', '0', 'Talasite'),
('39001', '23438', '0.01', '2', '1', '1', '0', 'Star of Elune'),
('39001', '23439', '0.01', '2', '1', '1', '0', 'Noble Topaz'),
('39001', '23440', '0.01', '2', '1', '1', '0', 'Dawnstone'),
('39001', '23441', '0.01', '2', '1', '1', '0', 'Nightseye'),
('39001', '24189', '100', '0', '1', '1', '0', 'Crystalline Fragments');

DELETE FROM gameobject_loot_template WHERE entry IN(21260);
INSERT INTO gameobject_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
('21260', '13444', '24.3', '0', '1', '1', '0'),
('21260', '13446', '22.3', '0', '1', '1', '0'),
('21260', '21929', '7.4', '0', '1', '1', '0'),
('21260', '23077', '7.9', '0', '1', '1', '0'),
('21260', '23079', '7.9', '0', '1', '1', '0'),
('21260', '23107', '7.2', '0', '1', '1', '0'),
('21260', '23112', '7.4', '0', '1', '1', '0'),
('21260', '23117', '6.8', '0', '1', '1', '0'),
('21260', '23436', '0.8', '0', '1', '1', '0'),
('21260', '23437', '0.9', '0', '1', '1', '0'),
('21260', '23438', '0.7', '0', '1', '1', '0'),
('21260', '23439', '1.1', '0', '1', '1', '0'),
('21260', '23440', '1', '0', '1', '1', '0'),
('21260', '23441', '0.7', '0', '1', '1', '0'),
('21260', '24605', '0.7', '0', '1', '1', '0'),
('21260', '24606', '0.6', '0', '1', '1', '0'),
('21260', '24607', '0.5', '0', '1', '1', '0'),
('21260', '24608', '0.6', '0', '1', '1', '0'),
('21260', '24609', '0.5', '0', '1', '1', '0'),
('21260', '24610', '0.8', '0', '1', '1', '0'),
('21260', '24611', '0.5', '0', '1', '1', '0'),
('21260', '24612', '0.5', '0', '1', '1', '0'),
('21260', '24621', '0.7', '0', '1', '1', '0'),
('21260', '24622', '0.5', '0', '1', '1', '0'),
('21260', '24623', '0.6', '0', '1', '1', '0'),
('21260', '24624', '0.6', '0', '1', '1', '0'),
('21260', '24625', '0.9', '0', '1', '1', '0'),
('21260', '24626', '0.6', '0', '1', '1', '0'),
('21260', '24627', '0.6', '0', '1', '1', '0'),
('21260', '24628', '0.5', '0', '1', '1', '0'),
('21260', '24637', '0.4', '0', '1', '1', '0'),
('21260', '24638', '0.4', '0', '1', '1', '0'),
('21260', '24639', '0.4', '0', '1', '1', '0'),
('21260', '24640', '0.5', '0', '1', '1', '0'),
('21260', '24641', '0.3', '0', '1', '1', '0'),
('21260', '24642', '0.3', '0', '1', '1', '0'),
('21260', '24643', '0.3', '0', '1', '1', '0'),
('21260', '24644', '0.4', '0', '1', '1', '0'),
('21260', '24717', '0.7', '0', '1', '1', '0'),
('21260', '24718', '0.5', '0', '1', '1', '0'),
('21260', '24719', '0.4', '0', '1', '1', '0'),
('21260', '24720', '0.5', '0', '1', '1', '0'),
('21260', '24721', '0.8', '0', '1', '1', '0'),
('21260', '24722', '0.5', '0', '1', '1', '0'),
('21260', '24723', '0.8', '0', '1', '1', '0'),
('21260', '24724', '0.6', '0', '1', '1', '0'),
('21260', '24733', '0.6', '0', '1', '1', '0'),
('21260', '24734', '0.6', '0', '1', '1', '0'),
('21260', '24735', '0.5', '0', '1', '1', '0'),
('21260', '24736', '0.4', '0', '1', '1', '0'),
('21260', '24737', '0.5', '0', '1', '1', '0'),
('21260', '24738', '0.6', '0', '1', '1', '0'),
('21260', '24739', '0.5', '0', '1', '1', '0'),
('21260', '24740', '0.7', '0', '1', '1', '0'),
('21260', '24749', '0.4', '0', '1', '1', '0'),
('21260', '24750', '0.3', '0', '1', '1', '0'),
('21260', '24751', '0.5', '0', '1', '1', '0'),
('21260', '24752', '0.3', '0', '1', '1', '0'),
('21260', '24753', '0.4', '0', '1', '1', '0'),
('21260', '24754', '0.2', '0', '1', '1', '0'),
('21260', '24755', '0.5', '0', '1', '1', '0'),
('21260', '24756', '0.3', '0', '1', '1', '0'),
('21260', '24830', '0.4', '0', '1', '1', '0'),
('21260', '24831', '0.4', '0', '1', '1', '0'),
('21260', '24832', '0.6', '0', '1', '1', '0'),
('21260', '24833', '0.4', '0', '1', '1', '0'),
('21260', '24834', '0.8', '0', '1', '1', '0'),
('21260', '24835', '0.5', '0', '1', '1', '0'),
('21260', '24836', '0.7', '0', '1', '1', '0'),
('21260', '24837', '0.7', '0', '1', '1', '0'),
('21260', '24846', '0.8', '0', '1', '1', '0'),
('21260', '24847', '0.7', '0', '1', '1', '0'),
('21260', '24848', '0.6', '0', '1', '1', '0'),
('21260', '24849', '0.6', '0', '1', '1', '0'),
('21260', '24850', '0.5', '0', '1', '1', '0'),
('21260', '24851', '0.6', '0', '1', '1', '0'),
('21260', '24852', '0.7', '0', '1', '1', '0'),
('21260', '24853', '0.5', '0', '1', '1', '0'),
('21260', '24862', '0.2', '0', '1', '1', '0'),
('21260', '24863', '0.3', '0', '1', '1', '0'),
('21260', '24864', '0.3', '0', '1', '1', '0'),
('21260', '24865', '0.3', '0', '1', '1', '0'),
('21260', '24866', '0.2', '0', '1', '1', '0'),
('21260', '24867', '0.5', '0', '1', '1', '0'),
('21260', '24868', '0.3', '0', '1', '1', '0'),
('21260', '24869', '0.3', '0', '1', '1', '0'),
('21260', '24942', '0.6', '0', '1', '1', '0'),
('21260', '24943', '0.5', '0', '1', '1', '0'),
('21260', '24944', '0.5', '0', '1', '1', '0'),
('21260', '24945', '0.6', '0', '1', '1', '0'),
('21260', '24946', '0.6', '0', '1', '1', '0'),
('21260', '24947', '0.4', '0', '1', '1', '0'),
('21260', '24948', '0.6', '0', '1', '1', '0'),
('21260', '24949', '0.6', '0', '1', '1', '0'),
('21260', '24958', '0.9', '0', '1', '1', '0'),
('21260', '24959', '0.5', '0', '1', '1', '0'),
('21260', '24960', '0.5', '0', '1', '1', '0'),
('21260', '24961', '0.8', '0', '1', '1', '0'),
('21260', '24962', '0.6', '0', '1', '1', '0'),
('21260', '24963', '0.7', '0', '1', '1', '0'),
('21260', '24964', '0.5', '0', '1', '1', '0'),
('21260', '24965', '0.6', '0', '1', '1', '0'),
('21260', '24974', '0.4', '0', '1', '1', '0'),
('21260', '24975', '0.4', '0', '1', '1', '0'),
('21260', '24976', '0.3', '0', '1', '1', '0'),
('21260', '24977', '0.4', '0', '1', '1', '0'),
('21260', '24978', '0.4', '0', '1', '1', '0'),
('21260', '24979', '0.3', '0', '1', '1', '0'),
('21260', '24980', '0.3', '0', '1', '1', '0'),
('21260', '24981', '0.4', '0', '1', '1', '0'),
('21260', '25033', '1.4', '0', '1', '1', '0'),
('21260', '25035', '1.6', '0', '1', '1', '0'),
('21260', '25037', '1', '0', '1', '1', '0'),
('21260', '25047', '3.1', '0', '1', '1', '0'),
('21260', '25049', '3.5', '0', '1', '1', '0'),
('21260', '25051', '2', '0', '1', '1', '0'),
('21260', '25061', '1.4', '0', '1', '1', '0'),
('21260', '25063', '1.4', '0', '1', '1', '0'),
('21260', '25065', '1.2', '0', '1', '1', '0'),
('21260', '25075', '1.5', '0', '1', '1', '0'),
('21260', '25077', '1.5', '0', '1', '1', '0'),
('21260', '25079', '0.9', '0', '1', '1', '0'),
('21260', '25089', '1.3', '0', '1', '1', '0'),
('21260', '25091', '1.3', '0', '1', '1', '0'),
('21260', '25093', '1.1', '0', '1', '1', '0'),
('21260', '25103', '0.4', '0', '1', '1', '0'),
('21260', '25105', '0.2', '0', '1', '1', '0'),
('21260', '25107', '0.3', '0', '1', '1', '0'),
('21260', '25117', '0.3', '0', '1', '1', '0'),
('21260', '25119', '0.2', '0', '1', '1', '0'),
('21260', '25121', '0.2', '0', '1', '1', '0'),
('21260', '25131', '0.3', '0', '1', '1', '0'),
('21260', '25133', '0.2', '0', '1', '1', '0'),
('21260', '25147', '0.3', '0', '1', '1', '0'),
('21260', '25149', '0.2', '0', '1', '1', '0'),
('21260', '25161', '0.1', '0', '1', '1', '0'),
('21260', '25175', '0.2', '0', '1', '1', '0'),
('21260', '25187', '0.5', '0', '1', '1', '0'),
('21260', '25189', '0.2', '0', '1', '1', '0'),
('21260', '25191', '0.2', '0', '1', '1', '0'),
('21260', '25201', '0.2', '0', '1', '1', '0'),
('21260', '25203', '0.2', '0', '1', '1', '0'),
('21260', '25205', '0.1', '0', '1', '1', '0'),
('21260', '25215', '0.2', '0', '1', '1', '0'),
('21260', '25217', '0.2', '0', '1', '1', '0'),
('21260', '25219', '0.2', '0', '1', '1', '0'),
('21260', '25229', '0.1', '0', '1', '1', '0'),
('21260', '25231', '0.1', '0', '1', '1', '0'),
('21260', '25257', '0.1', '0', '1', '1', '0'),
('21260', '25287', '0.5', '0', '1', '1', '0'),
('21260', '25289', '0.5', '0', '1', '1', '0'),
('21260', '25299', '1.3', '0', '1', '1', '0'),
('21260', '25301', '0.8', '0', '1', '1', '0'),
('21260', '25303', '0.4', '0', '1', '1', '0'),
('21260', '25313', '0.7', '0', '1', '1', '0'),
('21260', '25315', '0.4', '0', '1', '1', '0'),
('21260', '25317', '0.4', '0', '1', '1', '0'),
('21260', '25327', '0.3', '0', '1', '1', '0'),
('21260', '25329', '0.2', '0', '1', '1', '0'),
('21260', '27498', '7.5', '0', '1', '1', '0'),
('21260', '27499', '7.4', '0', '1', '1', '0'),
('21260', '27500', '8.1', '0', '1', '1', '0'),
('21260', '27501', '7.7', '0', '1', '1', '0'),
('21260', '27502', '8.5', '0', '1', '1', '0'),
('21260', '27503', '7.4', '0', '1', '1', '0'),
('21260', '28536', '0.1', '0', '1', '1', '0'),
('21260', '31125', '0.2', '0', '1', '1', '0'),
('21260', '31126', '0.3', '0', '1', '1', '0'),
('21260', '31127', '0.4', '0', '1', '1', '0'),
('21260', '31131', '0.2', '0', '1', '1', '0'),
('21260', '31133', '0.3', '0', '1', '1', '0'),
('21260', '31134', '0.2', '0', '1', '1', '0'),
('21260', '31136', '0.4', '0', '1', '1', '0'),
('21260', '31137', '0.5', '0', '1', '1', '0'),
('21260', '31138', '0.2', '0', '1', '1', '0'),
('21260', '31139', '0.4', '0', '1', '1', '0'),
('21260', '31140', '0.3', '0', '1', '1', '0'),
('21260', '31142', '0.3', '0', '1', '1', '0'),
('21260', '31143', '0.3', '0', '1', '1', '0'),
('21260', '31145', '0.4', '0', '1', '1', '0'),
('21260', '31147', '0.2', '0', '1', '1', '0'),
('21260', '31148', '0.2', '0', '1', '1', '0'),
('21260', '31149', '0.5', '0', '1', '1', '0'),
('21260', '31150', '0.4', '0', '1', '1', '0'),
('21260', '31151', '0.3', '0', '1', '1', '0'),
('21260', '31152', '0.4', '0', '1', '1', '0'),
('21260', '31153', '0.1', '0', '1', '1', '0'),
('21260', '31173', '0.4', '0', '1', '1', '0'),
('21260', '31175', '0.4', '0', '1', '1', '0'),
('21260', '31178', '0.2', '0', '1', '1', '0'),
('21260', '31180', '0.2', '0', '1', '1', '0'),
('21260', '31186', '0.2', '0', '1', '1', '0'),
('21260', '31187', '0.2', '0', '1', '1', '0'),
('21260', '31190', '0.2', '0', '1', '1', '0'),
('21260', '31193', '0.2', '0', '1', '1', '0'),
('21260', '31200', '0.1', '0', '1', '1', '0'),
('21260', '31204', '0.2', '0', '1', '1', '0'),
('21260', '31222', '0.1', '0', '1', '1', '0'),
('21260', '31226', '0.2', '0', '1', '1', '0'),
('21260', '31230', '0.3', '0', '1', '1', '0');

DELETE FROM reference_loot_template WHERE entry IN(24036,24041,24043,24045,43000,43002,43004);

DELETE a FROM creature_loot_template a WHERE not exists (select entry from reference_loot_template b where a.item=b.entry) and (-a.mincountOrRef)=a.item and -a.mincountOrRef<>0;
DELETE a FROM gameobject_loot_template a WHERE not exists (select entry from reference_loot_template b where a.item=b.entry) and (-a.mincountOrRef)=a.item and -a.mincountOrRef<>0;
DELETE a FROM item_loot_template a WHERE not exists (select entry from reference_loot_template b where a.item=b.entry) and (-a.mincountOrRef)=a.item and -a.mincountOrRef<>0;


