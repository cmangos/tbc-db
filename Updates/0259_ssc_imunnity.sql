UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~65536 WHERE entry IN(21220);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~131072 WHERE entry IN(21863);

