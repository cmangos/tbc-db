
-- Stratholme: fix faction of Thuzadin Shadowcaster/Acolyte/Necromancer.
-- Data coming from 3.0.3, build 9183.
UPDATE creature_template SET Faction = 21 WHERE Entry IN (10398, 10399, 10400);
