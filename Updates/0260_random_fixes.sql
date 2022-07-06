-- "Shallow Water" Identification 
UPDATE `creature_template` SET `InhabitType` = `InhabitType`|2 WHERE `entry` IN (
-- TBC+
18982,22173, -- Sable Jaguar
18983,22162, -- Blackfang Tarantula
21059, -- Enraged Water Spirit
21061 -- Enraged Fire Spirit
);

-- Dont Remove Darkmoon Set Item on Quest Abort
UPDATE `quest_template` SET `SrcItemId` = 0, `SrcItemCount` = 0 WHERE `entry` IN (7907,7927,7928,7929,10938,10939,10940,10941); -- ReqItemId1, 1

UPDATE creature_template SET `CallForHelp` = 1 WHERE `entry` IN ( -- CREATURE_EXTRA_FLAG_NO_CALL_ASSIST prev used now doing it by setting callforhelp low
-- 230
8901, -- Anvilrage Reservist 8901

-- TBC+
-- 540_shattered_halls
17621,20569, -- Heathen Guard
17622,20578, -- Sharpshooter Guard
17623,20575, -- Reaver Guard
-- 555_shadow_labyrinth
18632,20642, -- Cabal Executioner
18634,20648, -- Cabal Summoner
18639,20647, -- Cabal Spellbinder
-- 585_magisters_terrace
24688,25577, -- Wretched Skulker
24689,25575, -- Wretched Bruiser
24690,25576 -- Wretched Husk
);

-- REMOVE CREATURE_EXTRA_FLAG_MMAP_FORCE_DISABLE
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~16384 WHERE `entry` IN (
14482, -- Xorothian Imp
14483, -- Dread Guard

-- TBC+
16809,20596, -- Warbringer O'mrogg
16821, -- Magus Filinthus
17650, -- Prince Malchezaar's Axes
-- 18555, -- Dark Portal Beam Invisible Stalker (turning speed different then, legit fix)
20618, -- Mana Invader
20857,21585, -- Arcatraz Defender
20859,21587, -- Arcatraz Warder
20864,21608, -- Protean Nightmare
20865,21607 -- Protean Horror
-- 21075, -- Infernal Target (Hyjal) (turning speed different then, legit fix)
-- 24412 -- Daily Dungeon Image Bunny (turning speed different then, legit fix)
);

-- ADD CREATURE_EXTRA_FLAG_MMAP_FORCE_DISABLE
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|16384 WHERE `entry` IN (
17521, -- The Big Bad Wolf (strange pathing around the gos)
23340,23342,23344,23345,23346,23348, -- Dragonmaw flight quest racers (makes it more smooth)
23030, -- Dragonmaw Sky Stalker (tend to get stuck in terrain otherwise)
23330 -- Dragonmaw Wind Reaver (tend to get stuck in terrain otherwise)
);

-- CREATURE_EXTRA_FLAG_ACTIVE
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4096 WHERE `entry` IN (
550, -- Defias Messenger (Path)
12352, -- Scarlet Trooper (Path)
12339, -- Demetria (Path)

-- TBC+
18180, -- Hemet Nesingwary (RP Script Errors)
18200, -- Shado 'Fitz' Farstrider (RP Script Errors)
21315, -- Ruul the Darkener (Path)
21784, -- Ghostrider of Karabor (Path)
21244 -- Bonechewer Messenger (Path)
);


-- Increase Chance for Drain Schematics 24330 until it's confirmed that it should be more than it shows on wowhead
-- https://www.wowhead.com/item=24330/drain-schematics
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 16 WHERE `item` = 24330 AND `entry` = 18340; -- Steam Pump Overseer (9.3219)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8 WHERE `item` = 24330 AND `entry` = 20089; -- Bloodscale Wavecaller (4.2105)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8 WHERE `item` = 24330 AND `entry` = 20088; -- Bloodscale Overseer (4.3341)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8 WHERE `item` = 24330 AND `entry` = 18088; -- Bloodscale Enchantress (0.9444)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8 WHERE `item` = 24330 AND `entry` = 18089; -- Bloodscale Slavedriver (1.2946)

-- Add Loot condition for Drain Schematics 24330
-- https://web.archive.org/web/20071012162031/http://wow.allakhazam.com/db/item.html?witem=23338
DELETE FROM `conditions` WHERE `condition_entry` IN (9024,9025,9026);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `flags`, `comments`) VALUES
(9024, 23, 24330, 1, 1, 'Player Has Less Than 1 of Item ID 24330 in Inventory/Bank'),
(9025, 22, 9731, 0, 0, 'Quest ID 9731 NOT Taken AND NOT Rewarded'),
(9026, -1, 9025, 9024, 0, '(Quest ID 9731 NOT Taken AND NOT Rewarded) AND (Player Has Less Than 1 of Item ID 24330 in Inventory)');

UPDATE `creature_loot_template` SET `condition_id` = 9026 WHERE `item` = 24330 AND `entry` IN (18340,20089,20088,18088,18089);


