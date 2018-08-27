-- Remove Race Restriciton for Paladin & Shaman T1 Set due to The Burning Crusade Expansion
UPDATE `reference_loot_template` SET `condition_id` = 0 WHERE `item` IN (
16837, -- Earthfury Boots
16839, -- Earthfury Gauntlets
16841, -- Earthfury Vestments
16842, -- Earthfury Helmet
16843, -- Earthfury Legguards
16844, -- Earthfury Epaulets
16853, -- Lawbringer Chestguard
16854, -- Lawbringer Helm
16855, -- Lawbringer Legplates
16856, -- Lawbringer Spaulders
16859, -- Lawbringer Boots
16860 -- Lawbringer Gauntlets
);

