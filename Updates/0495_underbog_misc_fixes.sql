-- ---------------------------
-- Movement Corrections
-- ---------------------------
-- Underbat
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 9/7 WHERE entry IN (17724, 20185);

-- Underbog Lurker
UPDATE creature_template SET SpeedWalk = 2/2.5, SpeedRun = 8/7 WHERE entry IN (17725, 20188);

-- Underbog Shambler
UPDATE creature_template SET SpeedWalk = 2/2.5, SpeedRun = 8/7 WHERE entry IN (17871, 20190);

-- Bog Giant
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17723, 20164);

-- -----------
-- SpellLists
-- -----------

