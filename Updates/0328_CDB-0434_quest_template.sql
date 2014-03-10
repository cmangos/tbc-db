-- Argent Quartermaster Lightspark 10857 (starts 2, ends 2)
-- https://tbc.wowhead.com/npc=10857/argent-quartermaster-lightspark
DELETE FROM `creature_questrelation` WHERE `id` = 10857 AND `quest` = 5405; -- taken by 10839
DELETE FROM `creature_involvedrelation` WHERE `id` = 10857 AND `quest` = 5405;

-- Duke Nicholas Zverenoff 11039 (starts 7, ends 8)
-- https://tbc.wowhead.com/quest=5503/argent-dawn-commission
DELETE FROM `creature_questrelation` WHERE `id` = 11039 AND `quest` = 5503;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (11039, 5503);
DELETE FROM `creature_involvedrelation` WHERE `id` = 11039 AND `quest` = 5503;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11039, 5503);

-- Argent Officer Pureheart 10840 (starts 4, ends 5)
-- https://tbc.wowhead.com/quest=5402/minions-scourgestones#/argent-dawn-commission
-- https://tbc.wowhead.com/quest=5403/invaders-scourgestones#/argent-dawn-commission
DELETE FROM `creature_questrelation` WHERE `id` = 10840 AND `quest` IN (5402, 5403);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10840, 5402);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10840, 5403);
DELETE FROM `creature_involvedrelation` WHERE `id` = 10840 AND `quest` IN (5402, 5403);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10840, 5402);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10840, 5403);
DELETE FROM `creature_questrelation` WHERE `id` = 10840 AND `quest` = 5407;
DELETE FROM `creature_questrelation` WHERE `id` = 10840 AND `quest` = 5408;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10840 AND `quest` = 5407;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10840 AND `quest` = 5408;

-- Argent Officer Garush 10839 (starts 4, ends 5)
-- https://tbc.wowhead.com/quest=5405/argent-dawn-commission#/argent-dawn-commission
-- https://tbc.wowhead.com/quest=5407/invaders-scourgestones#/argent-dawn-commission
-- https://tbc.wowhead.com/quest=5408/minions-scourgestones#/argent-dawn-commission
DELETE FROM `creature_questrelation` WHERE `id` = 10839 AND `quest` IN (5405, 5407, 5408);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10839, 5405);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10839, 5407);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10839, 5408);
DELETE FROM `creature_involvedrelation` WHERE `id` = 10839 AND `quest` IN (5405, 5407, 5408);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10839, 5405);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10839, 5407);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10839, 5408);
DELETE FROM `creature_questrelation` WHERE `id` = 10839 AND `quest` = 5402;
DELETE FROM `creature_questrelation` WHERE `id` = 10839 AND `quest` = 5403;
DELETE FROM `creature_questrelation` WHERE `id` = 10839 AND `quest` = 5503;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10839 AND `quest` = 5402;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10839 AND `quest` = 5403;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10839 AND `quest` = 5503;

-- overhaul quests (faction-requirements, rep-gain, grouping)

UPDATE `quest_template` SET `RequiredRaces` = 690, `SpecialFlags` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 10, `ExclusiveGroup` = 5503 WHERE `entry` = 5405; -- horde
UPDATE `quest_template` SET `RequiredRaces` = 690, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5406;
UPDATE `quest_template` SET `RequiredRaces` = 690, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5407;
UPDATE `quest_template` SET `RequiredRaces` = 690, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5408;

UPDATE `quest_template` SET `RequiredRaces` = 1101, `SpecialFlags` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 10, `ExclusiveGroup` = 5503 WHERE `entry` = 5401; -- alliance
UPDATE `quest_template` SET `RequiredRaces` = 1101, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5402;
UPDATE `quest_template` SET `RequiredRaces` = 1101, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5403; -- https://tbc.wowhead.com/quest=5403/invaders-scourgestones#comments:id=12041:reply=18546 50 rep in tbc
UPDATE `quest_template` SET `RequiredRaces` = 1101, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5404; -- https://tbc.wowhead.com/quest=5404/corruptors-scourgestones#comments:id=34737:reply=11537 50 rep in tbc

