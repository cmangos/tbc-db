-- WIP: Add correct patterns to an outland lowlevel refloot and add this instead
-- Remove NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ from Hellfire Ramparts and Blood Furnace Npcs
DELETE FROM `creature_loot_template` WHERE `item` = 50501 AND `entry` IN (
-- Ramps
17259,
17264,
17455,
17269,
17270,
17271,
17280,
17281,
17306,
17307,
17308,
17309,
17478,
17517,

-- BF
17256,
17370,
17371,
17377,
17380,
17381,
17395,
17397,
17398,
17400,
17414,
17416,
17429,
17477,
17491,
17624,
17626,
17653,
18894,
19016,
21174
);

