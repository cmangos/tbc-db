-- Luma Skymother 25697
UPDATE creature_template SET GossipMenuId = 11417, `NpcFlags` = `NpcFlags`|1 WHERE entry = 25697;
DELETE FROM gossip_menu WHERE entry = 11417;
INSERT INTO gossip_menu (entry,text_id) VALUES
(11417,12390);

DELETE FROM npc_text WHERE id IN (12390);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12390);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12390, 0, 24551);

-- Earthen Ring Flamecaller 25754
UPDATE creature_template SET GossipMenuId = 9260, `NpcFlags` = `NpcFlags`|1 WHERE entry = 25754;
DELETE FROM gossip_menu WHERE entry = 9260;
INSERT INTO gossip_menu (entry,text_id) VALUES
(9260,12572);
DELETE FROM npc_text WHERE id IN (12572);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12572);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12572, 0, 25373);

-- Shaman Beam Bunny 000 - 003
UPDATE creature_template SET MovementType = 3, `UnitFlags` = 33554432 WHERE entry IN (25964,25965,25966);

-- text updates
UPDATE broadcast_text SET ChatTypeId = 3 WHERE Id BETWEEN 24930 AND 24932;
-- 24930	The Earthen Ring's Assault Begins.
-- 24931	Ahune Retreats.  His defenses diminish.
-- 24932	Ahune will soon resurface.

