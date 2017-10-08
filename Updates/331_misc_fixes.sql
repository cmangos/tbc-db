-- give proper unitflags and regenerate
UPDATE creature_template SET UnitFlags=33554688,RegenerateStats=3 WHERE entry IN(20899);


