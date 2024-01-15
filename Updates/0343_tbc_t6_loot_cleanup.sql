-- Befor, the groupid of a reference_loot_template referenced towards the items inside the reference_loot_template
-- Now, the groupid for a reference_loot_template is the same as for items, abiding to the 100% chance rule inside the primary loot table.
-- We will also have to check for cases, where groupid = 1 and other items also having groupid = 1
-- Same for refloots where groupid != 0 or 1 as it no longer rolles for explicit items inside the refloot which have this corresponding groupid

-- Linked Core Commits:
-- https://github.com/cmangos/mangos-tbc/commit/e9aa973fd979b5fe801a4c3a6c9011c7fc0170b4
-- https://github.com/cmangos/mangos-tbc/commit/ca97309fa842e1287661d30009910ac15554a87d
-- https://github.com/cmangos/mangos-tbc/commit/1ebd794f68a58ff7a093d2e4d4b3e6fdf05943f2

-- =====
-- Hyjal
-- =====
-- 17767	Rage Winterchill
-- Table 'creature_loot_template' entry 17767 group 1 has total chance > 100% (115.000000)
-- 36101	Hyjal Summit (Boss Loot) - Rage Winterchill - Epic Items (Group 1)
-- 36102	Hyjal Summit (Boss Loot) - Rage Winterchill - Epic Items (Group 2)
DELETE FROM `reference_loot_template` WHERE `entry` = 36101;
DELETE FROM `reference_loot_template` WHERE `entry` = 36102;
DELETE FROM `creature_loot_template` WHERE `entry` = 17767 AND `mincountOrRef` BETWEEN -36112 AND -36101;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36101, 30868, 0, 1, 1, 1, 0, 'Rejuvenating Bracers'),
(36101, 30869, 0, 1, 1, 1, 0, 'Howling Wind Bracers'),
(36101, 30870, 0, 1, 1, 1, 0, 'Cuffs of Devastation'),
(36101, 30871, 0, 1, 1, 1, 0, 'Bracers of Martyrdom'),
(36101, 30872, 0, 1, 1, 1, 0, 'Chronicle of Dark Secrets'),
(36101, 30873, 0, 1, 1, 1, 0, 'Stillwater Boots'),

(36102, 30861, 0, 1, 1, 1, 0, 'Furious Shackles'),
(36102, 30862, 0, 1, 1, 1, 0, 'Blessed Adamantite Bracers'),
(36102, 30863, 0, 1, 1, 1, 0, 'Deadly Cuffs'),
(36102, 30864, 0, 1, 1, 1, 0, 'Bracers of the Pathfinder'),
(36102, 30865, 0, 1, 1, 1, 0, 'Tracker\'s Blade'),
(36102, 30866, 0, 1, 1, 1, 0, 'Blood-stained Pauldrons');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17767, 36101, 100, 0, -36101, 1, 0, 'Hyjal Summit (Boss Loot) - Rage Winterchill - Epic Items (Group 1)'),
(17767, 36102, 100, 0, -36102, 1, 0, 'Hyjal Summit (Boss Loot) - Rage Winterchill - Epic Items (Group 2)'),
(17767, 36112, 15, 0, -36112, 1, 0, 'Hyjal Summit (Boss Loot) - Epic Gem Pattern');

-- 17808	Anetheron
-- Table 'creature_loot_template' entry 17808 group 1 has total chance > 100% (115.000000)
-- 36103	Hyjal Summit (Boss Loot) - Anetheron - Epic Items (Group 1)
-- 36104	Hyjal Summit (Boss Loot) - Anetheron - Epic Items (Group 2)
DELETE FROM `reference_loot_template` WHERE `entry` = 36103;
DELETE FROM `reference_loot_template` WHERE `entry` = 36104;
DELETE FROM `creature_loot_template` WHERE `entry` = 17808 AND `mincountOrRef` BETWEEN -36112 AND -36101;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36103, 30874, 0, 1, 1, 1, 0, 'The Unbreakable Will'),
(36103, 30883, 0, 1, 1, 1, 0, 'Pillar of Ferocity'),
(36103, 30884, 0, 1, 1, 1, 0, 'Hatefury Mantle'),
(36103, 30885, 0, 1, 1, 1, 0, 'Archbishop\'s Slippers'),
(36103, 30887, 0, 1, 1, 1, 0, 'Golden Links of Restoration'),
(36103, 30888, 0, 1, 1, 1, 0, 'Anetheron\'s Noose'),

