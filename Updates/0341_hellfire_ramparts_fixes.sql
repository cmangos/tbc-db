-- watchkeeper gargolmar
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN(17306,18436);

-- vazruden
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(17307,18435);
-- done in script
UPDATE creature_template SET InhabitType=3 WHERE entry IN(17307,18435,17537,18434,17536,18432);

