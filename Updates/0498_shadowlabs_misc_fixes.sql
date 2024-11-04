-- ---------------------------
-- Movement Corrections
-- ---------------------------

-- Cabal Acolyte
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry IN (18633, 20638);
-- Cabal Deathsworn
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry IN (18635, 20641);

-- -----------
-- SpellLists
-- -----------