(36104, 30878, 0, 1, 1, 1, 0, 'Glimmering Steel Mantle'),
(36104, 30879, 0, 1, 1, 1, 0, 'Don Alejandro\'s Money Belt'),
(36104, 30880, 0, 1, 1, 1, 0, 'Quickstrider Moccasins'),
(36104, 30881, 0, 1, 1, 1, 0, 'Blade of Infamy'),
(36104, 30882, 0, 1, 1, 1, 0, 'Bastion of Light'),
(36104, 30886, 0, 1, 1, 1, 0, 'Enchanted Leather Sandals');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17808, 36103, 100, 0, -36103, 1, 0, 'Hyjal Summit (Boss Loot) - Anetheron - Epic Items (Group 1)'),
(17808, 36104, 100, 0, -36104, 1, 0, 'Hyjal Summit (Boss Loot) - Anetheron - Epic Items (Group 2)'),
(17808, 36112, 15, 0, -36112, 1, 0, 'Hyjal Summit (Boss Loot) - Epic Gem Pattern');

-- 17888	Kaz'rogal
-- Table 'creature_loot_template' entry 17888 group 1 has total chance > 100% (115.000000)
-- 36105	Hyjal Summit (Boss Loot) - Kaz'rogal - Epic Items (Group 1)
-- 36106	Hyjal Summit (Boss Loot) - Kaz'rogal - Epic Items (Group 2)
DELETE FROM `reference_loot_template` WHERE `entry` = 36105;
DELETE FROM `reference_loot_template` WHERE `entry` = 36106;
DELETE FROM `creature_loot_template` WHERE `entry` = 17888 AND `mincountOrRef` BETWEEN -36112 AND -36101;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36105, 30893, 0, 1, 1, 1, 0, 'Sun-touched Chain Leggings'),
(36105, 30894, 0, 1, 1, 1, 0, 'Blue Suede Shoes'),
(36105, 30914, 0, 1, 1, 1, 0, 'Belt of the Crescent Moon'),
(36105, 30916, 0, 1, 1, 1, 0, 'Leggings of Channeled Elements'),
(36105, 30917, 0, 1, 1, 1, 0, 'Razorfury Mantle'),
(36105, 30918, 0, 1, 1, 1, 0, 'Hammer of Atonement'),

(36106, 30889, 0, 1, 1, 1, 0, 'Kaz\'rogal\'s Hardened Heart'),
(36106, 30891, 0, 1, 1, 1, 0, 'Black Featherlight Boots'),
(36106, 30892, 0, 1, 1, 1, 0, 'Beast-tamer\'s Shoulders'),
(36106, 30895, 0, 1, 1, 1, 0, 'Angelista\'s Sash'),
(36106, 30915, 0, 1, 1, 1, 0, 'Belt of Seething Fury'),
(36106, 30919, 0, 1, 1, 1, 0, 'Valestalker Girdle');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17888, 36105, 100, 0, -36105, 1, 0, 'Hyjal Summit (Boss Loot) - Kaz\'rogal - Epic Items (Group 1)'),
(17888, 36106, 100, 0, -36106, 1, 0, 'Hyjal Summit (Boss Loot) - Kaz\'rogal - Epic Items (Group 2)'),
(17888, 36112, 15, 0, -36112, 1, 0, 'Hyjal Summit (Boss Loot) - Epic Gem Pattern');

-- 17842	Azgalor
-- Table 'creature_loot_template' entry 17842 group 1 has total chance > 100% (115.000000)
-- 36107	Hyjal Summit (Boss Loot) - Azgalor - Epic Items
-- 36108	Hyjal Summit (Boss Loot) - Azgalor - T6 Token
DELETE FROM `reference_loot_template` WHERE `entry` = 36107;
DELETE FROM `reference_loot_template` WHERE `entry` = 36108;
DELETE FROM `creature_loot_template` WHERE `entry` = 17842 AND `mincountOrRef` BETWEEN -36112 AND -36101;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36107, 30896, 0, 1, 1, 1, 0, 'Glory of the Defender'),
(36107, 30897, 0, 1, 1, 1, 0, 'Girdle of Hope'),
(36107, 30898, 0, 1, 1, 1, 0, 'Shady Dealer\'s Pantaloons'),
(36107, 30899, 0, 1, 1, 1, 0, 'Don Rodrigo\'s Poncho'),
(36107, 30900, 0, 1, 1, 1, 0, 'Bow-stitched Leggings'),
(36107, 30901, 0, 1, 1, 1, 0, 'Boundless Agony'),
(36108, 31092, 0, 1, 1, 1, 0, 'Gloves of the Forgotten Conqueror'),
(36108, 31093, 0, 1, 1, 1, 0, 'Gloves of the Forgotten Vanquisher'),
(36108, 31094, 0, 1, 1, 1, 0, 'Gloves of the Forgotten Protector');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17842, 36108, 100, 0, -36108, 3, 0, 'Hyjal Summit (Boss Loot) - Azgalor - T6 Token'),
(17842, 36107, 100, 0, -36107, 1, 0, 'Hyjal Summit (Boss Loot) - Azgalor - Epic Items'),
(17842, 36112, 15, 0, -36112, 1, 0, 'Hyjal Summit (Boss Loot) - Epic Gem Pattern');

