-- Deathbringer Jovaan
-- players shouldnt be able to attack him
UPDATE creature_template SET UnitFlags=UnitFlags|2 WHERE entry = 21633;


