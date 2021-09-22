-- Align Script with wotlk-db - https://github.com/cmangos/tbc-db/commit/a6299f1bee56d22c20ced7c0df13db229980a488#r48522668
-- (Format = creature.id * 100 + 1) = 21447 * 100 + 1 = 2144701
UPDATE dbscripts_on_creature_movement SET id=2144701 WHERE id=7516501;
UPDATE creature_movement SET script_id=2144701 WHERE script_id=7516501 AND id=75165;