-- 17968	Archimonde
-- Table 'creature_loot_template' entry 17968 group 1 has total chance > 100% (230.000000)
-- 36109	Hyjal Summit (Boss Loot) - Archimonde - Epic Items (Group 1)
-- 36110	Hyjal Summit (Boss Loot) - Archimonde - Epic Items (Group 2)
-- 36111	Hyjal Summit (Boss Loot) - Archimonde - T6 Token
DELETE FROM `reference_loot_template` WHERE `entry` = 36109;
DELETE FROM `reference_loot_template` WHERE `entry` = 36110;
DELETE FROM `reference_loot_template` WHERE `entry` = 36111;
DELETE FROM `creature_loot_template` WHERE `entry` = 17968 AND `mincountOrRef` BETWEEN -36112 AND -36101;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36109, 30902, 0, 1, 1, 1, 0, 'Cataclysm\'s Edge'),
(36109, 30903, 0, 1, 1, 1, 0, 'Legguards of Endless Rage'),
(36109, 30904, 0, 1, 1, 1, 0, 'Savior\'s Grasp'),
(36109, 30905, 0, 1, 1, 1, 0, 'Midnight Chestguard'),
(36109, 30906, 0, 1, 1, 1, 0, 'Bristleblitz Striker'),
(36109, 30907, 0, 1, 1, 1, 0, 'Mail of Fevered Pursuit'),
(36110, 30908, 0, 1, 1, 1, 0, 'Apostle of Argus'),
(36110, 30909, 0, 1, 1, 1, 0, 'Antonidas\'s Aegis of Rapt Concentration'),
(36110, 30910, 0, 1, 1, 1, 0, 'Tempest of Chaos'),
(36110, 30911, 0, 1, 1, 1, 0, 'Scepter of Purification'),
(36110, 30912, 0, 1, 1, 1, 0, 'Leggings of Eternity'),
(36110, 30913, 0, 1, 1, 1, 0, 'Robes of Rhonin'),
(36111, 31095, 0, 1, 1, 1, 0, 'Helm of the Forgotten Protector'),
(36111, 31096, 0, 1, 1, 1, 0, 'Helm of the Forgotten Vanquisher'),
(36111, 31097, 0, 1, 1, 1, 0, 'Helm of the Forgotten Conqueror');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17968, 36109, 100, 0, -36109, 1, 0, 'Hyjal Summit (Boss Loot) - Archimonde - Epic Items (Group 1)'),
(17968, 36110, 100, 0, -36110, 1, 0, 'Hyjal Summit (Boss Loot) - Archimonde - Epic Items (Group 2)'),
(17968, 36112, 30, 0, -36112, 1, 0, 'Hyjal Summit (Boss Loot) - Epic Gem Pattern'),
(17968, 36111, 100, 0, -36111, 3, 0, 'Hyjal Summit (Boss Loot) - Archimonde - T6 Token');

-- 36112	Hyjal Summit (Boss Loot) - Epic Gem Pattern
DELETE FROM `reference_loot_template` WHERE `entry` = 36112; -- Has Skill ID 755, Minimum Skill Value 1 (204)
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36112, 32285, 0, 1, 1, 1, 204, 'Design: Flashing Crimson Spinel'),
(36112, 32289, 0, 1, 1, 1, 204, 'Design: Stormy Empyrean Sapphire'),
(36112, 32295, 0, 1, 1, 1, 204, 'Design: Mystic Lionseye'),
(36112, 32296, 0, 1, 1, 1, 204, 'Design: Great Lionseye'),
(36112, 32297, 0, 1, 1, 1, 204, 'Design: Sovereign Shadowsong Amethyst'),
(36112, 32298, 0, 1, 1, 1, 204, 'Design: Shifting Shadowsong Amethyst'),
(36112, 32303, 0, 1, 1, 1, 204, 'Design: Inscribed Pyrestone'),
(36112, 32307, 0, 1, 1, 1, 204, 'Design: Veiled Pyrestone');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36101, 'Hyjal Summit (Boss Loot) - Rage Winterchill - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36102, 'Hyjal Summit (Boss Loot) - Rage Winterchill - Epic Items (Group 2)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36103, 'Hyjal Summit (Boss Loot) - Anetheron - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36104, 'Hyjal Summit (Boss Loot) - Anetheron - Epic Items (Group 2)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36105, 'Hyjal Summit (Boss Loot) - Kaz\'rogal - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36106, 'Hyjal Summit (Boss Loot) - Kaz\'rogal - Epic Items (Group 2)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36107, 'Hyjal Summit (Boss Loot) - Azgalor - Epic Items');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36108, 'Hyjal Summit (Boss Loot) - Azgalor - T6 Token');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36109, 'Hyjal Summit (Boss Loot) - Archimonde - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36110, 'Hyjal Summit (Boss Loot) - Archimonde - Epic Items (Group 2)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36111, 'Hyjal Summit (Boss Loot) - Archimonde - T6 Token');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36112, 'Hyjal Summit (Boss Loot) - Epic Gem Pattern');

