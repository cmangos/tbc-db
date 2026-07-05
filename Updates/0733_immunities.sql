UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN(19494); -- arkelos fear immune
DELETE FROM creature_immunities WHERE entry IN(19513) AND Type=4 AND Value=3; -- Mutate Fear-Shrieker - devouring plague immunity
INSERT INTO creature_immunities(Entry, SetId, Type, Value) VALUES
(19513, 1,  4, 3);

