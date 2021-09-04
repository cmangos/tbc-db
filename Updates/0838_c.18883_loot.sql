-- Remove wrong loot for Mana Snapper 18883
-- https://tbc.wowhead.com/npc=18883/mana-snapper
DELETE FROM `creature_loot_template` WHERE `entry` = 18883 AND `item` IN (
22786, -- Dreaming Glory
49002, -- Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids
50501 -- NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!
);

