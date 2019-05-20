-- remove static spawns of Bogstrok Hatchling 20710 - they are only summoned by Bogstrok Clacker 20293
DELETE FROM creature WHERE id=20710;
DELETE FROM creature_linking_template WHERE entry=20710;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(20710, 530, 20293, 515, 7);


