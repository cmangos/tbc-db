-- ================================================
-- Fix Movement Speed of Ranging Flames in Mechanar - 4.3.4 Sniff Data
-- ================================================
UPDATE creature_template SET SpeedWalk=1 WHERE entry=20481;
UPDATE creature_template SET SpeedWalk=1 WHERE entry=21538;