-- ==
-- BT
-- ==
DELETE FROM `reference_loot_template` WHERE `entry` = 36121;
DELETE FROM `reference_loot_template` WHERE `entry` = 36122;
DELETE FROM `creature_loot_template` WHERE `entry` = 22887 AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22887, 36121, 100, 0, -36121, 1, 0, 'Black Temple (Boss Loot) - High Warlord Naj\'entus - Epic Items'),
(22887, 36122, 100, 0, -36122, 1, 0, 'Black Temple (Boss Loot) - High Warlord Naj\'entus - Epic Items');

DELETE FROM `reference_loot_template` WHERE `entry` = 36123;
DELETE FROM `reference_loot_template` WHERE `entry` = 36124;
DELETE FROM `creature_loot_template` WHERE `entry` = 22898 AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22898, 36123, 100, 0, -36123, 1, 0, 'Black Temple (Boss Loot) - Supremus - Epic Items'),
(22898, 36124, 100, 0, -36124, 1, 0, 'Black Temple (Boss Loot) - Supremus - Epic Items');

DELETE FROM `reference_loot_template` WHERE `entry` = 36125;
DELETE FROM `reference_loot_template` WHERE `entry` = 36126;
DELETE FROM `creature_loot_template` WHERE `entry` = 22841 AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22841, 36125, 100, 0, -36125, 1, 0, 'Black Temple (Boss Loot) - Shade of Akama - Epic Items'),
(22841, 36126, 100, 0, -36126, 1, 0, 'Black Temple (Boss Loot) - Shade of Akama - Epic Items');

DELETE FROM `reference_loot_template` WHERE `entry` = 36127;
DELETE FROM `reference_loot_template` WHERE `entry` = 36128;
DELETE FROM `creature_loot_template` WHERE `entry` = 22871 AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22871, 36127, 100, 0, -36127, 1, 0, 'Black Temple (Boss Loot) - Teron Gorefiend - Epic Items'),
(22871, 36128, 100, 0, -36128, 1, 0, 'Black Temple (Boss Loot) - Teron Gorefiend - Epic Items');

DELETE FROM `reference_loot_template` WHERE `entry` = 36129;
DELETE FROM `reference_loot_template` WHERE `entry` = 36130;
DELETE FROM `creature_loot_template` WHERE `entry` = 22948 AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22948, 36129, 100, 0, -36129, 1, 0, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items'),
(22948, 36130, 100, 0, -36130, 1, 0, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items');

DELETE FROM `reference_loot_template` WHERE `entry` = 36131;
DELETE FROM `reference_loot_template` WHERE `entry` = 36132;
DELETE FROM `creature_loot_template` WHERE `entry` = 23420 AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23420, 36131, 100, 0, -36131, 1, 0, 'Black Temple (Boss Loot) - Essence of Anger - Epic Items'),
(23420, 36132, 100, 0, -36132, 1, 0, 'Black Temple (Boss Loot) - Essence of Anger - Epic Items');

-- Table 'creature_loot_template' entry 22947 group 1 has total chance > 100% (200.000000)
DELETE FROM `reference_loot_template` WHERE `entry` = 36133;
DELETE FROM `reference_loot_template` WHERE `entry` = 36134;
DELETE FROM `creature_loot_template` WHERE `entry` = 22947 AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22947, 36133, 100, 0, -36133, 1, 0, 'Black Temple (Boss Loot) - Mother Shahraz - Epic Items'),
(22947, 36134, 100, 0, -36134, 3, 0, 'Black Temple (Boss Loot) - Mother Shahraz - T6 Token');

