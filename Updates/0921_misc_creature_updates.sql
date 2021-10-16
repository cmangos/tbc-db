-- Delete creature

-- Remove Event Spawned Sunfury Technician 20218
-- https://www.wowhead.com/npc=20218/sunfury-technician#comments
DELETE FROM `creature` WHERE `id` = 20218; -- 84841,84842,84843

-- Remove Tempspawns
-- https://www.wowhead.com/quest=10458/enraged-spirits-of-fire-and-earth
-- https://www.wowhead.com/quest=10480/enraged-spirits-of-water
-- https://www.wowhead.com/quest=10481/enraged-spirits-of-air
DELETE FROM `creature` WHERE `id` IN (
21092, -- Credit Marker: Earth
21094, -- Credit Marker: Fire
21095, -- Credit Marker: Water
21096 -- Credit Marker: Air
);

-- Update creature

-- classic

-- Fix Vendor Gossip for Xan'tish 8404 (Snake Vendor)
UPDATE `creature_template` SET `NpcFlags` = 132 WHERE `entry` = 8404; -- [10] (161) UNIT_NPC_FLAGS: (4) Unknown1

-- Carrion Swarmer 13160 - Dire Maul
UPDATE `creature_template` SET `ModelId1` = 13096, `ModelId2` = 13111, `ModelId3` = 13097 WHERE `entry` = 13160;
UPDATE `creature_model_info` SET `bounding_radius` = 0.3, `combat_reach` = 0.9 WHERE `modelid` = 13096;
/*
    else if (cinfo->ModelId[2] && cinfo->ModelId[1] && cinfo->ModelId[0])
    {
        uint32 modelid_tmp = sObjectMgr.GetCreatureModelAlternativeModel(cinfo->ModelId[1]);
        display_id = modelid_tmp ? cinfo->ModelId[urand(0, 2)] : cinfo->ModelId[2];
    }
*/
UPDATE `creature_model_info` SET `modelid_alternative` = 13097 WHERE `modelid` = 13096; -- cicle through modelids due to code above
UPDATE `creature_model_info` SET `modelid_alternative` = 13111 WHERE `modelid` = 13097; -- why not utilize modelid from creature_template?
UPDATE `creature_model_info` SET `modelid_alternative` = 13096 WHERE `modelid` = 13111;

-- tbc+

UPDATE `creature` SET `id`  = 0 WHERE `guid` IN (57892,57893,57934,57936,58138,58139);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(57892,16831),(57892,16842), -- Nethergarde Infantry, Honor Hold Defender
(57893,16831),(57893,16864), -- Nethergarde Infantry, Stormwind Infantry
(57934,16842),(57934,16864), -- Honor Hold Defender, Stormwind Infantry
(57936,16842),(57936,16864), -- Honor Hold Defender, Stormwind Infantry
(58138,16842),(58138,16864), -- Honor Hold Defender, Stormwind Infantry
(58139,16842),(58139,16864); -- Honor Hold Defender, Stormwind Infantry

UPDATE `creature` SET `equipment_id` = 50007 WHERE `guid` IN (57933,58138,58139); -- strange issue, isnt displayed corretly with emotestate 233 conflict with creature_template or creature_spawn_entry?
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (50007, 1903, 143, 0); -- if 16842, else only 1903

-- Improve Spawning of Unstable Voidwraith & Voidshrieker @Manaforge Ultris
-- https://www.wowhead.com/npc=18870/voidshrieker#comments:id=86067:reply=10041
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 18869 FROM `creature` WHERE `creature`.`id` = 18870;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 18870 FROM `creature` WHERE `creature`.`id` = 18870;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 18869 FROM `creature` WHERE `creature`.`id` = 18869;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 18870 FROM `creature` WHERE `creature`.`id` = 18869;
UPDATE `creature` SET `id` = 0, `spawntimesecsmin` = 120 WHERE `id` IN (18869,18870); -- 120 300 as Elemental Plateau for Dynamic Respawn

UPDATE `creature` SET `spawntimesecsmin` = 80, `spawntimesecsmax` = 80 WHERE `id` IN (19723,19724); -- Correct Respawntime for Torching Sunfury Hold quest=10233 spell=34526

-- Add Generic Linking for Wildhammer and Shadowmoon Defenders
DELETE FROM `creature_linking` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (21736,21749)) OR `master_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (21736,21749));
DELETE FROM `creature_linking_template` WHERE `master_entry` IN (21736,21749);
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(21736, 530, 21736, 3, 3),(21749, 530, 21749, 3, 3);

-- Despawn c.guid.66153 during Darkmoon Faire (Terokkar Forest)
DELETE FROM `game_event_creature` WHERE `guid` = 66153;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(66153, -76), -- Darkmoon Faire (Terokkar Forest) - Building Stage 1
(66153, -77), -- Darkmoon Faire (Terokkar Forest) - Building Stage 2
(66153, -78); -- Darkmoon Faire (Terokkar Forest) - Darkmoon Faire Open

-- Fix Position and Model for Marksman Bova 25195
-- https://www.wowhead.com/npc=25195/marksman-bova#comments ~estimate 2.4 change
-- Patch 2.4.0 (2008-03-25): Now wears a Shattered Sun Offensive tabard, as part of the launching of the Battle for Quel'Danas.
UPDATE `creature` SET `position_x` = -1721.47, `position_y` = 5637.99, `position_z` = 128.107, `orientation` = 2.32129, `modelid` = 18743 WHERE `id` = 25195;
DELETE FROM `creature_template_addon` WHERE `entry` = 25195;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`) VALUES (25195, 2);

