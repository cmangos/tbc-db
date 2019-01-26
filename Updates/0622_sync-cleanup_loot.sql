-- Sync classic-relevant RefLoots with classic-db
-- refloots can now be named and easily ported
-- removed shaman/paladin conditions and bad conditions from e.g i.21464
DELETE FROM `creature_loot_template` WHERE `entry` IN (11583,11981,11982,11983,11988,12056,12057,12098,12259,12118,12264,14020,14601,14834,15263,15339,15510,15516,15727);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(11583, 19002, 100, 0, 1, 1, 3, 'Head of Nefarian'),
(11583, 19003, 100, 0, 1, 1, 4, 'Head of Nefarian'),
(11583, 21138, 100, 0, 1, 1, 1397, 'Red Scepter Shard'),
(11583, 21142, 100, 0, 1, 1, 1396, 'From the Desk of Lord Victor Nefarius'),
(11583, 34002, 100, 1, -34002, 2, 0, ''),
(11583, 34003, 100, 1, -34003, 1, 0, ''),
(11583, 34009, 100, 1, -34009, 2, 0, ''),
(11583, 34071, 100, 1, -34071, 1, 0, ''),
(11583, 34072, 100, 1, -34072, 1, 0, ''),
(11583, 90003, 100, 0, -34003, 1, 0, ''),

(11981, 34037, 100, 1, -34037, 1, 0, ''),
(11981, 34075, 100, 1, -34075, 1, 0, ''),

