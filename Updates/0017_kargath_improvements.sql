-- targets for new serverside
DELETE FROM spell_script_target WHERE entry IN(30738);
INSERT INTO spell_script_target VALUES
(30738,1,20709,0);
-- correct flags for kargath
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN(16808,20597);

