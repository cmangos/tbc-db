-- should not regen hp
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN(25653);