-- Event starts from objects 'Ice Stone 187882' gossip instead of quest script
-- q.11691 Summon Ahune
UPDATE quest_template SET prevQuestId = 11696, RewSpellCast = 0, CompleteScript = 11691 WHERE entry = 11691;
DELETE FROM dbscripts_on_quest_end WHERE id = 11691;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(11691, 3000, 0, 15, 45930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Ahune - Summoning Rhyme Spell, make bonfire'); -- tbc-db only as gossip does not work (instance file)

-- Ice Stone 187882
UPDATE gameobject_template SET Data3 = 11389, `flags` = 0 WHERE entry = 187882;
DELETE FROM gossip_menu WHERE entry = 11389;
INSERT INTO gossip_menu (entry,text_id) VALUES
(11389,15864);
DELETE FROM npc_text WHERE id IN (15864);
DELETE FROM npc_text_broadcast_text WHERE Id IN (15864);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(15864, 0, 25213);
DELETE FROM gossip_menu_option WHERE menu_id = 11389;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(11389,1,0,'Disturb the stone and summon Lord Ahune.',40443,1,1,-1,0,1138901,0,0,NULL,0,0);
-- gossip Scripts should also use ID+01
DELETE FROM dbscripts_on_gossip WHERE `id` IN (7540,7520); -- from instance file for correct delete
UPDATE gossip_menu_option SET action_script_id = 754001 WHERE menu_id = 7540;
UPDATE gossip_menu_option SET action_script_id = 752001 WHERE menu_id = 7520;

-- Spell Target
DELETE FROM spell_script_target WHERE entry IN (46735);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(46735, 1, 26190);
-- Id: 46320
-- Name: Slippery Floor Ambient Periodic
DELETE FROM `dbscripts_on_spell` WHERE `id` IN (46320);
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(46320, 1, 15, 45946, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast 45946 t->t'),
(46320, 10, 15, 45947, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast 45947 t->t');

-- wotlk-db
DELETE FROM `item_template` WHERE `entry` IN (35557,35720); -- source: wotlk-db
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `ExtraFlags`) VALUES
(35557, 15, 3, -1, 'Huge Snowball', 29169, 1, 64, 1, 10, 0, 0, 32767, -1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46661, 0, -1, 0, 1000, 1197, 1000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '', 0, 0, 0, 0, 0),
(35720, 0, 5, -1, 'Lord of Frost\'s Private Label', 1656, 1, 0, 1, 2000, 500, 0, -1, -1, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46927, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '', 0, 0, 0, 0, 0);

-- this is still not the right way for this loot
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('187892','35557','50','2','2','2','0','Huge Snowball'), -- https://tbc.wowhead.com/object=187892/ice-chest, https://tbc.wowhead.com/object=188192/ice-chest
('187892','35720','50','2','6','6','0','Lord of Frost\'s Private Label'), -- https://tbc.wowhead.com/object=188191/ice-chest, https://tbc.wowhead.com/object=188124/ice-chest
('188124','35557','50','2','2','2','0','Huge Snowball'),
('188124','35720','50','2','6','6','0','Lord of Frost\'s Private Label');

-- item drop 35512 'Pocket Full of Snow'
DELETE FROM `item_loot_template` WHERE entry=35512; -- https://tbc.wowhead.com/item=35512/pocket-full-of-snow#contains
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('35512','17202','100','0','2','5','0','Snowball');

UPDATE `creature_template` SET `UnitFlags` = 33554944 WHERE `entry` = 26190; -- [PH] Spank Target Bunny [Entry 26190]

-- ========
-- TBC ONLY
-- ========
-- Ahunite Frostwind 25757,26341 - https://tbc.wowhead.com/npc=25757/ahunite-frostwind
UPDATE creature_template SET UnitClass = 2, MinLevelMana = 3155, MaxLevelMana = 3155, `Healthmultiplier` = 0.225, `MinLevelHealth` = 1258, `MaxLevelHealth` = 1258 WHERE entry = 25757;
UPDATE creature_template SET UnitClass = 2, MinLevelMana = 3155, MaxLevelMana = 3155, `Healthmultiplier` = 0.300, `MinLevelHealth` = 1677, `MaxLevelHealth` = 1677 WHERE entry = 26341;

-- Ahunite Coldwave 25756,26340 - https://tbc.wowhead.com/npc=25756/ahunite-coldwave - dmg multi taken from wotlk-db
UPDATE creature_template SET `Healthmultiplier` = 0.225, `MinLevelHealth` = 1572, `MaxLevelHealth` = 1572, `DamageMultiplier` = 1, `ArmorMultiplier` = 1 WHERE entry = 25756; -- 0.215 prolly prepatch nerf
UPDATE creature_template SET `Healthmultiplier` = 0.300, `MinLevelHealth` = 2096, `MaxLevelHealth` = 2096, `ExtraFlags` = `ExtraFlags`|64 WHERE entry = 26340; -- 0.287

-- Ahunite Hailstone 25755,26342 - https://tbc.wowhead.com/npc=25755/ahunite-hailstone - dmg multi taken from wotlk-db
UPDATE creature_template SET `DamageMultiplier` = 7.5, `ArmorMultiplier` = 1, `MinLevelHealth` = 55888, `MaxLevelHealth` = 55888 WHERE entry = 25755;
UPDATE creature_template SET `DamageMultiplier` = 13, `ExtraFlags` = `ExtraFlags`|64, `MinLevelHealth` = 72165, `MaxLevelHealth` = 72165 WHERE entry = 26342;

-- Frozen Core 25865,26339 - https://tbc.wowhead.com/npc=25865/frozen-core - whyever these have expansion = 0
UPDATE creature_template SET `Expansion` = 0, `DamageMultiplier` = 1, `ArmorMultiplier` = 1, `MinLevelHealth` = 175960, `MaxLevelHealth` = 175960 WHERE entry = 25865;
UPDATE creature_template SET `Expansion` = 0, `MinLevelHealth` = 228748, `MaxLevelHealth` = 228748 WHERE entry = 26339;

-- Ahune 25740,26338 - https://tbc.wowhead.com/npc=25740/ahune - whyever these have expansion = 0, dmg multi taken from wotlk-db
UPDATE creature_template SET `Expansion` = 0, `DamageMultiplier` = 7.5, `Healthmultiplier` = 40, `MinLevelHealth` = 175960, `MaxLevelHealth` = 175960 WHERE entry = 25740;
UPDATE creature_template SET `Expansion` = 0, `DamageMultiplier` = 13,  `Healthmultiplier` = 52, `MinLevelHealth` = 228748, `MaxLevelHealth` = 228748, `rank` = 1 WHERE entry = 26338;

