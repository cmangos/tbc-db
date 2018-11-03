-- Delete any linked gameobject trap. They are now properly spawned by their master gameobjects so no DB spawns are needed

DELETE FROM game_event_gameobject WHERE guid IN(SELECT guid FROM gameobject WHERE id IN(
2061, -- Campfire
2066, -- Bonfire Damage
12653, -- Cat Figurine Trap
19535, -- Serpentbloom
31442, -- Basic Campfire
31510, -- Bright Campfire
94039, -- Shrine of Gelihast
94040, -- Altar of the Deeps
123334, -- The Punisher (DND)
123355, -- Rat Bomb Trap
124072, -- Duskwood Chest
128196, -- Magenta Cap Clusters Trap
130126, -- Gallywix\'s Lockbox
142172, -- Transpolyporter BB
142176, -- Transpolyporter
148976, -- Fire
153204, -- Rune of the Defiler
153360, -- Rune of Return
175534, -- Supply Crate
175535, -- Supply Crate
175536, -- Supply Crate
175537, -- Supply Crate
175589, -- Challenge to Urok Trap
176117, -- Pamela\'s Doll\'s Trap
176152, -- Musty Tome Trap
176214, -- Blood of Heroes
176591, -- Horgus\' Skull Trap
176865, -- Sword of Marduk Trap
177045, -- Haunted Trap
177606, -- Father Flame Aura
177793, -- Strange Lockbox Agility Trap
178187, -- Molten Core Circle SULFURON
178188, -- Molten Core Circle BARON
178189, -- Molten Core Circle SHAZZRAH
178190, -- Molten Core Circle GOLEMAGG
178191, -- Molten Core Circle GARR
178192, -- Molten Core Circle MAGMADAR
178193, -- Molten Core Circle GEHENNAS
178324, -- DANGER! Do Not Open! Move Along!
178984, -- Bauble Aura
179900, -- Big Bonfire Damage
180100, -- Alliance Banner Aura
180101, -- Horde Banner Aura
180102, -- Neutral Banner Aura
180217, -- Whipweed Entangle Trap
180244, -- Jinxed Hoodoo Pile
180247, -- Jinxed Hoodoo Pile
180421, -- Alliance Banner Aura, Large
180422, -- Horde Banner Aura, Large
180423, -- Neutral Banner Aura, Large
180583, -- Twilight Tablet Fragment
181029, -- Burning Coals
181272, -- Dreaming Glory
181282, -- Netherbloom
181284, -- Mana Thistle
181376, -- Midsummer Bonfire Campfire Damage Trap
181583, -- Tainted Soil Trap
181584, -- Battered Crate Trap
181913, -- Chalice of Elune
182051, -- Box of Mushrooms Trap
182582, -- Draenei Vessel
182585, -- Restless Bones
183386, -- Sanguine Hibiscus
183768, -- Etherlithium Matrix Crystal
183997, -- The Saga of Terokk
184078, -- Nether Dragonkin Egg
184124, -- Krasus\'s Compendium Aura
184265, -- Spare Teleporter Parts
184578, -- Discarded Nutriment
184736, -- Thunderlord Clan Tablet
184737, -- The Thunderspike
184747, -- Flayer Fog
184794, -- Sealed Box
184797, -- Rotten Arakkoa Egg
184801, -- Rotten Arakkoa Egg Dummy
184835, -- Infernal
184843, -- Torgos\'s Bane
184868, -- Baa\'ri Tablet Aura
184871, -- Fel Reaver Parts Aura
184872, -- Fel Reaver Parts Aura
185018, -- Charged Manacell
185208, -- [PH] Arakkoa Egg
185212, -- [PH] Arakkoa Egg
185499, -- Bogblossom
185502, -- Bogblossom (harmless)
185600, -- Netherwing Egg Trap (Gas)
185878, -- Nethercite Smoke Effect
186330, -- Stonemaul Banner
186334 -- Ogre Remains
));

