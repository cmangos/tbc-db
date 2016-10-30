-- ================================
-- Console Error Fixes and Cleanups - From Backports and Ect
-- ================================
DELETE FROM creature_movement WHERE id IN (24186);

UPDATE creature_loot_template SET item=50008, mincountOrRef=-50008 WHERE item=24036 AND mincountOrRef=-24036;
UPDATE creature_loot_template SET item=50217, mincountOrRef=-50217 WHERE item=24041 AND mincountOrRef=-24041;
UPDATE creature_loot_template SET item=50218, mincountOrRef=-50218 WHERE item=24043 AND mincountOrRef=-24043;
UPDATE creature_loot_template SET item=50219, mincountOrRef=-50219 WHERE item=24045 AND mincountOrRef=-24045;


