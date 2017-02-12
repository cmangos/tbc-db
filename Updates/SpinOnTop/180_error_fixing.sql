DELETE FROM spell_bonus_data WHERE entry=28382; -- remove redundant data

UPDATE item_template SET InventoryType=13 WHERE entry IN(11591); -- set inventory type according to DBC, apparently changed in WOTLK

DELETE FROM item_template WHERE entry IN(13722,22738);
INSERT INTO item_template(`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES
('22738', '2', '7', 'Monster - Sword, 1H Uber Demon Blade', '35151', '0', '0', '1', '0', '0', '13', '-1', '-1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0'),
('13722', '2', '10', 'Monster - Staff, Demon Skull Staff Low Purple Flame', '24489', '0', '0', '1', '0', '0', '17', '-1', '-1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0');

DELETE FROM creature_equip_template_raw WHERE entry IN(1492,1574); -- remove implemented template from RAW

UPDATE creature_template SET MinLevelHealth=879800, MaxLevelHealth=879800 WHERE entry = 16697; -- set correct health

INSERT INTO gameobject VALUES -- missing spawns from UDB
(85438,2846,530,1,-1713.09,-11621.2,34.2454,-1.91986,0,0,-0.819151,0.573577,1200,255,1),
(85442,2846,530,1,-2441.07,-11773,14.1232,-0.90757,0,0,-0.438371,0.898794,1200,255,1),
(85470,2846,530,1,-1814.48,-11553.1,34.1688,-2.1293,0,0,-0.874619,0.48481,1200,255,1),
(85471,2846,530,1,-1796.32,-12065.9,31.6599,1.97222,0,0,0.833885,0.551938,1200,255,1),
(85472,2846,530,1,-1681.67,-11801.6,22.0592,-1.5708,0,0,-0.707108,0.707106,1200,255,1),
(91361,2846,530,1,-2395.8,-12166.8,32.9882,-1.01229,0,0,-0.484809,0.87462,7200,255,1);

UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE entry IN(9887,9884,9885,9886); -- monthly quests missing repeatable flag

DELETE FROM creature_loot_template WHERE entry IN(20555); -- remove unused hanging reference

DELETE FROM reference_loot_template WHERE entry IN(40240,14000,14500); -- remove hanging references
DELETE FROM reference_loot_template_names WHERE entry IN(40240);

DELETE FROM npc_vendor WHERE entry IN(15309); -- remove wrong entry

DELETE FROM db_script_string WHERE entry IN(2000000080,2000000081); -- duplicate strings

UPDATE gameobject_template SET type=0,flags=4 WHERE entry IN(176147,176148); -- use type from classicDB, changed to door

UPDATE gameobject_template SET data2=2244,data3=0 WHERE entry IN(171943); -- shifted column, should have eventId 2244


