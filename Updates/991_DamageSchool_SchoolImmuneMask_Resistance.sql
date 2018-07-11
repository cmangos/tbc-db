-- ============================================================================================================================================================
-- creature_template which need adjustments to their DamageSchool, SchoolImmuneMask or Resistance-(Holy/Fire/Nature/Frost/Shadow/Arcane)
-- ============================================================================================================================================================

--		DamageSchool			SchoolImmuneMask
-- 0 	SPELL_SCHOOL_NORMAL		SPELL_SCHOOL_NORMAL		1
-- 1 	SPELL_SCHOOL_HOLY		SPELL_SCHOOL_HOLY		2
-- 2 	SPELL_SCHOOL_FIRE		SPELL_SCHOOL_FIRE		4
-- 3 	SPELL_SCHOOL_NATURE		SPELL_SCHOOL_NATURE		8
-- 4 	SPELL_SCHOOL_FROST		SPELL_SCHOOL_FROST		16
-- 5 	SPELL_SCHOOL_SHADOW		SPELL_SCHOOL_SHADOW		32
-- 6 	SPELL_SCHOOL_ARCANE		SPELL_SCHOOL_ARCANE		64

-- =====================================================================================================
-- Map: 0 Eastern Kingdoms / 1 Kalimdor / Classic
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 92; -- Rock Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 329; -- Earth Elemental
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 521; -- Lupos
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 575; -- Fire Elemental
UPDATE `creature_template` SET `DamageSchool` = 4, `SchoolImmuneMask` = 16 WHERE `entry` = 691; -- Lesser Water Elemental
UPDATE `creature_template` SET `DamageSchool` = 3, `SchoolImmuneMask` = 8 WHERE `entry` = 832; -- Dust Devil
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2359; -- Elemental Slave
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2551; -- Brutus
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2592; -- Rumbling Exile
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2593; -- Rough Stone Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2723; -- Stone Golem
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2735; -- Lesser Rock Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2736; -- Greater Rock Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 2745; -- Ambassador Infernus
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2749; -- Siege Golem
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2751; -- War Golem
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2752; -- Rumbler
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 2760; -- Burning Exile
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 2761; -- Cresting Exile
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 2762; -- Thundering Exile
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 3917; -- Befouled Water Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = `SchoolImmuneMask`|8|16 WHERE `entry` = 5461; -- Sea Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 5852; -- Inferno Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 6520; -- Scorching Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 9461; -- Frenzied Black Drake
UPDATE `creature_template` SET `SchoolImmuneMask` = 8, `ResistanceNature` = 0 WHERE `entry` = 11321; -- Molten Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 14435; -- Prince Thunderaan <The Wind Seeker>
UPDATE `creature_template` SET `DamageSchool` = 4, `SchoolImmuneMask` = 16 WHERE `entry` = 17207; -- Naias
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 26116; -- Frostwave Lieutenant
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 26178; -- Hailstone Lieutenant
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 26204; -- Chillwind Lieutenant
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 26214; -- Frigid Lieutenant
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 26215; -- Glacial Lieutenant
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 26216; -- Glacial Templar

-- =====================================================================================================
-- Map: 269 The Black Morass
-- =====================================================================================================


-- =====================================================================================================
-- Map: 469 Blackwing Lair
-- =====================================================================================================
UPDATE creature_template SET `SchoolImmuneMask` = `SchoolImmuneMask`|2|4|8|16|32|64 WHERE entry = 12457; -- Blackwing Spellbinder

-- =====================================================================================================
-- Map: 530 Outland
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `entry` = 16854; -- Eldinarcus
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 18692; -- Hemathion
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 19973; -- Abyssal Flamebringer
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `entry` = 21267; -- Mana Beast
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `entry` = 20516; -- Warp Monstrosity
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 21050; -- Enraged Earth Spirit
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 21061; -- Enraged Fire Spirit
UPDATE `creature_template` SET `DamageSchool` = 4, `SchoolImmuneMask` = 16 WHERE `entry` = 21728; -- Skettis Surger
UPDATE `creature_template` SET `DamageSchool` = 4, `SchoolImmuneMask` = 16 WHERE `entry` = 21730; -- Alluvion
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 22309; -- Crashing Wave-Spirit
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `entry` = 22310; -- Storming Wind-Ripper
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 22311; -- Raging Fire-Soul
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 22323; -- Incandescent Fel Spark
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 23029; -- Talonsworn Forest-Rager
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 23061; -- Rivendark
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 23261; -- Furywing
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 23281; -- Insidion
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 23282; -- Obsidia


-- =====================================================================================================
-- Map: 532 Karazhan
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 17167; -- Conjured Elemental

-- =====================================================================================================
-- Map: 534 Hyjal Summit
-- =====================================================================================================

-- =====================================================================================================
-- Map: 540 The Shattered Halls
-- =====================================================================================================