DELETE FROM gameobject_battleground WHERE guid IN(SELECT guid FROM gameobject WHERE id IN(
2061, -- Campfire
2066, -- Bonfire Damage
12653, -- Cat Figurine Trap
19535, -- Serpentbloom
31442, -- Basic Campfire
31510, -- Bright Campfire
94039, -- Shrine of Gelihast
94040, -- Altar of the Deeps
123334, -- The Punisher (DND)
123355, -- Rat Bomb Trap
124072, -- Duskwood Chest
128196, -- Magenta Cap Clusters Trap
130126, -- Gallywix\'s Lockbox
142172, -- Transpolyporter BB
142176, -- Transpolyporter
148976, -- Fire
153204, -- Rune of the Defiler
153360, -- Rune of Return
175534, -- Supply Crate
175535, -- Supply Crate
175536, -- Supply Crate
175537, -- Supply Crate
175589, -- Challenge to Urok Trap
176117, -- Pamela\'s Doll\'s Trap
176152, -- Musty Tome Trap
176214, -- Blood of Heroes
176591, -- Horgus\' Skull Trap
176865, -- Sword of Marduk Trap
177045, -- Haunted Trap
177606, -- Father Flame Aura
177793, -- Strange Lockbox Agility Trap
178187, -- Molten Core Circle SULFURON
178188, -- Molten Core Circle BARON
178189, -- Molten Core Circle SHAZZRAH
178190, -- Molten Core Circle GOLEMAGG
178191, -- Molten Core Circle GARR
178192, -- Molten Core Circle MAGMADAR
178193, -- Molten Core Circle GEHENNAS
178324, -- DANGER! Do Not Open! Move Along!
178984, -- Bauble Aura
179900, -- Big Bonfire Damage
180100, -- Alliance Banner Aura
180101, -- Horde Banner Aura
180102, -- Neutral Banner Aura
180217, -- Whipweed Entangle Trap
180244, -- Jinxed Hoodoo Pile
180247, -- Jinxed Hoodoo Pile
180421, -- Alliance Banner Aura, Large
180422, -- Horde Banner Aura, Large
180423, -- Neutral Banner Aura, Large
180583, -- Twilight Tablet Fragment
181029, -- Burning Coals
181272, -- Dreaming Glory
181282, -- Netherbloom
181284, -- Mana Thistle
181376, -- Midsummer Bonfire Campfire Damage Trap
181583, -- Tainted Soil Trap
181584, -- Battered Crate Trap
181913, -- Chalice of Elune
182051, -- Box of Mushrooms Trap
182582, -- Draenei Vessel
182585, -- Restless Bones
183386, -- Sanguine Hibiscus
183768, -- Etherlithium Matrix Crystal
183997, -- The Saga of Terokk
184078, -- Nether Dragonkin Egg
184124, -- Krasus\'s Compendium Aura
184265, -- Spare Teleporter Parts
184578, -- Discarded Nutriment
184736, -- Thunderlord Clan Tablet
184737, -- The Thunderspike
184747, -- Flayer Fog
184794, -- Sealed Box
184797, -- Rotten Arakkoa Egg
184801, -- Rotten Arakkoa Egg Dummy
184835, -- Infernal
184843, -- Torgos\'s Bane
184868, -- Baa\'ri Tablet Aura
184871, -- Fel Reaver Parts Aura
184872, -- Fel Reaver Parts Aura
185018, -- Charged Manacell
185208, -- [PH] Arakkoa Egg
185212, -- [PH] Arakkoa Egg
185499, -- Bogblossom
185502, -- Bogblossom (harmless)
185600, -- Netherwing Egg Trap (Gas)
185878, -- Nethercite Smoke Effect
186330, -- Stonemaul Banner
186334 -- Ogre Remains
));

DELETE FROM gameobject WHERE id IN(
2061, -- Campfire
2066, -- Bonfire Damage
12653, -- Cat Figurine Trap
19535, -- Serpentbloom
31442, -- Basic Campfire
31510, -- Bright Campfire
94039, -- Shrine of Gelihast
94040, -- Altar of the Deeps
123334, -- The Punisher (DND)
123355, -- Rat Bomb Trap
124072, -- Duskwood Chest
128196, -- Magenta Cap Clusters Trap
130126, -- Gallywix\'s Lockbox
142172, -- Transpolyporter BB
142176, -- Transpolyporter
148976, -- Fire
153204, -- Rune of the Defiler
153360, -- Rune of Return
175534, -- Supply Crate
175535, -- Supply Crate
175536, -- Supply Crate
175537, -- Supply Crate
175589, -- Challenge to Urok Trap
176117, -- Pamela\'s Doll\'s Trap
176152, -- Musty Tome Trap
176214, -- Blood of Heroes
176591, -- Horgus\' Skull Trap
176865, -- Sword of Marduk Trap
177045, -- Haunted Trap
177606, -- Father Flame Aura
177793, -- Strange Lockbox Agility Trap
178187, -- Molten Core Circle SULFURON
178188, -- Molten Core Circle BARON
178189, -- Molten Core Circle SHAZZRAH
178190, -- Molten Core Circle GOLEMAGG
178191, -- Molten Core Circle GARR
178192, -- Molten Core Circle MAGMADAR
178193, -- Molten Core Circle GEHENNAS
178324, -- DANGER! Do Not Open! Move Along!
178984, -- Bauble Aura
179900, -- Big Bonfire Damage
180100, -- Alliance Banner Aura
180101, -- Horde Banner Aura
180102, -- Neutral Banner Aura
180217, -- Whipweed Entangle Trap
180244, -- Jinxed Hoodoo Pile
180247, -- Jinxed Hoodoo Pile
180421, -- Alliance Banner Aura, Large
180422, -- Horde Banner Aura, Large
180423, -- Neutral Banner Aura, Large
180583, -- Twilight Tablet Fragment
181029, -- Burning Coals
181272, -- Dreaming Glory
181282, -- Netherbloom
181284, -- Mana Thistle
181376, -- Midsummer Bonfire Campfire Damage Trap
181583, -- Tainted Soil Trap
181584, -- Battered Crate Trap
181913, -- Chalice of Elune
182051, -- Box of Mushrooms Trap
182582, -- Draenei Vessel
182585, -- Restless Bones
183386, -- Sanguine Hibiscus
183768, -- Etherlithium Matrix Crystal
183997, -- The Saga of Terokk
184078, -- Nether Dragonkin Egg
184124, -- Krasus\'s Compendium Aura
184265, -- Spare Teleporter Parts
184578, -- Discarded Nutriment
184736, -- Thunderlord Clan Tablet
184737, -- The Thunderspike
184747, -- Flayer Fog
184794, -- Sealed Box
184797, -- Rotten Arakkoa Egg
184801, -- Rotten Arakkoa Egg Dummy
184835, -- Infernal
184843, -- Torgos\'s Bane
184868, -- Baa\'ri Tablet Aura
184871, -- Fel Reaver Parts Aura
184872, -- Fel Reaver Parts Aura
185018, -- Charged Manacell
185208, -- [PH] Arakkoa Egg
185212, -- [PH] Arakkoa Egg
185499, -- Bogblossom
185502, -- Bogblossom (harmless)
185600, -- Netherwing Egg Trap (Gas)
185878, -- Nethercite Smoke Effect
186330, -- Stonemaul Banner
186334 -- Ogre Remains
);