UPDATE `quest_template` SET `RequiredRaces` = 0, `SpecialFlags` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 10, `ExclusiveGroup` = 5503 WHERE `entry` = 5503; -- at chapal
UPDATE `quest_template` SET `RequiredRaces` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5508;
UPDATE `quest_template` SET `RequiredRaces` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5509; 
UPDATE `quest_template` SET `RequiredRaces` = 0, `RewRepFaction1` = 529, `RewRepValue1` = 50 WHERE `entry` = 5510; 

-- 10856	Argent Quartermaster Hasana	3421
-- 10857	Argent Quartermaster Lightspark	3441
-- 11536	Quartermaster Miranda Breechlock	3461

-- 3421	0	0	I need another Argent Dawn Commission.	6878	1	1	-1	0	3421	0	0		0	143
-- 3441	0	0	I need another Argent Dawn Commission.	6878	1	1	-1	0	3421	0	0		0	142
-- 3461	0	0	I need another Argent Dawn Commission.	6878	1	1	-1	0	3421	0	0		0	90

-- Fixup old entries
-- The Quests already have Req Race Field, so its not needed to do OR OR OR, just ITEM + Quest
UPDATE `gossip_menu_option` SET `condition_id` = 142 WHERE `menu_id` IN (3421) AND `id` = 0; -- horde
UPDATE `gossip_menu_option` SET `condition_id` = 8997 WHERE `menu_id` IN (3441) AND `id` = 0; -- alliance
UPDATE `gossip_menu_option` SET `condition_id` = 8999 WHERE `menu_id` IN (3461) AND `id` = 0; -- 5503 can never be completed if 5401 or 5405 are completed

REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(90, 2, 12846, 1, 0, 0, 1, 'Player Has Less Than 1 of Item ID 12846 in Inventory'),
(109, 8, 5405, 0, 0, 0, 0, 'Quest ID 5405 Rewarded'),
(110, 8, 5503, 0, 0, 0, 0, 'Quest ID 5503 Rewarded'),
(142, -1, 90, 109, 0, 0, 0, '(Player Has Less Than 1 of Item ID 12846 in Inventory AND Quest ID 5405 Rewarded)'),
(143, -1, 90, 110, 0, 0, 0, '(Player Has Less Than 1 of Item ID 12846 in Inventory AND Quest ID 5503 Rewarded)');

-- Conditions
-- Quest Argent Dawn Commission - Alliance
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 8996 AND 8999; -- 106 taken
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE
(8996, 8, 5401, 0), -- Quest ID 5401 Rewarded
(8997, -1, 8996, 90), -- Quest ID 5401 Rewarded & Item missing
(8998, -2, 109, 8996), -- Quest ID 5405 Rewarded OR 5401
(8999, -1, 8998, 90); -- (Quest ID 5401 Rewarded OR 5405) AND Item missing

-- https://tbc.wowhead.com/quest=9183/craftsmans-writ-radiant-circlet#comments:id=2780562 75 rep, when was it increased to 150? classic has 50, 2.2 patch increased
-- https://wowwiki-archive.fandom.com/wiki/Craftsman%27s_Writs?diff=next&oldid=1535197
-- https://tbc.wowhead.com/quest=9196/craftsmans-writ-thorium-grenade#comments:id=2983044
-- https://tbc.wowhead.com/quest=9187/craftsmans-writ-runic-leather-pants#comments:id=2745908 - classic 50rep
UPDATE `quest_template` SET `MinLevel` = 55, `SpecialFlags` = 1, `RewRepValue1` = 150, `RewRepFaction1` = 529  WHERE `entry` IN (9178, 9179, 9181, 9182, 9183, 9184, 9185, 9186, 9187, 9188, 9190, 9191, 9194, 9195, 9196, 9197, 9198, 9200, 9201, 9202, 9203, 9204, 9205, 9206);

