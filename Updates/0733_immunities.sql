UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN(19494); -- arkelos fear immune
DELETE FROM creature_immunities WHERE entry IN(19513) AND Type=4 AND Value=3; -- Mutate Fear-Shrieker - devouring plague immunity
INSERT INTO creature_immunities(Entry, SetId, Type, Value) VALUES
(19513, 0,  4, 3);

DELETE FROM creature_immunities WHERE entry IN(19735) AND Type=4 AND Value=3; -- Tempest-Forge Destroyer - devouring plague immunity
INSERT INTO creature_immunities(Entry, SetId, Type, Value) VALUES
(19735, 0,  1, 53);

DELETE FROM creature_immunities WHERE entry IN(19219) AND Type=4 AND Value=3; -- Mechano-Lord Capacitus - devouring plague immunity - leech
INSERT INTO creature_immunities(Entry, SetId, Type, Value) VALUES
(19219, 0,  1, 53);

DELETE FROM creature_immunities WHERE entry IN(19166) AND Type=4 AND Value=3; -- Tempest-Forge Patroller - devouring plague immunity - leech
INSERT INTO creature_immunities(Entry, SetId, Type, Value) VALUES
(19166, 0,  1, 53);
