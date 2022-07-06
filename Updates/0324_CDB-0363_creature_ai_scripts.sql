-- Two fixes for creatures involved in Anub'Rekhan encounter in Naxxramas

-- Reduced damage of creature 16698 (Corpse Scarab) because their damage level was for WotLK (about 2k)
-- instead of the 400 it should be in Classic
UPDATE `creature_template` SET `DamageMultiplier` = 5 WHERE `entry` = 16698; -- 25 (classic/wotlk 1) now hits 300 to 400 on 0 armor

