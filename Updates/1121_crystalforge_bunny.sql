-- fix crystalforge bunny
UPDATE creature_template SET UnitFlags=33555200 WHERE entry IN(23512);
-- ethereal ring bunny forge
UPDATE creature_template SET UnitFlags=33554688 WHERE entry IN(23445);