(11982, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'),
(11982, 34011, 14, 1, -34011, 1, 0, ''),
(11982, 34050, 100, 1, -34050, 1, 0, ''),
(11982, 34051, 100, 1, -34051, 1, 0, ''),
(11982, 34052, 100, 1, -34052, 1, 0, ''),

(11983, 34037, 100, 1, -34037, 1, 0, ''),
(11983, 34077, 100, 1, -34077, 1, 0, ''),

(11988, 7075, 30, 0, 1, 3, 0, 'Core of Earth'),
(11988, 7076, 40, 0, 1, 2, 0, 'Essence of Earth'),
(11988, 7077, 30, 0, 1, 3, 0, 'Heart of Fire'),
(11988, 7078, 40, 0, 1, 2, 0, 'Essence of Fire'),
(11988, 17011, 14, 0, 1, 1, 0, 'Lava Core'),
(11988, 17203, 37, 0, 1, 1, 0, 'Sulfuron Ingot'),
(11988, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'),
(11988, 34011, 14, 1, -34011, 1, 0, ''),
(11988, 34058, 100, 1, -34058, 1, 0, ''),
(11988, 34059, 100, 1, -34059, 1, 0, ''),
(11988, 34060, 100, 1, -34060, 1, 0, ''),

(12056, 4787, 40, 0, 1, 5, 0, 'Burning Pitch'),
(12056, 7068, 30, 0, 1, 6, 0, 'Elemental Fire'),
(12056, 7077, 30, 0, 1, 3, 0, 'Heart of Fire'),
(12056, 7078, 50, 0, 1, 2, 0, 'Essence of Fire'),
(12056, 17010, 14, 0, 1, 1, 0, 'Fiery Core'),
(12056, 18563, 3, 0, 1, 1, 0, 'Bindings of the Windseeker'),
(12056, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'),
(12056, 34011, 14, 1, -34011, 1, 0, ''),
(12056, 34056, 100, 1, -34056, 1, 0, ''),
(12056, 34057, 100, 1, -34057, 1, 0, ''),

(12057, 7075, 30, 0, 1, 3, 0, 'Core of Earth'),
(12057, 7076, 40, 0, 1, 2, 0, 'Essence of Earth'),
(12057, 8150, 30, 0, 1, 12, 0, 'Deeprock Salt'),
(12057, 17011, 14, 0, 1, 1, 0, 'Lava Core'),
(12057, 18564, 3, 0, 1, 1, 0, 'Bindings of the Windseeker'),
(12057, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'),
(12057, 34011, 14, 1, -34011, 1, 0, ''),
(12057, 34053, 100, 1, -34053, 1, 0, ''),
(12057, 34054, 100, 1, -34054, 1, 0, ''),
(12057, 34055, 100, 1, -34055, 1, 0, ''),

(12098, 34067, 100, 1, -34067, 1, 0, ''),
(12098, 34068, 100, 1, -34068, 1, 0, ''),

(12259, 7068, 30, 0, 1, 6, 0, 'Elemental Fire'),
(12259, 7077, 30, 0, 1, 3, 0, 'Heart of Fire'),
(12259, 7078, 40, 0, 1, 2, 0, 'Essence of Fire'),
(12259, 17331, -100, 0, 1, 1, 0, 'Hand of Gehennas'),
(12259, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'),
(12259, 34011, 14, 1, -34011, 1, 0, ''),
(12259, 34063, 100, 1, -34063, 1, 0, ''),
(12259, 34064, 100, 1, -34064, 1, 0, ''),

(12118, 7068, 30, 0, 1, 6, 0, 'Elemental Fire'),
(12118, 7077, 30, 0, 1, 3, 0, 'Heart of Fire'),
(12118, 7078, 40, 0, 1, 2, 0, 'Essence of Fire'),
(12118, 16665, 100, 0, 1, 1, 0, 'Tome of Tranquilizing Shot'),
(12118, 17329, -100, 0, 1, 1, 0, 'Hand of Lucifron'),
(12118, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'),
(12118, 34011, 14, 1, -34011, 1, 0, ''),
(12118, 34061, 100, 1, -34061, 1, 0, ''),
(12118, 34062, 100, 1, -34062, 1, 0, ''),

(12264, 7068, 30, 0, 1, 6, 0, 'Elemental Fire'),
(12264, 7077, 30, 0, 1, 3, 0, 'Heart of Fire'),
(12264, 7078, 40, 0, 1, 2, 0, 'Essence of Fire'),
(12264, 17332, -100, 0, 1, 1, 0, 'Hand of Shazzrah'),
(12264, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'),
(12264, 34011, 14, 1, -34011, 1, 0, ''),
(12264, 34065, 100, 1, -34065, 1, 0, ''),
(12264, 34066, 100, 1, -34066, 1, 0, ''),

(14020, 34038, 100, 0, -34038, 2, 0, ''),
(14020, 34073, 100, 1, -34073, 1, 0, ''),
(14020, 34074, 100, 1, -34074, 1, 0, ''),

(14601, 34037, 100, 1, -34037, 1, 0, ''),
(14601, 34076, 100, 1, -34076, 1, 0, ''),

(14834, 12804, 25, 0, 1, 8, 0, 'Powerful Mojo'),
(14834, 19802, 100, 0, 1, 1, 0, 'Heart of Hakkar'),
(14834, 19943, 100, 0, 1, 1, 0, 'Massive Mojo'),
(14834, 34078, 100, 1, -34078, 1, 0, ''),
(14834, 34079, 100, 1, -34079, 1, 0, ''),

(15263, 21229, 100, 0, 1, 1, 0, 'Qiraji Lord\'s Insignia'),
(15263, 22222, 15, 0, 1, 1, 0, 'Plans: Thick Obsidian Breastplate'),
(15263, 34045, 2, 1, -34045, 1, 0, ''),
(15263, 34080, 100, 1, -34080, 1, 0, ''),
(15263, 34081, 100, 1, -34081, 1, 0, ''),
(15263, 190045, 5, 2, -34045, 1, 0, ''),

(15339, 20884, 0, 1, 1, 1, 0, 'Qiraji Magisterial Ring'),
(15339, 20886, 0, 2, 1, 1, 0, 'Qiraji Spiked Hilt'),
(15339, 20888, 0, 1, 1, 1, 0, 'Qiraji Ceremonial Ring'),
(15339, 20890, 0, 2, 1, 1, 0, 'Qiraji Ornate Hilt'),
(15339, 21220, 100, 0, 1, 1, 0, 'Head of Ossirian the Unscarred'),
(15339, 34024, 100, 2, -34024, 2, 0, ''),
(15339, 34103, 100, 1, -34103, 1, 0, ''),
(15339, 34104, 100, 1, -34104, 1, 0, ''),
(15339, 190024, 1, 1, -34024, 1, 0, ''),

(15510, 21229, 100, 0, 1, 1, 0, 'Qiraji Lord\'s Insignia'),
(15510, 34045, 2, 1, -34045, 1, 0, ''),
(15510, 34084, 100, 1, -34084, 1, 0, ''),
(15510, 34085, 100, 1, -34085, 1, 0, ''),
(15510, 190045, 5, 2, -34045, 1, 0, ''),

(15516, 21229, 100, 0, 1, 1, 0, 'Qiraji Lord\'s Insignia'),
(15516, 34045, 2, 1, -34045, 1, 0, ''),
(15516, 34082, 100, 1, -34082, 1, 0, ''),
(15516, 34083, 100, 1, -34083, 1, 0, ''),
(15516, 190045, 5, 2, -34045, 1, 0, ''),

(15727, 20929, 100, 0, 1, 1, 0, 'Carapace of the Old God'),
(15727, 20933, 100, 0, 1, 1, 0, 'Husk of the Old God'),
(15727, 21221, 100, 0, 1, 1, 0, 'Eye of C\'Thun'),
(15727, 21579, 20, 2, 1, 1, 0, 'Vanquished Tentacle of C\'Thun'),
(15727, 22734, -100, 0, 1, 1, 0, 'Base of Atiesh'),
(15727, 34101, 100, 1, -34101, 1, 0, ''),
(15727, 34102, 100, 1, -34102, 1, 0, '');

-- Add RefLoots
DELETE FROM `reference_loot_template` WHERE `entry` IN (34090,34078,34079,34046,34047,34048,34049,34105,34104,34103,34102,34101,34025,34112,34113,34114,34115,34116,34020,34014,34015,34019,34021,34026,34029,34058,34059,34060,34027,34028,34023,34022,34050,34051,34052,34053,34054,34055,34056,34057,34017,34016,34013,34061,34062,34063,34064,34065,34066,34067,34068,34012,34050,34010,34107,34071,34072,34110,34075,34035,34077,34080,34081,34082,34083,34084,34085,34108,34109,34073,34074,34036,34076);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(34050, 17073, 20, 1, 1, 1, 0, 'Earthshaker'),
(34050, 18203, 20, 1, 1, 1, 0, 'Eskhandar\'s Right Claw'),
(34050, 18820, 0, 1, 1, 1, 0, 'Talisman of Ephemeral Power'),
(34050, 18821, 0, 1, 1, 1, 0, 'Quick Strike Ring'),
(34050, 18822, 0, 1, 1, 1, 0, 'Obsidian Edged Blade'),
(34050, 18823, 0, 1, 1, 1, 0, 'Aged Core Leather Gloves'),
(34050, 18824, 0, 1, 1, 1, 0, 'Magma Tempered Boots'),
(34050, 18829, 0, 1, 1, 1, 0, 'Deep Earth Spaulders'),
(34050, 18861, 0, 1, 1, 1, 0, 'Flamewaker Legplates'),
(34050, 19136, 0, 1, 1, 1, 0, 'Mana Igniting Cord'),
(34050, 19142, 0, 1, 1, 1, 0, 'Fire Runed Grimoire'),
(34050, 19143, 0, 1, 1, 1, 0, 'Flameguard Gauntlets'),
(34050, 19144, 0, 1, 1, 1, 0, 'Sabatons of the Flamewalker'),

(34051, 16835, 0, 1, 1, 1, 0, 'Cenarion Leggings'),
(34051, 16843, 0, 1, 1, 1, 0, 'Earthfury Legguards'),
(34051, 16847, 0, 1, 1, 1, 0, 'Giantstalker\'s Leggings'),
(34051, 16855, 0, 1, 1, 1, 0, 'Lawbringer Legplates'),
(34051, 16867, 0, 1, 1, 1, 0, 'Legplates of Might'),
(34051, 17065, 0, 1, 1, 1, 0, 'Medallion of Steadfast Might'),

(34052, 16796, 0, 1, 1, 1, 0, 'Arcanist Leggings'),
(34052, 16810, 0, 1, 1, 1, 0, 'Felheart Pants'),
(34052, 16814, 0, 1, 1, 1, 0, 'Pants of Prophecy'),
(34052, 16822, 0, 1, 1, 1, 0, 'Nightslayer Pants'),
(34052, 17069, 0, 1, 1, 1, 0, 'Striker\'s Mark'),

(34053, 16834, 0, 1, 1, 1, 0, 'Cenarion Helm'),
(34053, 16842, 0, 1, 1, 1, 0, 'Earthfury Helmet'),
(34053, 16846, 0, 1, 1, 1, 0, 'Giantstalker\'s Helmet'),
(34053, 16854, 0, 1, 1, 1, 0, 'Lawbringer Helm'),
(34053, 16866, 0, 1, 1, 1, 0, 'Helm of Might'),
(34053, 17066, 0, 1, 1, 1, 0, 'Drillborer Disk'),
(34054, 16795, 0, 1, 1, 1, 0, 'Arcanist Crown'),
(34054, 16808, 0, 1, 1, 1, 0, 'Felheart Horns'),
(34054, 16813, 0, 1, 1, 1, 0, 'Circlet of Prophecy'),
(34054, 16821, 0, 1, 1, 1, 0, 'Nightslayer Cover'),
(34054, 17071, 0, 1, 1, 1, 0, 'Gutgore Ripper'),
(34055, 17105, 20, 1, 1, 1, 0, 'Aurastone Hammer'),
(34055, 18820, 0, 1, 1, 1, 0, 'Talisman of Ephemeral Power'),
(34055, 18821, 0, 1, 1, 1, 0, 'Quick Strike Ring'),
(34055, 18822, 0, 1, 1, 1, 0, 'Obsidian Edged Blade'),
(34055, 18823, 0, 1, 1, 1, 0, 'Aged Core Leather Gloves'),
(34055, 18824, 0, 1, 1, 1, 0, 'Magma Tempered Boots'),
(34055, 18829, 0, 1, 1, 1, 0, 'Deep Earth Spaulders'),
(34055, 18832, 20, 1, 1, 1, 0, 'Brutality Blade'),
(34055, 18861, 0, 1, 1, 1, 0, 'Flamewaker Legplates'),
(34055, 19136, 0, 1, 1, 1, 0, 'Mana Igniting Cord'),
(34055, 19142, 0, 1, 1, 1, 0, 'Fire Runed Grimoire'),
(34055, 19143, 0, 1, 1, 1, 0, 'Flameguard Gauntlets'),
(34055, 19144, 0, 1, 1, 1, 0, 'Sabatons of the Flamewalker'),
(34056, 16797, 0, 1, 1, 1, 0, 'Arcanist Mantle'),
(34056, 16807, 0, 1, 1, 1, 0, 'Felheart Shoulder Pads'),
(34056, 17110, 0, 1, 1, 1, 0, 'Seal of the Archmagus'),
(34057, 16836, 30, 1, 1, 1, 0, 'Cenarion Spaulders'),
(34057, 16844, 30, 1, 1, 1, 0, 'Earthfury Epaulets'),
(34057, 16856, 30, 1, 1, 1, 0, 'Lawbringer Spaulders'),
(34057, 18820, 0, 1, 1, 1, 0, 'Talisman of Ephemeral Power'),
(34057, 18821, 0, 1, 1, 1, 0, 'Quick Strike Ring'),
(34057, 18822, 0, 1, 1, 1, 0, 'Obsidian Edged Blade'),
(34057, 18823, 0, 1, 1, 1, 0, 'Aged Core Leather Gloves'),
(34057, 18824, 0, 1, 1, 1, 0, 'Magma Tempered Boots'),
(34057, 18829, 0, 1, 1, 1, 0, 'Deep Earth Spaulders'),
(34057, 18861, 0, 1, 1, 1, 0, 'Flamewaker Legplates'),
(34057, 19136, 0, 1, 1, 1, 0, 'Mana Igniting Cord'),
(34057, 19142, 0, 1, 1, 1, 0, 'Fire Runed Grimoire'),
(34057, 19143, 0, 1, 1, 1, 0, 'Flameguard Gauntlets'),
(34057, 19144, 0, 1, 1, 1, 0, 'Sabatons of the Flamewalker'),

(34058, 16833, 0, 1, 1, 1, 0, 'Cenarion Vestments'),
(34058, 16841, 0, 1, 1, 1, 0, 'Earthfury Vestments'),
(34058, 16845, 0, 1, 1, 1, 0, 'Giantstalker\'s Breastplate'),
(34058, 16853, 0, 1, 1, 1, 0, 'Lawbringer Chestguard'),
(34058, 16865, 0, 1, 1, 1, 0, 'Breastplate of Might'),

(34059, 16798, 0, 1, 1, 1, 0, 'Arcanist Robes'),
(34059, 16809, 0, 1, 1, 1, 0, 'Felheart Robes'),
(34059, 16815, 0, 1, 1, 1, 0, 'Robes of Prophecy'),
(34059, 16820, 0, 1, 1, 1, 0, 'Nightslayer Chestpiece'),

(34060, 17072, 25, 1, 1, 1, 0, 'Blastershot Launcher'),
(34060, 17103, 25, 1, 1, 1, 0, 'Azuresong Mageblade'),
(34060, 18820, 0, 1, 1, 1, 0, 'Talisman of Ephemeral Power'),
(34060, 18821, 0, 1, 1, 1, 0, 'Quick Strike Ring'),
(34060, 18822, 0, 1, 1, 1, 0, 'Obsidian Edged Blade'),
(34060, 18823, 0, 1, 1, 1, 0, 'Aged Core Leather Gloves'),
(34060, 18824, 0, 1, 1, 1, 0, 'Magma Tempered Boots'),
(34060, 18829, 0, 1, 1, 1, 0, 'Deep Earth Spaulders'),
(34060, 18842, 25, 1, 1, 1, 0, 'Staff of Dominance'),
(34060, 18861, 0, 1, 1, 1, 0, 'Flamewaker Legplates'),
(34060, 19136, 0, 1, 1, 1, 0, 'Mana Igniting Cord'),
(34060, 19142, 0, 1, 1, 1, 0, 'Fire Runed Grimoire'),
(34060, 19143, 0, 1, 1, 1, 0, 'Flameguard Gauntlets'),
(34060, 19144, 0, 1, 1, 1, 0, 'Sabatons of the Flamewalker'),

(34061, 16800, 0, 1, 1, 1, 0, 'Arcanist Boots'),
(34061, 16829, 0, 1, 1, 1, 0, 'Cenarion Boots'),
(34061, 16837, 0, 1, 1, 1, 0, 'Earthfury Boots'),
(34061, 16859, 0, 1, 1, 1, 0, 'Lawbringer Boots'),
(34061, 17109, 0, 1, 1, 1, 0, 'Choker of Enlightenment'),

(34062, 16805, 33, 1, 1, 1, 0, 'Felheart Gloves'),
(34062, 16863, 33, 1, 1, 1, 0, 'Gauntlets of Might'),
(34062, 17077, 0, 1, 1, 1, 0, 'Crimson Shocker'),
(34062, 18861, 0, 1, 1, 1, 0, 'Flamewaker Legplates'),
(34062, 18870, 0, 1, 1, 1, 0, 'Helm of the Lifegiver'),
(34062, 18872, 0, 1, 1, 1, 0, 'Manastorm Leggings'),
(34062, 18875, 0, 1, 1, 1, 0, 'Salamander Scale Pants'),
(34062, 18878, 0, 1, 1, 1, 0, 'Sorcerous Dagger'),
(34062, 18879, 0, 1, 1, 1, 0, 'Heavy Dark Iron Ring'),
(34062, 19145, 0, 1, 1, 1, 0, 'Robe of Volatile Power'),
(34062, 19146, 0, 1, 1, 1, 0, 'Wristguards of Stability'),
(34062, 19147, 0, 1, 1, 1, 0, 'Ring of Spell Power'),

(34063, 16812, 0, 1, 1, 1, 0, 'Gloves of Prophecy'),
(34063, 16826, 0, 1, 1, 1, 0, 'Nightslayer Gloves'),
(34063, 16839, 0, 1, 1, 1, 0, 'Earthfury Gauntlets'),
(34063, 16860, 0, 1, 1, 1, 0, 'Lawbringer Gauntlets'),
(34064, 16849, 25, 1, 1, 1, 0, 'Giantstalker\'s Boots'),
(34064, 16862, 25, 1, 1, 1, 0, 'Sabatons of Might'),
(34064, 17077, 0, 1, 1, 1, 0, 'Crimson Shocker'),
(34064, 18861, 0, 1, 1, 1, 0, 'Flamewaker Legplates'),
(34064, 18870, 0, 1, 1, 1, 0, 'Helm of the Lifegiver'),
(34064, 18872, 0, 1, 1, 1, 0, 'Manastorm Leggings'),
(34064, 18875, 0, 1, 1, 1, 0, 'Salamander Scale Pants'),
(34064, 18878, 0, 1, 1, 1, 0, 'Sorcerous Dagger'),
(34064, 18879, 0, 1, 1, 1, 0, 'Heavy Dark Iron Ring'),
(34064, 19145, 0, 1, 1, 1, 0, 'Robe of Volatile Power'),
(34064, 19146, 0, 1, 1, 1, 0, 'Wristguards of Stability'),
(34064, 19147, 0, 1, 1, 1, 0, 'Ring of Spell Power'),

(34065, 16801, 0, 1, 1, 1, 0, 'Arcanist Gloves'),
(34065, 16831, 0, 1, 1, 1, 0, 'Cenarion Gloves'),
(34065, 16852, 0, 1, 1, 1, 0, 'Giantstalker\'s Gloves'),

(34066, 16803, 25, 1, 1, 1, 0, 'Felheart Slippers'),
(34066, 16811, 25, 1, 1, 1, 0, 'Boots of Prophecy'),
(34066, 16824, 25, 1, 1, 1, 0, 'Nightslayer Boots'),
(34066, 17077, 0, 1, 1, 1, 0, 'Crimson Shocker'),
(34066, 18861, 0, 1, 1, 1, 0, 'Flamewaker Legplates'),
(34066, 18870, 0, 1, 1, 1, 0, 'Helm of the Lifegiver'),
(34066, 18872, 0, 1, 1, 1, 0, 'Manastorm Leggings'),
(34066, 18875, 0, 1, 1, 1, 0, 'Salamander Scale Pants'),
(34066, 18878, 0, 1, 1, 1, 0, 'Sorcerous Dagger'),
(34066, 18879, 0, 1, 1, 1, 0, 'Heavy Dark Iron Ring'),
(34066, 19145, 0, 1, 1, 1, 0, 'Robe of Volatile Power'),
(34066, 19146, 0, 1, 1, 1, 0, 'Wristguards of Stability'),
(34066, 19147, 0, 1, 1, 1, 0, 'Ring of Spell Power'),

(34067, 16816, 0, 1, 1, 1, 0, 'Mantle of Prophecy'),
(34067, 16848, 0, 1, 1, 1, 0, 'Giantstalker\'s Epaulets'),
(34067, 17074, 0, 1, 1, 1, 0, 'Shadowstrike'),

(34068, 16823, 33, 1, 1, 1, 0, 'Nightslayer Shoulder Pads'),
(34068, 16868, 33, 1, 1, 1, 0, 'Pauldrons of Might'),
(34068, 17077, 0, 1, 1, 1, 0, 'Crimson Shocker'),
(34068, 18861, 0, 1, 1, 1, 0, 'Flamewaker Legplates'),
(34068, 18870, 0, 1, 1, 1, 0, 'Helm of the Lifegiver'),
(34068, 18872, 0, 1, 1, 1, 0, 'Manastorm Leggings'),
(34068, 18875, 0, 1, 1, 1, 0, 'Salamander Scale Pants'),
(34068, 18878, 0, 1, 1, 1, 0, 'Sorcerous Dagger'),
(34068, 18879, 0, 1, 1, 1, 0, 'Heavy Dark Iron Ring'),
(34068, 19145, 0, 1, 1, 1, 0, 'Robe of Volatile Power'),
(34068, 19146, 0, 1, 1, 1, 0, 'Wristguards of Stability'),
(34068, 19147, 0, 1, 1, 1, 0, 'Ring of Spell Power'),

(34071, 19356, 10, 1, 1, 1, 0, 'Staff of the Shadow Flame'),
(34071, 19364, 10, 1, 1, 1, 0, 'Ashkandi, Greatsword of the Brotherhood'),
(34071, 19379, 0, 1, 1, 1, 0, 'Neltharion\'s Tear'),
(34071, 19380, 0, 1, 1, 1, 0, 'Therazane\'s Link'),
(34071, 19381, 0, 1, 1, 1, 0, 'Boots of the Shadow Flame'),
(34071, 19382, 0, 1, 1, 1, 0, 'Pure Elementium Band'),

(34072, 19360, 10, 1, 1, 1, 0, 'Lok\'amir il Romathis'),
(34072, 19363, 10, 1, 1, 1, 0, 'Crul\'shorukh, Edge of Chaos'),
(34072, 19375, 0, 1, 1, 1, 0, 'Mish\'undare, Circlet of the Mind Flayer'),
(34072, 19376, 0, 1, 1, 1, 0, 'Archimtiros\' Ring of Reckoning'),
(34072, 19377, 0, 1, 1, 1, 0, 'Prestor\'s Talisman of Connivery'),
(34072, 19378, 0, 1, 1, 1, 0, 'Cloak of the Brood Lord'),

(34073, 19349, 10, 1, 1, 1, 0, 'Elementium Reinforced Bulwark'),
(34073, 19352, 10, 1, 1, 1, 0, 'Chromatically Tempered Sword'),
(34073, 19385, 0, 1, 1, 1, 0, 'Empowered Leggings'),
(34073, 19387, 0, 1, 1, 1, 0, 'Chromatic Boots'),
(34073, 19388, 0, 1, 1, 1, 0, 'Angelista\'s Grasp'),
(34073, 19389, 0, 1, 1, 1, 0, 'Taut Dragonhide Shoulderpads'),
(34074, 19347, 10, 1, 1, 1, 0, 'Claw of Chromaggus'),
(34074, 19361, 10, 1, 1, 1, 0, 'Ashjre\'thul, Crossbow of Smiting'),
(34074, 19386, 0, 1, 1, 1, 0, 'Elementium Threaded Cloak'),
(34074, 19390, 0, 1, 1, 1, 0, 'Taut Dragonhide Gloves'),
(34074, 19391, 0, 1, 1, 1, 0, 'Shimmering Geta'),
(34074, 19392, 0, 1, 1, 1, 0, 'Girdle of the Fallen Crusader'),
(34074, 19393, 0, 1, 1, 1, 0, 'Primalist\'s Linked Waistguard'),

(34075, 19357, 10, 1, 1, 1, 0, 'Herald of Woe'),
(34075, 19367, 10, 1, 1, 1, 0, 'Dragon\'s Touch'),
(34075, 19430, 0, 1, 1, 1, 0, 'Shroud of Pure Thought'),
(34075, 19431, 0, 1, 1, 1, 0, 'Styleen\'s Impeding Scarab'),
(34075, 19432, 0, 1, 1, 1, 0, 'Circle of Applied Force'),
(34075, 19433, 0, 1, 1, 1, 0, 'Emberweave Leggings'),

(34076, 19345, 0, 1, 1, 1, 0, 'Aegis of Preservation'),
(34076, 19368, 10, 1, 1, 1, 0, 'Dragonbreath Hand Cannon'),
(34076, 19403, 0, 1, 1, 1, 0, 'Band of Forced Concentration'),
(34076, 19405, 0, 1, 1, 1, 0, 'Malfurion\'s Blessed Bulwark'),
(34076, 19406, 0, 1, 1, 1, 0, 'Drake Fang Talisman'),
(34076, 19407, 0, 1, 1, 1, 0, 'Ebony Flame Gloves'),

(34077, 19343, 0, 1, 1, 1, 0, 'Scrolls of Blinding Light'),
(34077, 19344, 0, 1, 1, 1, 0, 'Natural Alignment Crystal'),
(34077, 19365, 0, 1, 1, 1, 0, 'Claw of the Black Drake'),
(34077, 19398, 0, 1, 1, 1, 0, 'Cloak of Firemaw'),
(34077, 19399, 0, 1, 1, 1, 0, 'Black Ash Robe'),
(34077, 19400, 0, 1, 1, 1, 0, 'Firemaw\'s Clutch'),
(34077, 19401, 0, 1, 1, 1, 0, 'Primalist\'s Linked Legguards'),
(34077, 19402, 0, 1, 1, 1, 0, 'Legguards of the Fallen Crusader'),

(34078, 19854, 0, 1, 1, 1, 0, 'Zin\'rokh, Destroyer of Worlds'),
(34078, 19855, 0, 1, 1, 1, 0, 'Bloodsoaked Legplates'),
(34078, 19859, 0, 1, 1, 1, 0, 'Fang of the Faceless'),
(34078, 19861, 0, 1, 1, 1, 0, 'Touch of Chaos'),
(34078, 19862, 0, 1, 1, 1, 0, 'Aegis of the Blood God'),
(34078, 19865, 0, 1, 1, 1, 0, 'Warblade of the Hakkari'),
(34078, 19876, 0, 1, 1, 1, 0, 'Soul Corrupter\'s Necklace'),

(34079, 19852, 0, 1, 1, 1, 0, 'Ancient Hakkari Manslayer'),
(34079, 19853, 0, 1, 1, 1, 0, 'Gurubashi Dwarf Destroyer'),
(34079, 19856, 0, 1, 1, 1, 0, 'The Eye of Hakkar'),
(34079, 19857, 0, 1, 1, 1, 0, 'Cloak of Consumption'),
(34079, 19864, 0, 1, 1, 1, 0, 'Bloodcaller'),
(34079, 20257, 0, 1, 1, 1, 0, 'Seafury Gauntlets'),
(34079, 20264, 0, 1, 1, 1, 0, 'Peacekeeper Gauntlets'),

(34080, 21128, 10, 1, 1, 1, 0, 'Staff of the Qiraji Prophets'),
(34080, 21698, 0, 1, 1, 1, 0, 'Leggings of Immersion'),
(34080, 21699, 0, 1, 1, 1, 0, 'Barrage Shoulders'),
(34080, 21700, 0, 1, 1, 1, 0, 'Pendant of the Qiraji Guardian'),
(34080, 21701, 0, 1, 1, 1, 0, 'Cloak of Concentrated Hatred'),
(34080, 21702, 0, 1, 1, 1, 0, 'Amulet of Foul Warding'),

(34081, 21703, 10, 1, 1, 1, 0, 'Hammer of Ji\'zhi'),
(34081, 21704, 0, 1, 1, 1, 0, 'Boots of the Redeemed Prophecy'),
(34081, 21705, 0, 1, 1, 1, 0, 'Boots of the Fallen Prophet'),
(34081, 21706, 0, 1, 1, 1, 0, 'Boots of the Unwavering Will'),
(34081, 21707, 0, 1, 1, 1, 0, 'Ring of Swarming Thought'),
(34081, 21708, 0, 1, 1, 1, 0, 'Beetle Scaled Wristguards'),
(34081, 21814, 0, 1, 1, 1, 0, 'Breastplate of Annihilation'),

(34082, 21666, 10, 1, 1, 1, 0, 'Sartura\'s Might'),
(34082, 21667, 0, 1, 1, 1, 0, 'Legplates of Blazing Light'),
(34082, 21668, 0, 1, 1, 1, 0, 'Scaled Leggings of Qiraji Fury'),
(34082, 21669, 0, 1, 1, 1, 0, 'Creeping Vine Helm'),
(34082, 21670, 0, 1, 1, 1, 0, 'Badge of the Swarmguard'),
(34082, 21671, 0, 1, 1, 1, 0, 'Robes of the Battleguard'),
(34082, 21672, 0, 1, 1, 1, 0, 'Gloves of Enforcement'),

(34083, 21648, 0, 1, 1, 1, 0, 'Recomposed Boots'),
(34083, 21673, 10, 1, 1, 1, 0, 'Silithid Claw'),
(34083, 21674, 0, 1, 1, 1, 0, 'Gauntlets of Steadfast Determination'),
(34083, 21675, 0, 1, 1, 1, 0, 'Thick Qirajihide Belt'),
(34083, 21676, 0, 1, 1, 1, 0, 'Leggings of the Festering Swarm'),
(34083, 21678, 0, 1, 1, 1, 0, 'Necklace of Purity'),

(34084, 21650, 10, 1, 1, 1, 0, 'Ancient Qiraji Ripper'),
(34084, 21651, 0, 1, 1, 1, 0, 'Scaled Sand Reaver Leggings'),
(34084, 21652, 0, 1, 1, 1, 0, 'Silithid Carapace Chestguard'),
(34084, 21663, 0, 1, 1, 1, 0, 'Robes of the Guardian Saint'),
(34084, 21664, 0, 1, 1, 1, 0, 'Barbed Choker'),
(34084, 21665, 0, 1, 1, 1, 0, 'Mantle of Wicked Revenge'),

(34085, 21627, 0, 1, 1, 1, 0, 'Cloak of Untold Secrets'),
(34085, 21635, 10, 1, 1, 1, 0, 'Barb of the Sand Reaver'),
(34085, 21645, 0, 1, 1, 1, 0, 'Hive Tunneler\'s Boots'),
(34085, 21647, 0, 1, 1, 1, 0, 'Fetish of the Sand Reaver'),
(34085, 22396, 0, 1, 1, 1, 0, 'Totem of Life'),
(34085, 22402, 0, 1, 1, 1, 0, 'Libram of Grace'),

(34101, 21126, 8, 1, 1, 1, 0, 'Death\'s Sting'),
(34101, 21585, 0, 1, 1, 1, 0, 'Dark Storm Gauntlets'),
(34101, 21586, 0, 1, 1, 1, 0, 'Belt of Never-ending Agony'),
(34101, 21596, 0, 1, 1, 1, 0, 'Ring of the Godslayer'),
(34101, 22730, 0, 1, 1, 1, 0, 'Eyestalk Waist Cord'),
(34101, 22731, 0, 1, 1, 1, 0, 'Cloak of the Devoured'),

(34102, 21134, 8, 1, 1, 1, 0, 'Dark Edge of Insanity'),
(34102, 21581, 0, 1, 1, 1, 0, 'Gauntlets of Annihilation'),
(34102, 21582, 0, 1, 1, 1, 0, 'Grasp of the Old God'),
(34102, 21583, 0, 1, 1, 1, 0, 'Cloak of Clarity'),
(34102, 21839, 8, 1, 1, 1, 0, 'Scepter of the False Prophet'),
(34102, 22732, 0, 1, 1, 1, 0, 'Mark of C\'Thun'),

(34103, 21459, 10, 1, 1, 1, 0, 'Crossbow of Imminent Doom'),
(34103, 21460, 0, 1, 1, 1, 0, 'Helm of Domination'),
(34103, 21461, 0, 1, 1, 1, 0, 'Leggings of the Black Blizzard'),
(34103, 21462, 0, 1, 1, 1, 0, 'Gloves of Dark Wisdom'),
(34103, 21463, 0, 1, 1, 1, 0, 'Ossirian\'s Binding'),
(34103, 21464, 0, 1, 1, 1, 0, 'Shackles of the Unscarred'),

(34104, 21452, 0, 1, 1, 1, 0, 'Staff of the Ruins'),
(34104, 21453, 0, 1, 1, 1, 0, 'Mantle of the Horusath'),
(34104, 21454, 0, 1, 1, 1, 0, 'Runic Stone Shoulders'),
(34104, 21456, 0, 1, 1, 1, 0, 'Sandstorm Cloak'),
(34104, 21458, 0, 1, 1, 1, 0, 'Gauntlets of New Life'),
(34104, 21715, 10, 1, 1, 1, 0, 'Sand Polished Hammer');

-- tbc+ only
-- Revamp Zul'jin 23863 and Hex Lord Malacrass 24239
DELETE FROM `creature_loot_template` WHERE `entry` IN (23863,24239);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23863, 29434, 100, 0, 3, 3, 0, 'Badge of Justice'),
(23863, 33102, 100, 0, 1, 1, 0, 'Blood of Zul\'jin'),
(23863, 33307, 5, 0, 1, 1, 203, 'Formula: Enchant Weapon - Executioner'),
(23863, 36153, 100, 1, -36153, 1, 0, 'Zul''Aman (Boss Loot) - Zul''jin (23863) - Epic Items (Group 1)'),
(23863, 36154, 100, 1, -36154, 1, 0, 'Zul''Aman (Boss Loot) - Zul''jin (23863) - Epic Items (Group 2)'),
(23863, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),

(24239, 29434, 100, 0, 3, 3, 0, 'Badge of Justice'),
(24239, 33307, 5, 0, 1, 1, 203, 'Formula: Enchant Weapon - Executioner'),
(24239, 36151, 100, 1, -36151, 1, 0, 'Zul''Aman (Boss Loot) - Hex Lord Malacrass (24239) - Epic Items (Group 1)'),
(24239, 36152, 100, 1, -36152, 1, 0, 'Zul''Aman (Boss Loot) - Hex Lord Malacrass (24239) - Epic Items (Group 2)'),
(24239, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!');

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (36151,36152,36153,36154);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(36151, 'Zul''Aman (Boss Loot) - Hex Lord Malacrass (24239) - Epic Items (Group 1)'),
(36152, 'Zul''Aman (Boss Loot) - Hex Lord Malacrass (24239) - Epic Items (Group 2)'),
(36153, 'Zul''Aman (Boss Loot) - Zul''jin (23863) - Epic Items (Group 1)'),
(36154, 'Zul''Aman (Boss Loot) - Zul''jin (23863) - Epic Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (36151,36152,36153,36154);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36151, 33298, 0, 1, 1, 1, 0, 'Prowler\'s Strikeblade'),
(36151, 33388, 0, 1, 1, 1, 0, 'Heartless'),
(36151, 33389, 0, 1, 1, 1, 0, 'Dagger of Bad Mojo'),
(36151, 33421, 0, 1, 1, 1, 0, 'Battleworn Tuskguard'),
(36151, 33432, 0, 1, 1, 1, 0, 'Coif of the Jungle Stalker'),
(36151, 33446, 0, 1, 1, 1, 0, 'Girdle of Stromgarde\'s Hope'),
(36151, 33465, 0, 1, 1, 1, 0, 'Staff of Primal Fury'),

(36152, 33453, 0, 1, 1, 1, 0, 'Hood of Hexing'),
(36152, 33463, 0, 1, 1, 1, 0, 'Hood of the Third Eye'),
(36152, 33464, 0, 1, 1, 1, 0, 'Hex Lord\'s Voodoo Pauldrons'),
(36152, 33592, 0, 1, 1, 1, 0, 'Cloak of Ancient Rituals'),
(36152, 33828, 0, 1, 1, 1, 0, 'Tome of Diabolic Remedy'),
(36152, 33829, 0, 1, 1, 1, 0, 'Hex Shrunken Head'),
(36152, 34029, 0, 1, 1, 1, 0, 'Tiny Voodoo Mask'),

(36153, 33466, 0, 1, 1, 1, 0, 'Loop of Cursed Bones'),
(36153, 33467, 0, 1, 1, 1, 0, 'Blade of Twisted Visions'),
(36153, 33468, 0, 1, 1, 1, 0, 'Dark Blessing'),
(36153, 33469, 0, 1, 1, 1, 0, 'Hauberk of the Empire\'s Champion'),
(36153, 33471, 0, 1, 1, 1, 0, 'Two-toed Sandals'),
(36153, 33474, 0, 1, 1, 1, 0, 'Ancient Amani Longbow'),

(36154, 33473, 0, 1, 1, 1, 0, 'Chestguard of the Warlord'),
(36154, 33476, 0, 1, 1, 1, 0, 'Cleaver of the Unforgiving'),
(36154, 33478, 0, 1, 1, 1, 0, 'Jin\'rohk, The Great Apocalypse'),
(36154, 33479, 0, 1, 1, 1, 0, 'Grimgrin Faceguard'),
(36154, 33830, 0, 1, 1, 1, 0, 'Ancient Aqir Artifact'),
(36154, 33831, 0, 1, 1, 1, 0, 'Berserker\'s Call');

-- Remove all but refloot 34093 in 34000 to 34200 range
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` IN (-34096,-34095,-34094,-34092,-34091,-36188,-36191,-36192,-36195,-36200,-36201);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Sunblade Dragonhawk
(25867, 36200, 1, 1, -36200, 1, 0, 'Sunwell Plateau (Trash Loot) - Epic Items'),
(25867, 36201, 2, 1, -36201, 1, 0, 'Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study)'),
-- Chaos Gazer
(25595, 36200, 1, 1, -36200, 1, 0, 'Sunwell Plateau (Trash Loot) - Epic Items'),
(25595, 36201, 2, 1, -36201, 1, 0, 'Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study)'),
-- Cataclysm Hound
(25599, 36200, 1, 1, -36200, 1, 0, 'Sunwell Plateau (Trash Loot) - Epic Items'),
(25599, 36201, 2, 1, -36201, 1, 0, 'Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study)'),
-- Apocalypse Guard
(25593, 36200, 1, 1, -36200, 1, 0, 'Sunwell Plateau (Trash Loot) - Epic Items'),
(25593, 36201, 2, 1, -36201, 1, 0, 'Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study)'),
-- Entropius
(25840, 36188, 100, 1, -36188, 3, 0, 'Entropius (25840) - Epic Items (Group 1)'),
(25840, 36191, 100, 1, -36191, 1, 0, 'Entropius (25840) - Epic Items (Sin''dorei Band)'),
-- Kil'jaeden
(25315, 36192, 100, 1, -36192, 3, 0, 'Sunwell Plateau (Boss Loot) - Kil''jaeden (25315) - Epic Items (Group 1)'),
(25315, 36195, 100, 1, -36195, 3, 0, 'Sunwell Plateau (Boss Loot) - Kil''jaeden (25315) - Epic Items (Weapons & Legendary)');

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (34091,34092,34094,34095,34096,36188,36191,36192,36195,36200,36201);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(36188, 'Sunwell Plateau (Boss Loot) - Entropius (25840) - Epic Items (Group 1)'),
(36191, 'Sunwell Plateau (Boss Loot) - Entropius (25840) - Epic Items (Sin''dorei Band)'),
(36192, 'Sunwell Plateau (Boss Loot) - Kil''jaeden (25315) - Epic Items (Group 1)'),
(36195, 'Sunwell Plateau (Boss Loot) - Kil''jaeden (25315) - Epic Items (Weapons & Legendary)'),
(36200, 'Sunwell Plateau (Trash Loot) - Epic Items'),
(36201, 'Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (34091,34092,34094,34095,34096,36188,36191,36192,36195,36200,36201);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36188, 34211, 0, 1, 1, 1, 0, 'Harness of Carnal Instinct'),
(36188, 34212, 0, 1, 1, 1, 0, 'Sunglow Vest'),
(36188, 34213, 0, 1, 1, 1, 0, 'Ring of Hardened Resolve'),
(36188, 34214, 0, 1, 1, 1, 0, 'Muramasa'),
(36188, 34215, 0, 1, 1, 1, 0, 'Warharness of Reckless Fury'),
(36188, 34216, 0, 1, 1, 1, 0, 'Heroic Judicator\'s Chestguard'),
(36188, 34228, 0, 1, 1, 1, 0, 'Vicious Hawkstrider Hauberk'),
(36188, 34229, 0, 1, 1, 1, 0, 'Garments of Serene Shores'),
(36188, 34230, 0, 1, 1, 1, 0, 'Ring of Omnipotence'),
(36188, 34231, 0, 1, 1, 1, 0, 'Aegis of Angelic Fortune'),
(36188, 34232, 0, 1, 1, 1, 0, 'Fel Conquerer Raiments'),
(36188, 34233, 0, 1, 1, 1, 0, 'Robes of Faltered Light'),
(36188, 34234, 0, 1, 1, 1, 0, 'Shadowed Gauntlets of Paroxysm'),
(36188, 34240, 0, 1, 1, 1, 0, 'Gauntlets of the Soothed Soul'),
(36188, 34427, 0, 1, 1, 1, 0, 'Blackened Naaru Sliver'),
(36188, 34428, 0, 1, 1, 1, 0, 'Steely Naaru Sliver'),
(36188, 34429, 0, 1, 1, 1, 0, 'Shifting Naaru Sliver'),
(36188, 34430, 0, 1, 1, 1, 0, 'Glimmering Naaru Sliver'),

(36191, 35282, 0, 1, 1, 1, 0, 'Sin\'dorei Band of Dominance'),
(36191, 35283, 0, 1, 1, 1, 0, 'Sin\'dorei Band of Salvation'),
(36191, 35284, 0, 1, 1, 1, 0, 'Sin\'dorei Band of Triumph'),

(36192, 34241, 0, 1, 1, 1, 0, 'Cloak of Unforgivable Sin'),
(36192, 34242, 0, 1, 1, 1, 0, 'Tattered Cape of Antonidas'),
(36192, 34243, 0, 1, 1, 1, 0, 'Helm of Burning Righteousness'),
(36192, 34244, 0, 1, 1, 1, 0, 'Duplicitous Guise'),
(36192, 34245, 0, 1, 1, 1, 0, 'Cover of Ursol the Wise'),
(36192, 34332, 0, 1, 1, 1, 0, 'Cowl of Gul\'dan'),
(36192, 34333, 0, 1, 1, 1, 0, 'Coif of Alleria'),
(36192, 34339, 0, 1, 1, 1, 0, 'Cowl of Light\'s Purity'),
(36192, 34340, 0, 1, 1, 1, 0, 'Dark Conjuror\'s Collar'),
(36192, 34341, 0, 1, 1, 1, 0, 'Borderland Paingrips'),
(36192, 34342, 0, 1, 1, 1, 0, 'Handguards of the Dawn'),
(36192, 34343, 0, 1, 1, 1, 0, 'Thalassian Ranger Gauntlets'),
(36192, 34344, 0, 1, 1, 1, 0, 'Handguards of Defiled Worlds'),
(36192, 34345, 0, 1, 1, 1, 0, 'Crown of Anasterian'),

(36195, 34247, 0, 1, 1, 1, 0, 'Apolyon, the Soul-Render'),
(36195, 34329, 0, 1, 1, 1, 0, 'Crux of the Apocalypse'),
(36195, 34331, 0, 1, 1, 1, 0, 'Hand of the Deceiver'),
(36195, 34334, 3, 1, 1, 1, 0, 'Thori\'dal, the Stars\' Fury'),
(36195, 34336, 0, 1, 1, 1, 0, 'Sunflare'),
(36195, 34337, 0, 1, 1, 1, 0, 'Golden Staff of the Sin\'dorei'),

(36200, 34183, 0, 1, 1, 1, 0, 'Shivering Felspine'),
(36200, 34346, 0, 1, 1, 1, 0, 'Mounting Vengeance'),
(36200, 34347, 0, 1, 1, 1, 0, 'Wand of the Demonsoul'),
(36200, 34348, 0, 1, 1, 1, 0, 'Wand of Cleansing Light'),
(36200, 34349, 0, 1, 1, 1, 0, 'Blade of Life\'s Inevitability'),
(36200, 34350, 0, 1, 1, 1, 0, 'Gauntlets of the Ancient Shadowmoon'),
(36200, 34351, 0, 1, 1, 1, 0, 'Tranquil Majesty Wraps'),
(36200, 35733, 0, 1, 1, 1, 0, 'Ring of Harmonic Beauty'),

(36201, 35198, 0, 1, 1, 1, 204, 'Design: Loop of Forged Power'),
(36201, 35199, 0, 1, 1, 1, 204, 'Design: Ring of Flowing Life'),
(36201, 35200, 0, 1, 1, 1, 204, 'Design: Hard Khorium Band'),
(36201, 35204, 0, 1, 1, 1, 201, 'Pattern: Sunfire Handwraps'),
(36201, 35205, 0, 1, 1, 1, 201, 'Pattern: Hands of Eternal Light'),
(36201, 35208, 0, 1, 1, 1, 198, 'Plans: Sunblessed Gauntlets'),
(36201, 35209, 0, 1, 1, 1, 198, 'Plans: Hard Khorium Battlefists'),
(36201, 35212, 0, 1, 1, 1, 199, 'Pattern: Leather Gauntlets of the Sun'),
(36201, 35213, 0, 1, 1, 1, 199, 'Pattern: Fletcher''s Gloves of the Phoenix'),
(36201, 35214, 0, 1, 1, 1, 199, 'Pattern: Gloves of Immortal Dusk'),
(36201, 35215, 0, 1, 1, 1, 199, 'Pattern: Sun-Drenched Scale Gloves'),
(36201, 35273, 0, 1, 1, 1, 200, 'Study of Advanced Smelting'),
(36201, 35186, 0, 1, 1, 1, 0, 'Schematic: Annihilator Holo-Gogs'),
(36201, 35187, 0, 1, 1, 1, 0, 'Schematic: Justicebringer 3000 Specs'),
(36201, 35189, 0, 1, 1, 1, 0, 'Schematic: Powerheal 9000 Lens'),
(36201, 35190, 0, 1, 1, 1, 0, 'Schematic: Hyper-Magnified Moon Specs'),
(36201, 35191, 0, 1, 1, 1, 0, 'Schematic: Wonderheal XT68 Shades'),
(36201, 35192, 0, 1, 1, 1, 0, 'Schematic: Primal-Attuned Goggles'),
(36201, 35193, 0, 1, 1, 1, 0, 'Schematic: Lightning Etched Specs'),
(36201, 35194, 0, 1, 1, 1, 0, 'Schematic: Surestrike Goggles v3.0'),
(36201, 35195, 0, 1, 1, 1, 0, 'Schematic: Mayhem Projection Goggles'),
(36201, 35196, 0, 1, 1, 1, 0, 'Schematic: Hard Khorium Goggles'),
(36201, 35197, 0, 1, 1, 1, 0, 'Schematic: Quad Deathblow X44 Goggles'),
(36201, 35201, 0, 1, 1, 1, 0, 'Design: Pendant of Sunfire'),
(36201, 35203, 0, 1, 1, 1, 0, 'Design: Hard Khorium Choker'),
(36201, 35206, 0, 1, 1, 1, 0, 'Pattern: Sunfire Robe'),
(36201, 35207, 0, 1, 1, 1, 0, 'Pattern: Robe of Eternal Light'),
(36201, 35210, 0, 1, 1, 1, 0, 'Plans: Sunblessed Breastplate'),
(36201, 35211, 0, 1, 1, 1, 0, 'Plans: Hard Khorium Battleplate'),
(36201, 35216, 0, 1, 1, 1, 0, 'Pattern: Leather Chestguard of the Sun'),
(36201, 35217, 0, 1, 1, 1, 0, 'Pattern: Embrace of the Phoenix'),
(36201, 35218, 0, 1, 1, 1, 0, 'Pattern: Carapace of Sun and Shadow');

-- Also Move Epic Gem - TBC 34093 -> 12005
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (12005,34093);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(12005, 'Epic Gem - TBC');

DELETE FROM `reference_loot_template` WHERE `entry` IN (12005,34093);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(12005, 32227, 0, 1, 1, 1, 0, 'Crimson Spinel'),
(12005, 32228, 0, 1, 1, 1, 0, 'Empyrean Sapphire'),
(12005, 32229, 0, 1, 1, 1, 0, 'Lionseye'),
(12005, 32230, 0, 1, 1, 1, 0, 'Shadowsong Amethyst'),
(12005, 32231, 0, 1, 1, 1, 0, 'Pyrestone'),
(12005, 32249, 0, 1, 1, 1, 0, 'Seaspray Emerald');

-- Cleanup again, 3 npcs were left
DELETE FROM `creature_loot_template` WHERE `item` IN (32227,32228,32229,32230,32231,32249);

DELETE FROM `creature_loot_template` WHERE `mincountOrRef` IN (-12005,-34093);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22946, 12005, 5, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23232, 12005, 5, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22954, 12005, 6, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22955, 12005, 6, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23047, 12005, 6, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23147, 12005, 6, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22939, 12005, 6, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22878, 12005, 10, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22959, 12005, 10, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23374, 12005, 10, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22881, 12005, 10, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23223, 12005, 10, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22876, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23222, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22956, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22885, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22869, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22873, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22875, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22877, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22879, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22880, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22882, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22884, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22945, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22957, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22962, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22964, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22965, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23018, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23172, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23196, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23235, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23236, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23237, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23239, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23337, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23339, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23400, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23402, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22874, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23403, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23397, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22953, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23049, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22845, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22846, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22853, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22844, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22847, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22855, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23330, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23394, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22951, 12005, 100, 1, -12005, 1, 0, 'Epic Gem - TBC'),
-- Add Sunwell Plateau
(24892, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Sathrovarr the Corruptor
(24882, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Brutallus
(25038, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Felmyst
(25165, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Lady Sacrolash
(25166, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Grand Warlock Alythess
(25840, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Entropius
(25315, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Kil'jaeden
(25508, 12005, 25, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Shadowsword Guardian
(25593, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Apocalypse Guard
(25599, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Cataclysm Hound
(25595, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Chaos Gazer
(25592, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Doomfire Destroyer
(25597, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Oblivion Mage
(25591, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Painbringer
(25509, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Priestess of Torment
(25837, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Shadowsword Commander
(25484, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Shadowsword Assassin
(25506, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Shadowsword Lifeshaper
(25483, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Shadowsword Manafiend
(25486, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Shadowsword Vanquisher
(25367, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Sunblade Arch Mage
(25363, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Sunblade Cabalist
(25371, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Sunblade Dawn Priest
(25370, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Sunblade Dusk Priest
(25507, 12005, 20, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Sunblade Protector
(25368, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'), -- Sunblade Slayer
(25369, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'); -- Sunblade Vindicator

UPDATE `creature_template` SET `lootid` = 25363 WHERE `entry` = 25363;
UPDATE `creature_template` SET `lootid` = 25367 WHERE `entry` = 25367;
UPDATE `creature_template` SET `lootid` = 25368 WHERE `entry` = 25368;
UPDATE `creature_template` SET `lootid` = 25369 WHERE `entry` = 25369;
UPDATE `creature_template` SET `lootid` = 25370 WHERE `entry` = 25370;
UPDATE `creature_template` SET `lootid` = 25371 WHERE `entry` = 25371;
UPDATE `creature_template` SET `lootid` = 25483 WHERE `entry` = 25483;
UPDATE `creature_template` SET `lootid` = 25484 WHERE `entry` = 25484;
UPDATE `creature_template` SET `lootid` = 25486 WHERE `entry` = 25486;
UPDATE `creature_template` SET `lootid` = 25506 WHERE `entry` = 25506;
UPDATE `creature_template` SET `lootid` = 25507 WHERE `entry` = 25507;
UPDATE `creature_template` SET `lootid` = 25508 WHERE `entry` = 25508;
UPDATE `creature_template` SET `lootid` = 25509 WHERE `entry` = 25509;
UPDATE `creature_template` SET `lootid` = 25591 WHERE `entry` = 25591;
UPDATE `creature_template` SET `lootid` = 25592 WHERE `entry` = 25592;
UPDATE `creature_template` SET `lootid` = 25597 WHERE `entry` = 25597;
UPDATE `creature_template` SET `lootid` = 25837 WHERE `entry` = 25837;

DELETE FROM `creature_loot_template` WHERE `entry` IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837) AND `item` IN (21877,32897,34664,36200,36201,49001,50501,60345,61001);
INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 21877, 28, 0, 2, 3, 0, 'Netherweave Cloth'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 32897, 15, 0, 1, 1, 0, 'Mark of the Illidari'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 34664, 5, 0, 1, 1, 0, 'Sunmote'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 36200, 1, 1, -36200, 1, 0, 'Sunwell Plateau (Trash Loot) - Epic Items'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 36201, 2, 1, -36201, 1, 0, 'Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study)'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 60345, 0.1, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT entry, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'
FROM creature_template 
WHERE entry IN (25363,25367,25368,25369,25370,25371,25483,25484,25486,25506,25507,25508,25509,25591,25592,25597,25837);

UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 1;
DELETE FROM `creature_loot_template` WHERE `entry` = 1;
UPDATE `creature_loot_template` SET `item` = 60338, `mincountOrRef` = -60338, `comments` = 'NPC LOOT (Purple World Drop) - (Item Levels: 58-60) - (NPC Levels: 59) - VANILLA NPC ONLY' WHERE `entry` = 8546 AND `item` = 60337; -- use classic level loot, else it's not used anywhere
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (10006,24092,24093); -- DEPRECATED (USE 50501)
DELETE FROM `reference_loot_template` WHERE `entry` IN (10006,24092,24093);
UPDATE `item_loot_template` SET `item` = 50501, `mincountOrRef` = -50501, `comments` = 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!' WHERE `entry` = 33926 AND `item` = 10006;

