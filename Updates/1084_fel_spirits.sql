-- moved to core
DELETE FROM dbscripts_on_spell WHERE Id IN(39206);
UPDATE creature_template SET Faction=1662, UnitFlags=33024, MovementType=0 WHERE entry IN(22454);