DELETE FROM `reference_loot_template` WHERE `entry` = 36135;
DELETE FROM `reference_loot_template` WHERE `entry` = 36136;
DELETE FROM `creature_loot_template` WHERE `entry` IN (22949,22950,22951,22952) AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22949, 36136, 100, 0, -36136, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'),
(22950, 36135, 100, 0, -36135, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - Epic Items'),
(22951, 36136, 100, 0, -36136, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'),
(22952, 36136, 100, 0, -36136, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token');

-- Table 'creature_loot_template' entry 22917 group 1 has total chance > 100% (200.000000)
DELETE FROM `reference_loot_template` WHERE `entry` = 36137;
DELETE FROM `reference_loot_template` WHERE `entry` = 36138;
DELETE FROM `reference_loot_template` WHERE `entry` = 36139;
DELETE FROM `creature_loot_template` WHERE `entry` = 22917 AND `mincountOrRef` BETWEEN -36139 AND -36121;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22917, 36137, 100, 0, -36137, 1, 0, 'Black Temple (Boss Loot) - Illidan Stormrage - Epic Items'),
(22917, 36138, 100, 0, -36138, 1, 0, 'Black Temple (Boss Loot) - Illidan Stormrage - Epic Items'),
(22917, 36139, 100, 0, -36139, 3, 0, 'Black Temple (Boss Loot) - Illidan Stormrage - T6 Token');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36121, 32232, 0, 1, 1, 1, 0, 'Eternium Shell Bracers'),
(36121, 32234, 0, 1, 1, 1, 0, 'Fists of Mukoa'),
(36121, 32236, 0, 1, 1, 1, 0, 'Rising Tide'),
(36121, 32237, 0, 1, 1, 1, 0, 'The Maelstrom\'s Fury'),
(36121, 32238, 0, 1, 1, 1, 0, 'Ring of Calming Waves'),
(36121, 32243, 0, 1, 1, 1, 0, 'Pearl Inlaid Boots'),
(36121, 32377, 0, 1, 1, 1, 0, 'Mantle of Darkness'),

(36122, 32239, 0, 1, 1, 1, 0, 'Slippers of the Seacaller'),
(36122, 32240, 0, 1, 1, 1, 0, 'Guise of the Tidal Lurker'),
(36122, 32241, 0, 1, 1, 1, 0, 'Helm of Soothing Currents'),
(36122, 32242, 0, 1, 1, 1, 0, 'Boots of Oceanic Fury'),
(36122, 32245, 0, 1, 1, 1, 0, 'Tide-stomper\'s Greaves'),
(36122, 32247, 0, 1, 1, 1, 0, 'Ring of Captured Storms'),
(36122, 32248, 0, 1, 1, 1, 0, 'Halberd of Desolation'),

(36123, 32256, 0, 1, 1, 1, 0, 'Waistwrap of Infinity'),
(36123, 32257, 0, 1, 1, 1, 0, 'Idol of the White Stag'),
(36123, 32258, 0, 1, 1, 1, 0, 'Naturalist\'s Preserving Cinch'),
(36123, 32259, 0, 1, 1, 1, 0, 'Bands of the Coming Storm'),
(36123, 32260, 0, 1, 1, 1, 0, 'Choker of Endless Nightmares'),
(36123, 32261, 0, 1, 1, 1, 0, 'Band of the Abyssal Lord'),
(36123, 32262, 0, 1, 1, 1, 0, 'Syphon of the Nathrezim'),

(36124, 32250, 0, 1, 1, 1, 0, 'Pauldrons of Abyssal Fury'),
(36124, 32251, 0, 1, 1, 1, 0, 'Wraps of Precise Flight'),
(36124, 32252, 0, 1, 1, 1, 0, 'Nether Shadow Tunic'),
(36124, 32253, 0, 1, 1, 1, 0, 'Legionkiller'),
(36124, 32254, 0, 1, 1, 1, 0, 'The Brutalizer'),
(36124, 32255, 0, 1, 1, 1, 0, 'Felstone Bulwark'),

(36125, 32263, 0, 1, 1, 1, 0, 'Praetorian\'s Legguards'),
(36125, 32264, 0, 1, 1, 1, 0, 'Shoulders of the Hidden Predator'),
(36125, 32265, 0, 1, 1, 1, 0, 'Shadow-walker\'s Cord'),
(36125, 32266, 0, 1, 1, 1, 0, 'Ring of Deceitful Intent'),
(36125, 32268, 0, 1, 1, 1, 0, 'Myrmidon\'s Treads'),
(36125, 32276, 0, 1, 1, 1, 0, 'Flashfire Girdle'),
(36125, 32513, 0, 1, 1, 1, 0, 'Wristbands of Divine Influence'),

(36126, 32270, 0, 1, 1, 1, 0, 'Focused Mana Bindings'),
(36126, 32271, 0, 1, 1, 1, 0, 'Kilt of Immortal Nature'),
(36126, 32273, 0, 1, 1, 1, 0, 'Amice of Brilliant Light'),
(36126, 32275, 0, 1, 1, 1, 0, 'Spiritwalker Gauntlets'),
(36126, 32278, 0, 1, 1, 1, 0, 'Grips of Silent Justice'),
(36126, 32279, 0, 1, 1, 1, 0, 'The Seeker\'s Wristguards'),
(36126, 32361, 0, 1, 1, 1, 0, 'Blind-Seers Icon'),

(36127, 32326, 0, 1, 1, 1, 0, 'Twisted Blades of Zarak'),
(36127, 32328, 0, 1, 1, 1, 0, 'Botanist\'s Gloves of Growth'),
(36127, 32329, 0, 1, 1, 1, 0, 'Cowl of Benevolence'),
(36127, 32330, 0, 1, 1, 1, 0, 'Totem of Ancestral Guidance'),
(36127, 32348, 0, 1, 1, 1, 0, 'Soul Cleaver'),
(36127, 32512, 0, 1, 1, 1, 0, 'Girdle of Lordaeron\'s Fallen'),

(36128, 32280, 0, 1, 1, 1, 0, 'Gauntlets of Enforcement'),
(36128, 32323, 0, 1, 1, 1, 0, 'Shadowmoon Destroyer\'s Drape'),
(36128, 32324, 0, 1, 1, 1, 0, 'Insidious Bands'),
(36128, 32325, 0, 1, 1, 1, 0, 'Rifle of the Stoic Guardian'),
(36128, 32327, 0, 1, 1, 1, 0, 'Robe of the Shadow Council'),
(36128, 32510, 0, 1, 1, 1, 0, 'Softstep Boots of Tracking'),

(36129, 32338, 0, 1, 1, 1, 0, 'Blood-cursed Shoulderpads'),
(36129, 32339, 0, 1, 1, 1, 0, 'Belt of Primal Majesty'),
(36129, 32340, 0, 1, 1, 1, 0, 'Garments of Temperance'),
(36129, 32341, 0, 1, 1, 1, 0, 'Leggings of Divine Retribution'),
(36129, 32342, 0, 1, 1, 1, 0, 'Girdle of Mighty Resolve'),
(36129, 32343, 0, 1, 1, 1, 0, 'Wand of Prismatic Focus'),
(36129, 32344, 0, 1, 1, 1, 0, 'Staff of Immaculate Recovery'),

(36130, 32269, 0, 1, 1, 1, 0, 'Messenger of Fate'),
(36130, 32333, 0, 1, 1, 1, 0, 'Girdle of Stability'),
(36130, 32334, 0, 1, 1, 1, 0, 'Vest of Mounting Assault'),
(36130, 32335, 0, 1, 1, 1, 0, 'Unstoppable Aggressor\'s Ring'),
(36130, 32337, 0, 1, 1, 1, 0, 'Shroud of Forgiveness'),
(36130, 32501, 0, 1, 1, 1, 0, 'Shadowmoon Insignia'),

(36131, 32332, 0, 1, 1, 1, 0, 'Torch of the Damned'),
(36131, 32351, 0, 1, 1, 1, 0, 'Elunite Empowered Bracers'),
(36131, 32352, 0, 1, 1, 1, 0, 'Naturewarden\'s Treads'),
(36131, 32353, 0, 1, 1, 1, 0, 'Gloves of Unfailing Faith'),
(36131, 32354, 0, 1, 1, 1, 0, 'Crown of Empowered Fate'),
(36131, 32363, 0, 1, 1, 1, 0, 'Naaru-Blessed Life Rod'),
(36131, 32517, 0, 1, 1, 1, 0, 'The Wavemender\'s Mantle'),

(36132, 32345, 0, 1, 1, 1, 0, 'Dreadboots of the Legion'),
(36132, 32346, 0, 1, 1, 1, 0, 'Boneweave Girdle'),
(36132, 32347, 0, 1, 1, 1, 0, 'Grips of Damnation'),
(36132, 32349, 0, 1, 1, 1, 0, 'Translucent Spellthread Necklace'),
(36132, 32350, 0, 1, 1, 1, 0, 'Touch of Inspiration'),
(36132, 32362, 0, 1, 1, 1, 0, 'Pendant of Titans'),

(36133, 32365, 0, 1, 1, 1, 0, 'Heartshatter Breastplate'),
(36133, 32366, 0, 1, 1, 1, 0, 'Shadowmaster\'s Boots'),
(36133, 32367, 0, 1, 1, 1, 0, 'Leggings of Devastation'),
(36133, 32368, 0, 1, 1, 1, 0, 'Tome of the Lightbringer'),
(36133, 32369, 0, 1, 1, 1, 0, 'Blade of Savagery'),
(36133, 32370, 0, 1, 1, 1, 0, 'Nadina\'s Pendant of Purity'),

(36134, 31101, 0, 1, 1, 1, 0, 'Pauldrons of the Forgotten Conqueror'),
(36134, 31102, 0, 1, 1, 1, 0, 'Pauldrons of the Forgotten Vanquisher'),
(36134, 31103, 0, 1, 1, 1, 0, 'Pauldrons of the Forgotten Protector'),

(36135, 32331, 0, 1, 1, 1, 0, 'Cloak of the Illidari Council'),
(36135, 32373, 0, 1, 1, 1, 0, 'Helm of the Illidari Shatterer'),
(36135, 32376, 0, 1, 1, 1, 0, 'Forest Prowler\'s Helm'),
(36135, 32505, 0, 1, 1, 1, 0, 'Madness of the Betrayer'),
(36135, 32518, 0, 1, 1, 1, 0, 'Veil of Turning Leaves'),
(36135, 32519, 0, 1, 1, 1, 0, 'Belt of Divine Guidance'),

(36136, 31098, 0, 1, 1, 1, 0, 'Leggings of the Forgotten Conqueror'),
(36136, 31099, 0, 1, 1, 1, 0, 'Leggings of the Forgotten Vanquisher'),
(36136, 31100, 0, 1, 1, 1, 0, 'Leggings of the Forgotten Protector'),

(36137, 32235, 0, 1, 1, 1, 0, 'Cursed Vision of Sargeras'),
(36137, 32336, 0, 1, 1, 1, 0, 'Black Bow of the Betrayer'),
(36137, 32375, 0, 1, 1, 1, 0, 'Bulwark of Azzinoth'),
(36137, 32471, 0, 1, 1, 1, 0, 'Shard of Azzinoth'),
(36137, 32497, 0, 1, 1, 1, 0, 'Stormrage Signet Ring'),
(36137, 32521, 0, 1, 1, 1, 0, 'Faceplate of the Impenetrable'),

(36138, 32374, 0, 1, 1, 1, 0, 'Zhar\'doom, Greatstaff of the Devourer'),
(36138, 32483, 0, 1, 1, 1, 0, 'The Skull of Gul\'dan'),
(36138, 32496, 0, 1, 1, 1, 0, 'Memento of Tyrande'),
(36138, 32500, 0, 1, 1, 1, 0, 'Crystal Spire of Karabor'),
(36138, 32524, 0, 1, 1, 1, 0, 'Shroud of the Highborne'),
(36138, 32525, 0, 1, 1, 1, 0, 'Cowl of the Illidari High Lord'),

(36139, 31089, 0, 1, 1, 1, 0, 'Chestguard of the Forgotten Conqueror'),
(36139, 31090, 0, 1, 1, 1, 0, 'Chestguard of the Forgotten Vanquisher'),
(36139, 31091, 0, 1, 1, 1, 0, 'Chestguard of the Forgotten Protector');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36121, 'Black Temple (Boss Loot) - High Warlord Naj\'entus - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36122, 'Black Temple (Boss Loot) - High Warlord Naj\'entus - Epic Items (Group 2)');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36123, 'Black Temple (Boss Loot) - Supremus - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36124, 'Black Temple (Boss Loot) - Supremus - Epic Items (Group 2)');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36125, 'Black Temple (Boss Loot) - Shade of Akama - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36126, 'Black Temple (Boss Loot) - Shade of Akama - Epic Items (Group 2)');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36127, 'Black Temple (Boss Loot) - Teron Gorefiend - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36128, 'Black Temple (Boss Loot) - Teron Gorefiend - Epic Items (Group 2)');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36129, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36130, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items (Group 2)');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36131, 'Black Temple (Boss Loot) - Essence of Anger - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36132, 'Black Temple (Boss Loot) - Essence of Anger - Epic Items (Group 2)');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36133, 'Black Temple (Boss Loot) - Mother Shahraz - Epic Items');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36134, 'Black Temple (Boss Loot) - Mother Shahraz - T6 Token');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36135, 'Black Temple (Boss Loot) - Illidari Council - Epic Items');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36136, 'Black Temple (Boss Loot) - Illidari Council - T6 Token');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36137, 'Black Temple (Boss Loot) - Illidan Stormrage - Epic Items (Group 1)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36138, 'Black Temple (Boss Loot) - Illidan Stormrage - Epic Items (Group 2)');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36139, 'Black Temple (Boss Loot) - Illidan Stormrage - T6 Token');

