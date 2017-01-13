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


