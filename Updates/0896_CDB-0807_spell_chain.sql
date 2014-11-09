DELETE FROM spell_chain WHERE first_spell IN (7371,12966,13819,16257,19506,25912,25914,27813,33388,34769);
DELETE FROM spell_chain WHERE `spell_id` IN (3674,27243,29893,25590,26991,30451,30455,30482,34913,33076,30706,32546,33763);
INSERT INTO spell_chain (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
-- ===============
-- From classic-db
-- ===============

/* Flurry triggered, Warrior - 5 Ranks */
(12966,0,12966,1,0),
(12967,12966,12966,2,0),
(12968,12967,12966,3,0),
(12969,12968,12966,4,0),
(12970,12969,12966,5,0),

/* Flurry triggered, Shaman - 5 Ranks */
(16257,0,16257,1,0),
(16277,16257,16257,2,0),
(16278,16277,16257,3,0),
(16279,16278,16257,4,0),
(16280,16279,16257,5,0),

-- Elune's Grace 2651 - removed in tbc

-- Mana Tide Totem 16190 - no ranks in tbc (s.17354, 17359)

-- Boar Charge (Hunter Pet)
-- classic only has rank 6 no lower ranks
(7371, 0, 7371, 1, 0),
(26177, 7371, 7371, 2, 0),
(26178, 26177, 7371, 3, 0),
(26179, 26178, 7371, 4, 0),
(26201, 26179, 7371, 5, 0),
(27685, 26201, 7371, 6, 0),

-- Trueshot Aura
(19506, 0, 19506, 1, 0),
(20905, 19506, 19506, 2, 0),
(20906, 20905, 19506, 3, 0),
-- TBC+
(27066, 20906, 19506, 4, 0),

-- Riding Skills
(33388, 0, 33388, 1, 0),
(33391, 33388, 33388, 2, 0),

-- TBC+
(34090, 33391, 33388, 3, 0),
(34091, 34090, 33388, 4, 0),

-- =============
-- From wotlk-db
-- =============

(13819, 0, 13819, 1, 0), -- Summon Warhorse (Summon)
(23214, 13819, 13819, 2, 33391), -- Summon Charger (Summon)

-- TBC+ (B11)
(34769, 0, 34769, 1, 0), -- Summon Warhorse (Summon)
(34767, 34769, 34769, 2, 33391), -- Summon Charger (Summon)

-- Holy Shock - Damage Component
(25912, 0, 25912, 1, 0),
(25911, 25912, 25912, 2, 0),
(25902, 25911, 25912, 3, 0),
(27176, 25902, 25912, 4, 0),
(33073, 27176, 25912, 5, 0),

-- Holy Shock - Heal Component
(25914, 0, 25914, 1, 0),
(25913, 25914, 25914, 2, 0),
(25903, 25913, 25914, 3, 0),
(27175, 25903, 25914, 4, 0),
(33074, 27175, 25914, 5, 0),

-- Blessed Recovery
(27813, 0, 27813, 1, 0),
(27817, 27813, 27813, 2, 0),
(27818, 27817, 27813, 3, 0),

-- Single Spells
-- r1 additions are dummies for completion

-- Black Arrow (Rank 1)
(3674, 0, 3674, 1, 0),

-- Seed of Corruption (Rank 1)
(27243, 0, 27243, 1, 0),

-- Ritual of Souls (Rank 1)
(29893, 0, 29893, 1, 0),

-- Ancestral Spirit (Rank 6)
(25590, 20777, 2008, 6, 0), -- missing

-- Gift of the Wild (Rank 3)
(26991, 21850, 21849, 3, 0), -- missing

-- Arcane Blast (Rank 1)
(30451, 0, 30451, 1, 0),

-- Ice Lance (Rank 1)
(30455, 0, 30455, 1, 0),

-- Molten Armor (Rank 1)
(30482, 0, 30482, 1, 0),

-- Molten Armor (Rank 1)
(34913, 0, 34913, 1, 0),

-- Prayer of Mending (Rank 1)
(33076, 0, 33076, 1, 0),

-- Totem of Wrath (Rank 1)
(30706, 0, 30706, 1, 0),

-- Binding Heal (Rank 1)
(32546, 0, 32546, 1, 0),

-- Lifebloom (Rank 1)
(33763, 0, 33763, 1, 0);

