-- Further Improve Black Temple Epic Item Dropchance
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `mincountOrRef` = -36198 AND `entry` IN (
22946, -- Shadowmoon War Hound
23232, -- Mutant War Hound
22939, -- Temple Concubine
22955, -- Charming Courtesan
23028, -- Bonechewer Taskmaster
23047, -- Shadowmoon Soldier
23223 -- Bonechewer Spectator
);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36198 AND `entry` IN (
22844, -- Ashtongue Battlelord
22845, -- Ashtongue Mystic
22846, -- Ashtongue Stormcaller
22847, -- Ashtongue Primalist
22853, -- Illidari Defiler
22869, -- Illidari Boneslicer
22873, -- Coilskar General
22874, -- Coilskar Harpooner
22875, -- Coilskar Sea-Caller
22876, -- Coilskar Soothsayer
22877, -- Coilskar Wrangler
22878, -- Aqueous Lord
22879, -- Shadowmoon Reaver
22880, -- Shadowmoon Champion
22881, -- Aqueous Surger
22882, -- Shadowmoon Deathshaper
22884, -- Leviathan
22885, -- Dragon Turtle
22945, -- Shadowmoon Blood Mage
22959, -- Spellbound Attendant
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23018, -- Shadowmoon Houndmaster
23030, -- Dragonmaw Sky Stalker
23235, -- Bonechewer Blade Fury
23236, -- Bonechewer Shield Disciple
23237, -- Bonechewer Blood Prophet
23330, -- Dragonmaw Wind Reaver
23337, -- Illidari Centurion
23339, -- Illidari Heartseeker
23374, -- Ashtongue Stalker
23397, -- Illidari Blood Lord
23400, -- Illidari Archon
23402, -- Illidari Battle-mage
23403 -- Illidari Assassin
);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `mincountOrRef` = -36198 AND `entry` IN (
22855, -- Illidari Nightlord
22953, -- Wrathbone Flayer
22954, -- Illidari Fearbringer
22956, -- Sister of Pain
22957, -- Priestess of Dementia
22962, -- Priestess of Delight
22964, -- Sister of Pleasure
23049, -- Shadowmoon Weapon Master
23172, -- Hand of Gorefiend
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239 -- Bonechewer Combatant
);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `mincountOrRef` = -36198 AND `entry` = 23394; -- Promenade Sentinel