-- =====================================================================================================
-- Map: 542 The Blood Furnace
-- =====================================================================================================
UPDATE `creature_template` SET `ResistanceShadow` = 90 WHERE `entry` = 18614; -- Seductress maybe even higher

-- =====================================================================================================
-- Map: 543 Hellfire Ramparts
-- =====================================================================================================

-- =====================================================================================================
-- Map: 544 Magtheridon's Lair
-- =====================================================================================================

-- =====================================================================================================
-- Map: 545 The Steamvault
-- =====================================================================================================

-- =====================================================================================================
-- Map: 546 The Underbog
-- =====================================================================================================

-- =====================================================================================================
-- Map: 547 The Slave Pens
-- =====================================================================================================

-- =====================================================================================================
-- Map: 548 Serpentshrine Cavern
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 22036; -- Tainted Spawn of Hydross
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` = 22035; -- Pure Spawn of Hydross

-- =====================================================================================================
-- Map: 550 The Eye
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 19514; -- Al'ar <Phoenix God>
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 19551; -- Ember of Al'ar

-- =====================================================================================================
-- Map: 552 The Arcatraz
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` IN (20911,21588); -- Blackwing Drakonaar
UPDATE `creature_template` SET `ResistanceFire` = 140, `ResistanceNature` = 140, `ResistanceFrost` = 140, `ResistanceShadow` = 140, `ResistanceArcane` = 140 WHERE `entry` = 21618; -- Twilight Drakonaar maybe even higher
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` IN (20908,21617); -- Akkiris Lightning-Waker

-- =====================================================================================================
-- Map: 553 The Botanica
-- =====================================================================================================

-- =====================================================================================================
-- Map: 554 The Mechanar
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 127 WHERE `entry` IN (20481,21538); -- Raging Flames

-- =====================================================================================================
-- Map: 555 Shadow Labyrinth
-- =====================================================================================================

-- =====================================================================================================
-- Map: 556 Sethekk Halls
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` IN (19203,20703); -- Syth Fire Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 16 WHERE `entry` IN (19204,20704); -- Syth Frost Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 32 WHERE `entry` IN (19206,20705); -- Syth Shadow Elemental
UPDATE `creature_template` SET `SchoolImmuneMask` = 32 WHERE `entry` IN (20343,20687); -- Charming Totem
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `entry` IN (19205,20702); -- Syth Arcane Elemental

-- =====================================================================================================
-- Map: 557 Mana-Tombs
-- =====================================================================================================

-- =====================================================================================================
-- Map: 558 Auchenai Crypts
-- =====================================================================================================

-- =====================================================================================================
-- Map: 560 Old Hillsbrad Foothills
-- =====================================================================================================

-- =====================================================================================================
-- Map: 564 Black Temple
-- =====================================================================================================
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` = 23394; -- Promenade Sentinel

-- =====================================================================================================
-- Map: 565 Gruul's Lair
-- =====================================================================================================

-- =====================================================================================================
-- Map: 568 Zul'Aman
-- =====================================================================================================
UPDATE `creature_template` SET `ResistanceArcane` = 30 WHERE `entry` = 24241; -- Thurg maybe even higher

-- =====================================================================================================
-- Map: 580 Sunwell Plateau
-- =====================================================================================================

-- =====================================================================================================
-- Map: 585 Magisters' Terrace
-- =====================================================================================================

-- =====================================================================================================
-- ToRecheck:
-- -1 = Immune ergo SchoolImmuneMask if confirmed
-- =====================================================================================================

-- `ResistanceHoly`:
-- 25741	M'uru	150
-- 25865	Frozen Core	100
-- 26339	Frozen Core (1)	100

-- `ResistanceFire`:
-- 20909	Sulfuron Magma-Thrower	-1
-- 22286	Fel Rager	-1
-- 22298	Vile Fire-Soul	-1
-- 25741	M'uru	150
-- 25865	Frozen Core	100
-- 26339	Frozen Core (1)	100

-- `ResistanceNature`:
-- 25040	Greater Water Elemental	210
-- 25741	M'uru	150
-- 25865	Frozen Core	100
-- 26339	Frozen Core (1)	100

-- `ResistanceFrost`:
-- 25040	Greater Water Elemental	210
-- 25741	M'uru	150
-- 25865	Frozen Core	100
-- 26339	Frozen Core (1)	100

-- `ResistanceShadow`:
-- 25741	M'uru	150
-- 25865	Frozen Core	100
-- 26339	Frozen Core (1)	100

-- Bonechewer Ravener 17264,18054 ~30/60 "occasionally resists Mind Controlling attempts"

-- `ResistanceArcane`:
-- 25741	M'uru	150
-- 25865	Frozen Core	100
-- 26339	Frozen Core (1)	100