-- 23863	Zul'jin
-- Table 'creature_loot_template' entry 23863 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 23863 AND `mincountOrRef` IN (-36153,-36154);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36153,36154);

-- 24239	Hex Lord Malacrass
-- Table 'creature_loot_template' entry 24239 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 24239 AND `mincountOrRef` IN (-36151,-36152);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36151,36152);

-- 29500	Zul'Aman - (Timed Event Loot) - Tanzar's Trunk (186648) / Kraz's Package (186667) / Ashli's Bag (186672) / Harkor's Satchel (187021)
-- -> 36155,36156,36157
DELETE FROM `reference_loot_template` WHERE `entry` IN (29500,36155,36156,36157);
DELETE FROM `reference_loot_template_names` WHERE `entry` = 29500;
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36155, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 1');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36156, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2');
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (36157, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 3');
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- 1 Hostage saved
(36155, 33480, 0, 1, 1, 1, 0, 'Cord of Braided Troll Hair'),
(36155, 33481, 0, 1, 1, 1, 0, 'Pauldrons of Stone Resolve'),
(36155, 33483, 0, 1, 1, 1, 0, 'Life-step Belt'),
(36155, 33489, 0, 1, 1, 1, 0, 'Mantle of Ill Intent'),
(36155, 33590, 0, 1, 1, 1, 0, 'Cloak of Fiends'),
(36155, 33591, 0, 1, 1, 1, 0, 'Shadowcaster\'s Drape'),
(36155, 33805, 0, 1, 1, 1, 0, 'Shadowhunter\'s Treads'),
-- 2 Hostages saved
(36156, 33971, 0, 1, 1, 1, 0, 'Elunite Imbued Leggings'),
(36156, 33490, 0, 2, 1, 1, 0, 'Staff of Dark Mending'),
(36156, 33491, 0, 2, 1, 1, 0, 'Tuskbreaker'),
(36156, 33492, 0, 2, 1, 1, 0, 'Trollbane'),
(36156, 33493, 0, 2, 1, 1, 0, 'Umbral Shiv'),
(36156, 33494, 0, 2, 1, 1, 0, 'Amani Divining Staff'),
(36156, 33495, 0, 2, 1, 1, 0, 'Rage'),
-- 3 Hostages saved
(36157, 33496, 0, 3, 1, 1, 0, 'Signet of Primal Wrath'),
(36157, 33497, 0, 3, 1, 1, 0, 'Mana Attuned Band'),
(36157, 33498, 0, 3, 1, 1, 0, 'Signet of the Quiet Forest'),
(36157, 33499, 0, 3, 1, 1, 0, 'Signet of the Last Defender'),
(36157, 33500, 0, 3, 1, 1, 0, 'Signet of Eternal Life');
-- Bear works as 4 Hostages saved is just the item inside the go loot with condition.
DELETE FROM `gameobject_loot_template` WHERE `mincountOrRef` IN (-29500,-36155,-36156,-36157);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22699, 36155, 100, 0, -36155, 1, 243, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 1'),
(22699, 36156, 100, 0, -36156, 1, 244, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2'),
(22699, 36157, 100, 0, -36157, 1, 245, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2'),
(22790, 36155, 100, 0, -36155, 1, 243, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 1'),
(22790, 36156, 100, 0, -36156, 1, 244, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2'),
(22790, 36157, 100, 0, -36157, 1, 245, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2'),
(22797, 36155, 100, 0, -36155, 1, 243, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 1'),
(22797, 36156, 100, 0, -36156, 1, 244, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2'),
(22797, 36157, 100, 0, -36157, 1, 245, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2'),
(22968, 36155, 100, 0, -36155, 1, 243, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 1'),
(22968, 36156, 100, 0, -36156, 1, 244, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2'),
(22968, 36157, 100, 0, -36157, 1, 245, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021) - ScriptDev: InstanceConditionID Value: 2');

-- 24857	Kael'thas Sunstrider (1)
-- Table 'creature_loot_template' entry 24857 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 24857 AND `mincountOrRef` IN (-40158,-40159);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (40158,40159);

-- 24882	Brutallus
-- Table 'creature_loot_template' entry 24882 group 1 has total chance > 100% (133.000000)
-- Table 'creature_loot_template' entry 24882 group 1 has items with chance=0% but group total chance >= 100% (133.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 24882 AND `mincountOrRef` IN (-12005,-36173);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (12005,36173);

-- 24892	Sathrovarr the Corruptor
-- Table 'creature_loot_template' entry 24892 group 1 has total chance > 100% (133.000000)
-- Table 'creature_loot_template' entry 24892 group 1 has items with chance=0% but group total chance >= 100% (133.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 24892 AND `mincountOrRef` IN (-12005,-36171);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 36171;

-- 25038	Felmyst
-- Table 'creature_loot_template' entry 25038 group 1 has total chance > 100% (133.000000)
-- Table 'creature_loot_template' entry 25038 group 1 has items with chance=0% but group total chance >= 100% (133.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 25038 AND `mincountOrRef` IN (-12005,-36175);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 36175;

-- 25165	Lady Sacrolash
-- Table 'creature_loot_template' entry 25165 group 1 has total chance > 100% (133.000000)
-- Table 'creature_loot_template' entry 25165 group 1 has items with chance=0% but group total chance >= 100% (133.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 25165 AND `mincountOrRef` IN (-12005,-36176);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 36176;

-- 25166	Grand Warlock Alythess
-- Table 'creature_loot_template' entry 25166 group 1 has total chance > 100% (133.000000)
-- Table 'creature_loot_template' entry 25166 group 1 has items with chance=0% but group total chance >= 100% (133.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 25166 AND `mincountOrRef` IN (-12005,-36176);

-- 25315	Kil'jaeden
-- Table 'creature_loot_template' entry 25315 group 1 has total chance > 100% (338.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 25315 AND `item` = 34334; -- Thori'dal, the Stars' Fury
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 25315 AND `mincountOrRef` IN (-12005,-36192,-36193,-36195);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (12005,36192,36193,36195);

-- 25840	Entropius
-- Table 'creature_loot_template' entry 25840 group 1 has total chance > 100% (133.000000)
-- Table 'creature_loot_template' entry 25840 group 1 has items with chance=0% but group total chance >= 100% (133.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 25840 AND `mincountOrRef` IN (-12005,-36188);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 36188;