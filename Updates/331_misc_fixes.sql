-- give proper unitflags and regenerate
UPDATE creature_template SET UnitFlags=33554688,RegenerateStats=3 WHERE entry IN(20899);

-- https://jira.vengeancewow.com/browse/TBC-135
-- Torek's Assault
-- quest should possibly be ported from SD2 to dbscripts (npc_torek)
DELETE FROM creature_linking WHERE guid IN (32378,32380,32379);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(32378, 32373, 8192+512+128+2+1),
(32379, 32373, 8192+512+128+2+1),
(32380, 32373, 8192+512+128+2+1);

