-- Correct HP for Shade of Naxxramas 16164
-- https://www.wowhead.com/classic/npc=16164/shade-of-naxxramas - 56592 hp as in classicmangos, instead of 69954
UPDATE `creature_template` SET `HealthMultiplier` = 18 WHERE `entry` = 16164; -- 22.25

