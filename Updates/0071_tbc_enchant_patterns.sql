-- Further Improve TBC Enchant Pattern Drop Rates
-- https://www.wowhead.com/tbc/items/recipes/enchanting?filter=128:111;4:1;0:301
-- https://web.archive.org/web/20080127070347/http://wow.allakhazam.com/db/item.html?witem=22532

-- The more often the mob is killed, the worse the dropchance on wowhead becomes for these patterns.
-- https://www.wowhead.com/tbc/item=22533/formula-enchant-bracer-fortitude - 1.6/3 (ran more often for rep)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `item` = 22533 AND `entry` = 17803; -- Coilfang Oracle - 8
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 22533 AND `entry` = 20622; -- Coilfang Oracle (1) - 8

-- https://www.wowhead.com/tbc/item=22543/formula-enchant-boots-fortitude - 2/4
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `item` = 22543 AND `entry` = 18317; -- Ethereal Priest - 2
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 22543 AND `entry` = 20257; -- Ethereal Priest (1) - 2

-- https://www.wowhead.com/tbc/item=22544/formula-enchant-boots-dexterity - 2/6
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `item` = 22544 AND `entry` = 18521; -- Raging Skeleton - 5, wotlk 2.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 22544 AND `entry` = 20315; -- Raging Skeleton (1) - 5