-- Correct UnitFlags for Outland Children's Week Aeris Landing Trigger 22838
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 22838;
UPDATE `creature` SET `position_x` = -2054.7473,  `position_y` = 8609.072,  `position_z` = 22.24437,  `orientation` = 4.363323211669921875 WHERE `guid` = 109766 AND `id` = 22838; -- Outland Children's Week Aeris Landing Trigger

-- Remove Exp from Unstable Shroom 20479
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|64 WHERE `entry` = 20479;

UPDATE `creature_template` SET `SpeedWalk` = (2.77778 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 18115; -- Daggerfen Muckdweller
UPDATE `creature_template` SET `SpeedWalk` = (2.77778 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 18116; -- Daggerfen Assassin

UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 21903; -- Nether Cloud01

UPDATE `creature_template` SET `UnitFlags` = 33536 WHERE `entry` = 22421; -- Skar'this the Heretic

UPDATE `creature_template` SET `ArmorMultiplier` = 4.055, `Armor` = 23892 WHERE `entry` = 20924; -- Grishnath Basilisk

UPDATE `creature_template` SET `UnitFlags` = 33555200 WHERE `entry` = 20156; -- Thrall Quest Trigger

UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` IN (18731,20636); -- Ambassador Hellmaw

UPDATE `creature_template` SET `SpeedWalk` = (1 / 2.5), `SpeedRun` = (1 / 7), `UnitFlags` = 33555200 WHERE `entry` = 25882; -- Multiphase Disturbance

UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 15086; -- Arathi Stablehand

-- Remove HP Regeneration due to Flying (and resetting) Darkness Released 22507
UPDATE `creature_template` SET `RegenerateStats` = `RegenerateStats`&~2 WHERE `entry` = 22507;

-- Add CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT for Wounded Blood Elf Pilgrim 16993 - maybe should be blocked by being in cage
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2 WHERE `entry` = 16993;

-- Remove Mana Regeneration for Bloodthirsty Marshfang 20196
UPDATE `creature_template` SET `RegenerateStats` = `RegenerateStats`&~12 WHERE `entry` = 20196;

UPDATE `creature_template` SET `Faction` = 1873 WHERE `entry` = 17057; -- Blacktalon the Savage
UPDATE `creature_template` SET `CreatureType` = 10 WHERE `entry` = 12999; -- World Invisible Trigger

-- Correct MeleeBaseAttackTime for Aeonus 17881 Normal Mode
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 17881;

-- model is sniff, unitflags are sniff - only solution only one modelid
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|128 WHERE `entry` = 21760; -- Oscillating Frequency Scanner Master Bunny

-- Fix InhabitType for Ambient Minion of Terokk 22380
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 22380;

-- Correct Speed for Greater Shadowfiend 22929
UPDATE `creature_template` SET `SpeedRun` = 5 / 7 WHERE `entry` = 22929;

-- Correct InhabitType for Kil'Jaeden Target 22320
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 22320;

-- Remove Reputation Gain from Harbinger Skyriss Illusions 21466,21467
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (21466,21467);

-- Correct UnitFlags for Karazhan - Chess, Medivh CHEAT: Fury of Medivh Visual (DND) 22521
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 22521;

-- Correct InhabitType for Hellfire Death Brazier 17552
UPDATE `creature_template` SET InhabitType = 4 WHERE `entry` = 17552;

-- Improve/Correct InhabitType for Wrangled Aether Ray 23343
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 23343; -- Flightspeed still bugged (Need to autodetect which speed to use)
-- [1] Movement Flags: 512 (DisableGravity)
-- [1] WalkSpeed: 16
-- [1] RunSpeed: 28

-- Correct Faction for Dathris Sunstriker 18594
UPDATE `creature_template` SET `Faction` = 1744 WHERE `entry` = 18594;

-- Correct Faction for Shattered Hand Blood Guard 17461 (SHH normal)
UPDATE `creature_template` SET `Faction` = 16 WHERE `entry` = 17461;

-- missing arena seasons UPDATE

-- ToDo Clean Readd of: 18898,19857,20278,23396,24392,24394,24395,24451,24452,25176,25177,25178,25179,26352,26378,26383,26384,27668,27721,27722,28225 - SubName = 'Arena Vendor'
UPDATE `creature_template` SET `VendorTemplateId` = 561 WHERE `entry` = 25176; -- https://www.wowhead.com/npc=18898/explodyne-fizzlespurt#comments:id=402507 so he sells S2 reduced cost in Season 3: event 55
UPDATE `creature_template` SET `VendorTemplateId` = 570 WHERE `entry` = 25178; -- https://www.wowhead.com/npc=25177/evee-copperspring#comments:id=268144 - duplicate used for two seasons 55,56 (S3,S4) with different templates
DELETE FROM `game_event_creature_data` WHERE `guid` IN (105911,70996);
INSERT INTO `game_event_creature_data` (`guid`, `vendor_id`, `event`) VALUES (105911,580,56),(70996,561,55);

