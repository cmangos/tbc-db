-- --------------------------------------------------------------------------------------
-- Black Temple Boss Loot Revamp

-- reference_loot_template_names additions
DELETE FROM `reference_loot_template_names` WHERE `entry` BETWEEN 36101 AND 36133;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
-- Hyjal Summit
(36101, 'Hyjal Summit (Boss Loot) - Rage Winterchill - Epic Items'),
(36102, 'Hyjal Summit (Boss Loot) - Anetheron - Epic Items'),
(36103, 'Hyjal Summit (Boss Loot) - Kaz\'rogal - Epic Items'),
(36104, 'Hyjal Summit (Boss Loot) - Azgalor - Epic Items'),
(36105, 'Hyjal Summit (Boss Loot) - Archimonde - Epic Items'),
(36106, 'Hyjal Summit (Boss Loot) - Epic Gem Pattern'),
(36107, 'Hyjal Summit (Boss Loot) - Archimonde - T6 Token'),
(36108, 'Hyjal Summit (Boss Loot) - Azgalor - T6 Token'),
-- Black Temple
(36121, 'Black Temple (Boss Loot) - High Warlord Naj\'entus - Epic Items'),
(36122, 'Black Temple (Boss Loot) - Supremus - Epic Items'),
(36123, 'Black Temple (Boss Loot) - Shade of Akama - Epic Items'),
(36124, 'Black Temple (Boss Loot) - Teron Gorefiend - Epic Items'),
(36125, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items'),
(36126, 'Black Temple (Boss Loot) - Essence of Anger - Epic Items'),
(36127, 'Black Temple (Boss Loot) - Mother Shahraz - Epic Items'),
(36128, 'Black Temple (Boss Loot) - Mother Shahraz - T6 Token'),
(36129, 'Black Temple (Boss Loot) - Illidari Council - Epic Items'),
(36130, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'),
(36131, 'Black Temple (Boss Loot) - Illidan Stormrage - Epic Items'),
(36132, 'Black Temple (Boss Loot) - Illidan Stormrage - T6 Token'),
(36133, 'Black Temple (Boss Loot) - Illidan Stormrage - Warglaives of Azzinoth');

DELETE FROM `reference_loot_template` WHERE `entry` IN (34071,34072,34073,34074,34075,34076,34077,36121,36122,36123,36124,36125,36126,36127,36128,36129,36130,36131,36132,36133);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- High Warlord Naj'entus 22887
(36121, 32232, 0, 1, 1, 1, 0, 'Eternium Shell Bracers'),
(36121, 32236, 0, 1, 1, 1, 0, 'Rising Tide'),
(36121, 32237, 0, 1, 1, 1, 0, 'The Maelstrom\'s Fury'),
(36121, 32234, 0, 1, 1, 1, 0, 'Fists of Mukoa'),
(36121, 32238, 0, 1, 1, 1, 0, 'Ring of Calming Waves'),
(36121, 32377, 0, 1, 1, 1, 0, 'Mantle of Darkness'),
(36121, 32243, 0, 1, 1, 1, 0, 'Pearl Inlaid Boots'), -- group unconfirmed
(36121, 32247, 0, 2, 1, 1, 0, 'Ring of Captured Storms'),
(36121, 32239, 0, 2, 1, 1, 0, 'Slippers of the Seacaller'),
(36121, 32241, 0, 2, 1, 1, 0, 'Helm of Soothing Currents'),
(36121, 32242, 0, 2, 1, 1, 0, 'Boots of Oceanic Fury'),
(36121, 32240, 0, 2, 1, 1, 0, 'Guise of the Tidal Lurker'),
(36121, 32248, 0, 2, 1, 1, 0, 'Halberd of Desolation'),
(36121, 32245, 0, 2, 1, 1, 0, 'Tide-stomper\'s Greaves'), -- group unconfirmed
-- Supremus 22898
(36122, 32261, 0, 1, 1, 1, 0, 'Band of the Abyssal Lord'),
(36122, 32259, 0, 1, 1, 1, 0, 'Bands of the Coming Storm'),
(36122, 32256, 0, 1, 1, 1, 0, 'Waistwrap of Infinity'),
(36122, 32262, 0, 1, 1, 1, 0, 'Syphon of the Nathrezim'),
(36122, 32257, 0, 1, 1, 1, 0, 'Idol of the White Stag'),
(36122, 32258, 0, 1, 1, 1, 0, 'Naturalist\'s Preserving Cinch'),
(36122, 32260, 0, 1, 1, 1, 0, 'Choker of Endless Nightmares'), -- group unconfirmed
(36122, 32251, 0, 2, 1, 1, 0, 'Wraps of Precise Flight'),
(36122, 32254, 0, 2, 1, 1, 0, 'The Brutalizer'),
(36122, 32255, 0, 2, 1, 1, 0, 'Felstone Bulwark'),
(36122, 32250, 0, 2, 1, 1, 0, 'Pauldrons of Abyssal Fury'),
(36122, 32252, 0, 2, 1, 1, 0, 'Nether Shadow Tunic'),
(36122, 32253, 0, 2, 1, 1, 0, 'Legionkiller'),
-- Shade of Akama 22841
(36123, 32266, 0, 1, 1, 1, 0, 'Ring of Deceitful Intent'),
(36123, 32264, 0, 1, 1, 1, 0, 'Shoulders of the Hidden Predator'),
(36123, 32513, 0, 1, 1, 1, 0, 'Wristbands of Divine Influence'),
(36123, 32265, 0, 1, 1, 1, 0, 'Shadow-walker\'s Cord'),
(36123, 32268, 0, 1, 1, 1, 0, 'Myrmidon\'s Treads'),
(36123, 32263, 0, 1, 1, 1, 0, 'Praetorian\'s Legguards'),
(36123, 32276, 0, 1, 1, 1, 0, 'Flashfire Girdle'),
(36123, 32278, 0, 2, 1, 1, 0, 'Grips of Silent Justice'),
(36123, 32275, 0, 2, 1, 1, 0, 'Spiritwalker Gauntlets'),
(36123, 32279, 0, 2, 1, 1, 0, 'The Seeker\'s Wristguards'),
(36123, 32271, 0, 2, 1, 1, 0, 'Kilt of Immortal Nature'),
(36123, 32270, 0, 2, 1, 1, 0, 'Focused Mana Bindings'),
(36123, 32273, 0, 2, 1, 1, 0, 'Amice of Brilliant Light'),
(36123, 32361, 0, 2, 1, 1, 0, 'Blind-Seers Icon'),
-- Teron Gorefiend 22871
(36124, 32328, 0, 1, 1, 1, 0, 'Botanist\'s Gloves of Growth'),
(36124, 32348, 0, 1, 1, 1, 0, 'Soul Cleaver'),
(36124, 32326, 0, 1, 1, 1, 0, 'Twisted Blades of Zarak'),
(36124, 32329, 0, 1, 1, 1, 0, 'Cowl of Benevolence'),
(36124, 32512, 0, 1, 1, 1, 0, 'Girdle of Lordaeron\'s Fallen'),
(36124, 32330, 0, 1, 1, 1, 0, 'Totem of Ancestral Guidance'),
(36124, 32510, 0, 2, 1, 1, 0, 'Softstep Boots of Tracking'),
(36124, 32325, 0, 2, 1, 1, 0, 'Rifle of the Stoic Guardian'),
(36124, 32280, 0, 2, 1, 1, 0, 'Gauntlets of Enforcement'),
(36124, 32323, 0, 2, 1, 1, 0, 'Shadowmoon Destroyer\'s Drape'),
(36124, 32324, 0, 2, 1, 1, 0, 'Insidious Bands'),
(36124, 32327, 0, 2, 1, 1, 0, 'Robe of the Shadow Council'),
-- Gurtogg Bloodboil 22948
(36125, 32339, 0, 1, 1, 1, 0, 'Belt of Primal Majesty'),
(36125, 32338, 0, 1, 1, 1, 0, 'Blood-cursed Shoulderpads'),
(36125, 32341, 0, 1, 1, 1, 0, 'Leggings of Divine Retribution'),
(36125, 32342, 0, 1, 1, 1, 0, 'Girdle of Mighty Resolve'),
(36125, 32344, 0, 1, 1, 1, 0, 'Staff of Immaculate Recovery'),
(36125, 32343, 0, 1, 1, 1, 0, 'Wand of Prismatic Focus'),
(36125, 32340, 0, 1, 1, 1, 0, 'Garments of Temperance'),
(36125, 32269, 0, 2, 1, 1, 0, 'Messenger of Fate'),
(36125, 32337, 0, 2, 1, 1, 0, 'Shroud of Forgiveness'),
(36125, 32333, 0, 2, 1, 1, 0, 'Girdle of Stability'),
(36125, 32334, 0, 2, 1, 1, 0, 'Vest of Mounting Assault'),
(36125, 32335, 0, 2, 1, 1, 0, 'Unstoppable Aggressor\'s Ring'),
(36125, 32501, 0, 2, 1, 1, 0, 'Shadowmoon Insignia'),
-- Essence of Anger 23420
(36126, 32332, 0, 1, 1, 1, 0, 'Torch of the Damned'),
(36126, 32517, 0, 1, 1, 1, 0, 'The Wavemender\'s Mantle'),
(36126, 32354, 0, 1, 1, 1, 0, 'Crown of Empowered Fate'),
(36126, 32351, 0, 1, 1, 1, 0, 'Elunite Empowered Bracers'),
(36126, 32353, 0, 1, 1, 1, 0, 'Gloves of Unfailing Faith'),
(36126, 32363, 0, 1, 1, 1, 0, 'Naaru-Blessed Life Rod'),
(36126, 32352, 0, 1, 1, 1, 0, 'Naturewarden\'s Treads'),
(36126, 32345, 0, 2, 1, 1, 0, 'Dreadboots of the Legion'),
(36126, 32347, 0, 2, 1, 1, 0, 'Grips of Damnation'),
(36126, 32362, 0, 2, 1, 1, 0, 'Pendant of Titans'),
(36126, 32349, 0, 2, 1, 1, 0, 'Translucent Spellthread Necklace'),
(36126, 32350, 0, 2, 1, 1, 0, 'Touch of Inspiration'),
(36126, 32346, 0, 2, 1, 1, 0, 'Boneweave Girdle'),
-- Mother Shahraz 22947
(36127, 32365, 0, 1, 1, 1, 0, 'Heartshatter Breastplate'),
(36127, 32366, 0, 1, 1, 1, 0, 'Shadowmaster\'s Boots'),
(36127, 32367, 0, 1, 1, 1, 0, 'Leggings of Devastation'),
(36127, 32368, 0, 1, 1, 1, 0, 'Tome of the Lightbringer'),
(36127, 32369, 0, 1, 1, 1, 0, 'Blade of Savagery'),
(36127, 32370, 0, 1, 1, 1, 0, 'Nadina\'s Pendant of Purity'),
(36128, 31101, 0, 1, 1, 1, 0, 'Pauldrons of the Forgotten Conqueror'),
(36128, 31102, 0, 1, 1, 1, 0, 'Pauldrons of the Forgotten Vanquisher'),
(36128, 31103, 0, 1, 1, 1, 0, 'Pauldrons of the Forgotten Protector'),
-- Illidari Council
-- High Nethermancer Zerevor 22950
(36129, 32331, 0, 1, 1, 1, 0, 'Cloak of the Illidari Council'),
(36129, 32373, 0, 1, 1, 1, 0, 'Helm of the Illidari Shatterer'),
(36129, 32376, 0, 1, 1, 1, 0, 'Forest Prowler\'s Helm'),
(36129, 32505, 0, 1, 1, 1, 0, 'Madness of the Betrayer'),
(36129, 32518, 0, 1, 1, 1, 0, 'Veil of Turning Leaves'),
(36129, 32519, 0, 1, 1, 1, 0, 'Belt of Divine Guidance'),
-- Gathios the Shatterer 22949
-- High Nethermancer Zerevor 22950
-- Veras Darkshadow 22952
(36130, 31098, 0, 1, 1, 1, 0, 'Leggings of the Forgotten Conqueror'),
(36130, 31099, 0, 1, 1, 1, 0, 'Leggings of the Forgotten Vanquisher'),
(36130, 31100, 0, 1, 1, 1, 0, 'Leggings of the Forgotten Protector'),
-- Illidan Stormrage 22917
(36131, 32497, 0, 1, 1, 1, 0, 'Stormrage Signet Ring'),
(36131, 32521, 0, 1, 1, 1, 0, 'Faceplate of the Impenetrable'),
(36131, 32375, 0, 1, 1, 1, 0, 'Bulwark of Azzinoth'),
(36131, 32235, 0, 1, 1, 1, 0, 'Cursed Vision of Sargeras'),
(36131, 32336, 0, 1, 1, 1, 0, 'Black Bow of the Betrayer'),
(36131, 32471, 0, 1, 1, 1, 0, 'Shard of Azzinoth'),
(36131, 32525, 0, 2, 1, 1, 0, 'Cowl of the Illidari High Lord'),
(36131, 32483, 0, 2, 1, 1, 0, 'The Skull of Gul\'dan'),
(36131, 32500, 0, 2, 1, 1, 0, 'Crystal Spire of Karabor'),
(36131, 32374, 0, 2, 1, 1, 0, 'Zhar\'doom, Greatstaff of the Devourer'),
(36131, 32524, 0, 2, 1, 1, 0, 'Shroud of the Highborne'),
(36131, 32496, 0, 2, 1, 1, 0, 'Memento of Tyrande'),
(36132, 31089, 0, 1, 1, 1, 0, 'Chestguard of the Forgotten Conqueror'),
(36132, 31090, 0, 1, 1, 1, 0, 'Chestguard of the Forgotten Vanquisher'),
(36132, 31091, 0, 1, 1, 1, 0, 'Chestguard of the Forgotten Protector'),
(36133, 32837, 0, 1, 1, 1, 0, 'Warglaive of Azzinoth'),
(36133, 32838, 0, 1, 1, 1, 0, 'Warglaive of Azzinoth');

DELETE FROM `creature_loot_template` WHERE `entry` IN (22887,22898,22841,22871,22948,23420,22947,22949,22950,22951,22952,22917);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- High Warlord Naj'entus 22887
(22887, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22887, 36121, 100, 1, -36121, 1, 0, 'Black Temple (Boss Loot) - High Warlord Naj\'entus - Epic Items'),
(22887, 2, 100, 2, -36121, 1, 0, 'Black Temple (Boss Loot) - High Warlord Naj\'entus - Epic Items'),
-- Supremus 22898
(22898, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22898, 36122, 100, 1, -36122, 1, 0, 'Black Temple (Boss Loot) - Supremus - Epic Items'),
(22898, 2, 100, 2, -36122, 1, 0, 'Black Temple (Boss Loot) - Supremus - Epic Items'),
-- Shade of Akama 22841
(22841, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22841, 36123, 100, 1, -36123, 1, 0, 'Black Temple (Boss Loot) - Shade of Akama - Epic Items'),
(22841, 2, 100, 2, -36123, 1, 0, 'Black Temple (Boss Loot) - Shade of Akama - Epic Items'),
-- Teron Gorefiend 22871
(22871, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22871, 36124, 100, 1, -36124, 1, 0, 'Black Temple (Boss Loot) - Teron Gorefiend - Epic Items'),
(22871, 2, 100, 2, -36124, 1, 0, 'Black Temple (Boss Loot) - Teron Gorefiend - Epic Items'),
-- Gurtogg Bloodboil 22948
(22948, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22948, 36125, 100, 1, -36125, 1, 0, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items'),
(22948, 2, 100, 2, -36125, 1, 0, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items'),
-- Essence of Anger 23420
(23420, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(23420, 36126, 100, 1, -36126, 1, 0, 'Black Temple (Boss Loot) - Essence of Anger - Epic Items'),
(23420, 2, 100, 2, -36126, 1, 0, 'Black Temple (Boss Loot) - Essence of Anger - Epic Items'),
-- Mother Shahraz 22947
(22947, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22947, 36127, 100, 1, -36127, 1, 0, 'Black Temple (Boss Loot) - Mother Shahraz - Epic Items'),
(22947, 36128, 100, 1, -36128, 3, 0, 'Black Temple (Boss Loot) - Mother Shahraz - T6 Token'),
-- Illidari Council
-- Gathios the Shatterer 22949
(22949, 36130, 100, 1, -36130, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'),
-- High Nethermancer Zerevor 22950
(22950, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22950, 36129, 100, 1, -36129, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - Epic Items'),
(22950, 36130, 100, 1, -36130, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'),
-- Lady Malande 22951
(22951, 34093, 100, 1, -34093, 1, 0, 'Epic Gem - TBC'),
-- Veras Darkshadow 22952
(22952, 36130, 100, 1, -36130, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'),
-- Illidan Stormrage 22917
(22917, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22917, 36131, 100, 1, -36131, 1, 0, 'Black Temple (Boss Loot) - Illidan Stormrage - Epic Items'),
(22917, 2, 100, 2, -36131, 1, 0, 'Black Temple (Boss Loot) - Illidan Stormrage - Epic Items'),
(22917, 36132, 100, 1, -36132, 3, 0, 'Black Temple (Boss Loot) - Illidan Stormrage - T6 Token'),
(22917, 36133, 8, 1, -36133, 1, 0, 'Black Temple (Boss Loot) - Illidan Stormrage - Warglaives of Azzinoth');

-- ---------------------------------------------------------------------------------------------------------

-- Veras Vanish Effect 23451
UPDATE `creature_template` SET `UnitFlags` = 33554496 WHERE `entry` = 23451;

