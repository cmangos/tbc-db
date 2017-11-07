-- Fix UnitFlags for Eye of the Storm Emissary.
UPDATE creature_template SET UnitFlags=4352 WHERE entry IN(22013,22015);

