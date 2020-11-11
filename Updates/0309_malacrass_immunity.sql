-- his disarmability is dynamically governed by script
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~4 WHERE entry IN(24239);


