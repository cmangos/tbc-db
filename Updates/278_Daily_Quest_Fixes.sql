-- ===========================
-- Daily Quest Implementations
-- ===========================

-- INITIAL FIX (QUEST GROUPING) UNTIL DISCUSSIONS REGARDING BEST IMPLEMENTATION WITH CORE TEAM

-- Nether-Stalker Mah'duun Dungeon Daily Quests
UPDATE quest_template SET ExclusiveGroup=11364 WHERE entry IN (11364,11371,11376,11383,11385,11387,11389,11500);

-- Wind Trader Zhareem Heroic Dungeon Daily Quests
UPDATE quest_template SET ExclusiveGroup=11354 WHERE entry IN (11354,11362,11363,11368,11369,11370,11372,11373,11374,11375,11378,11382,11384,11386,11388,11499);

-- The Rokk Cooking Daily Quests
UPDATE quest_template SET ExclusiveGroup=11377 WHERE entry IN (11377,11379,11380,11381);

-- Old Man Barlo Fishing Daily Quests
UPDATE quest_template SET ExclusiveGroup=11665 WHERE entry IN (11665,11666,11667,11668,11669);

-- Alliance Brigadier General PvP Daily Quests
UPDATE quest_template SET ExclusiveGroup=11335 WHERE entry IN (11335,11336,11337,11338);

-- Horde Warbringer PvP Daily Quests
UPDATE quest_template SET ExclusiveGroup=11339 WHERE entry IN (11339,11340,11341,11342);






















