-- https://www.wowhead.com/tbc/item=22545/formula-enchant-boots-surefooted - 6
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item` = 22545 AND `entry` = 16472; -- Phantom Stagehand - 12

-- https://www.wowhead.com/tbc/item=22554/formula-enchant-2h-weapon-savagery - 7/15
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 22554 AND `entry` = 17465; -- Shattered Hand Centurion - 16 (heroic and normal was flipped)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 22554 AND `entry` = 20583; -- Shattered Hand Centurion (1) - 8

-- https://www.wowhead.com/tbc/item=22555/formula-enchant-weapon-major-spellpower - 3
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `item` = 22555 AND `entry` = 22242; -- Bash'ir Spell-Thief - 3
DELETE FROM `creature_loot_template` WHERE `item` = 22555 AND `entry` = 22243; -- Bash'ir Arcanist - 3 (wrong)

-- https://www.wowhead.com/tbc/item=22556/formula-enchant-2h-weapon-major-agility - 8/19
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 22556 AND `entry` = 20880; -- Eredar Deathbringer - 4
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 22556 AND `entry` = 21594; -- Eredar Deathbringer (1) - 8

-- https://www.wowhead.com/tbc/item=22534/formula-enchant-bracer-spellpower
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `item` = 22534 AND `entry` = 19952; -- Bloodmaul Geomancer - 7.13

-- Copy off 18092,20545 for now. "Tarren Mill" dummy npcs
-- https://www.wowhead.com/tbc/npc=23175/tarren-mill-guardsman
-- https://www.wowhead.com/tbc/npc=23176/tarren-mill-guardsman
UPDATE `creature_template` SET `MinLootGold` = 918, `MaxLootGold` = 1204, `LootId` = 18092, `PickpocketLootId` = 18092 WHERE `entry` = 23175; -- Tarren Mill Guardsman
UPDATE `creature_template` SET `MinLootGold` = 918, `MaxLootGold` = 1204, `LootId` = 18092, `PickpocketLootId` = 18092 WHERE `entry` = 23176; -- Tarren Mill Guardsman
UPDATE `creature_template` SET `MinLootGold` = 1836, `MaxLootGold` = 2408, `LootId` = 20545, `PickpocketLootId` = 18092 WHERE `entry` = 23181; -- Tarren Mill Guardsman (1)
UPDATE `creature_template` SET `MinLootGold` = 1836, `MaxLootGold` = 2408, `LootId` = 20545, `PickpocketLootId` = 18092 WHERE `entry` = 23182; -- Tarren Mill Guardsman (1)

-- https://www.wowhead.com/tbc/npc=23177/tarren-mill-lookout
-- https://www.wowhead.com/tbc/npc=23178/tarren-mill-lookout
UPDATE `creature_template` SET `MinLootGold` = 748, `MaxLootGold` = 982, `LootId` = 18094, `PickpocketLootId` = 18094 WHERE `entry` = 23177; -- Tarren Mill Lookout
UPDATE `creature_template` SET `MinLootGold` = 748, `MaxLootGold` = 982, `LootId` = 18094, `PickpocketLootId` = 18094 WHERE `entry` = 23178; -- Tarren Mill Lookout
UPDATE `creature_template` SET `MinLootGold` = 1496, `MaxLootGold` = 1964, `LootId` = 20546, `PickpocketLootId` = 18094 WHERE `entry` = 23183; -- Tarren Mill Lookout (1)
UPDATE `creature_template` SET `MinLootGold` = 1496, `MaxLootGold` = 1964, `LootId` = 20546, `PickpocketLootId` = 18094 WHERE `entry` = 23184; -- Tarren Mill Lookout (1)

-- https://www.wowhead.com/tbc/npc=23179/tarren-mill-protector
-- https://www.wowhead.com/tbc/npc=23180/tarren-mill-protector
UPDATE `creature_template` SET `MinLootGold` = 748, `MaxLootGold` = 982, `LootId` = 18093, `PickpocketLootId` = 18093 WHERE `entry` = 23179; -- Tarren Mill Protector
UPDATE `creature_template` SET `MinLootGold` = 748, `MaxLootGold` = 982, `LootId` = 18093, `PickpocketLootId` = 18093 WHERE `entry` = 23180; -- Tarren Mill Protector
UPDATE `creature_template` SET `MinLootGold` = 1496, `MaxLootGold` = 1964, `LootId` = 20547, `PickpocketLootId` = 18093 WHERE `entry` = 23185; -- Tarren Mill Protector (1)
UPDATE `creature_template` SET `MinLootGold` = 1496, `MaxLootGold` = 1964, `LootId` = 20547, `PickpocketLootId` = 18093 WHERE `entry` = 23186; -- Tarren Mill Protector (1)

DELETE FROM `creature_loot_template` WHERE `item` = 22532 AND `entry` = 17491; -- leftover in wotlkmangos (Inside RefLoot 50501 and not on normal mode)

-- Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids
UPDATE `creature_loot_template` SET `item` = 49001, `mincountOrRef` = -49001 WHERE `item` = 49003 AND `entry` IN (
18327, -- https://www.wowhead.com/tbc/npc=18327/time-lost-controller
18503); -- https://www.wowhead.com/tbc/npc=18503/phantasmal-possessor

-- Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids
UPDATE `creature_loot_template` SET `item` = 49002, `mincountOrRef` = -49002 WHERE `item` = 49003 AND `entry` IN (
18585, -- Raliq the Drunk
18586, -- Coosh'coosh
19201); -- Mountain Gronn

DELETE FROM `creature_loot_template` WHERE `entry` = 18327 AND `item` = 50501; -- https://web.archive.org/web/20080127070347/http://wow.allakhazam.com/db/item.html?witem=22532
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(18327, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!');

-- query where heroicentry has no LootId then add the base one for now
UPDATE `creature_template` SET `LootId` = 18327 WHERE `entry` = 20691; -- https://www.wowhead.com/tbc/npc=18327/time-lost-controller
UPDATE `creature_template` SET `LootId` = 17307 WHERE `entry` = 18435; -- Vazruden the Herald (Nazan's Head)
UPDATE `creature_template` SET `LootId` = 17537 WHERE `entry` = 18434; -- Vazruden (Ominous Letter)
UPDATE `creature_template` SET `LootId` = 18500 WHERE `entry` = 20320; -- Unliving Cleric
UPDATE `creature_template` SET `LootId` = 18501 WHERE `entry` = 20323; -- Unliving Stalker
UPDATE `creature_template` SET `LootId` = 19306 WHERE `entry` = 20263; -- Mana Leech

-- query where heroicentry has no PickpocketLootId then add the base one for now
UPDATE `creature_template` SET `PickpocketLootId` = 16807 WHERE `entry` = 20568; -- https://www.wowhead.com/tbc/npc=16807/grand-warlock-nethekurse#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 16808 WHERE `entry` = 20597; -- https://www.wowhead.com/tbc/npc=16808/warchief-kargath-bladefist#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 16809 WHERE `entry` = 20596; -- https://www.wowhead.com/tbc/npc=16809/warbringer-omrogg#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 17377 WHERE `entry` = 18607; -- https://www.wowhead.com/tbc/npc=17377/kelidan-the-breaker#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 17381 WHERE `entry` = 18621; -- https://www.wowhead.com/tbc/npc=17381/the-maker#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 0 WHERE `entry` = 17416; -- https://www.wowhead.com/tbc/npc=17416/orc-captive#pickpocketing
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 17416;
UPDATE `creature_template` SET `PickpocketLootId` = 17796 WHERE `entry` = 20630; -- https://www.wowhead.com/tbc/npc=17796/mekgineer-steamrigger#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 17797 WHERE `entry` = 20629; -- https://www.wowhead.com/tbc/npc=17797/hydromancer-thespia#pickpocketing maybe nothing due to stealthdetect & early aoe?
UPDATE `creature_template` SET `PickpocketLootId` = 17798 WHERE `entry` = 20633; -- https://www.wowhead.com/tbc/npc=17798/warlord-kalithresh#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 17848 WHERE `entry` = 20535; -- https://www.wowhead.com/tbc/npc=17848/lieutenant-drake#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 17862 WHERE `entry` = 20521; -- https://www.wowhead.com/tbc/npc=17862/captain-skarloc#pickpocketing scripted event npc is not attackable until last second
UPDATE `creature_template` SET `PickpocketLootId` = 17975 WHERE `entry` = 21558; -- https://www.wowhead.com/tbc/npc=17975/high-botanist-freywinn#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 17976 WHERE `entry` = 21551; -- https://www.wowhead.com/tbc/npc=17976/commander-sarannis#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 17978 WHERE `entry` = 21581; -- https://www.wowhead.com/tbc/npc=17978/thorngrin-the-tender#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 17991 WHERE `entry` = 19895; -- https://www.wowhead.com/tbc/npc=17991/rokmar-the-crackler#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 18373 WHERE `entry` = 20306; -- https://www.wowhead.com/tbc/npc=18373/exarch-maladaar#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 18472 WHERE `entry` = 20690; -- https://www.wowhead.com/tbc/npc=18472/darkweaver-syth#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 18473 WHERE `entry` = 20706; -- https://www.wowhead.com/tbc/npc=18473/talon-king-ikiss#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 18521 WHERE `entry` = 20315; -- https://www.wowhead.com/tbc/npc=18521/raging-skeleton#pickpocketing
DELETE FROM `pickpocketing_loot_template` WHERE `item` = 12004 AND `entry` = 18521;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(18521, 12004, 1, 0, -12004, 1, 0, 'TBC Rare Quality GEM');
UPDATE `creature_template` SET `PickpocketLootId` = 18667 WHERE `entry` = 20637; -- https://www.wowhead.com/tbc/npc=18667/blackheart-the-inciter#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 18708 WHERE `entry` = 20657; -- https://www.wowhead.com/tbc/npc=18708/murmur#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 18731 WHERE `entry` = 20636; -- https://www.wowhead.com/tbc/npc=18731/ambassador-hellmaw#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 18732 WHERE `entry` = 20653; -- https://www.wowhead.com/tbc/npc=18732/grandmaster-vorpil#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 19219 WHERE `entry` = 21533; -- https://www.wowhead.com/tbc/npc=19219/mechano-lord-capacitus#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 19220 WHERE `entry` = 21537; -- https://www.wowhead.com/tbc/npc=19220/pathaleon-the-calculator#pickpocketing
UPDATE `creature_template` SET `PickpocketLootId` = 19221 WHERE `entry` = 21536; -- https://www.wowhead.com/tbc/npc=19221/nethermancer-sepethrea#pickpocketing - also messy pull
UPDATE `creature_template` SET `PickpocketLootId` = 20885 WHERE `entry` = 21590; -- https://www.wowhead.com/tbc/npc=20885/dalliah-the-doomsayer#pickpocketing - same

-- https://www.wowhead.com/tbc/npc=21179/demon-hunter-supplicant#drops;150 is nerfed in our db somehow
-- https://web.archive.org/web/20080120205845/http://wow.allakhazam.com/db/mob.html?wmob=21179
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` =  21877 AND `entry` = 21179; -- Netherweave Cloth (4.2223)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `item` =  27854 AND `entry` = 21179; -- Smoked Talbuk Venison (0.4429)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `item` =  27860 AND `entry` = 21179; -- Purified Draenic Water (0.2013)

