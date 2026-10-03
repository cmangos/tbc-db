-- Two Tin Vein spawn-pool placeholder spots are placed far below the terrain,
-- so the node shows on the minimap but can never be seen or gathered.
-- Correct position_z to the terrain height at the spawn location:
--   guid 146676 (The Barrens, Field of Giants):  z 39.94  -> 91.71
--   guid 147133 (Stonetalon, Windshear Crag):    z -48.80 -> 83.36
-- Heights computed from the grid heightmap.
-- ref https://github.com/cmangos/issues/issues/4002
UPDATE `gameobject` SET `position_z` = 91.71  WHERE `guid` = 146676;
UPDATE `gameobject` SET `position_z` = 83.36  WHERE `guid` = 147133;
