-- SWP updates
DELETE FROM creature_linking_template WHERE entry IN (25598,25603);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25598, 580, 25588, 4096, 0),
(25603, 580, 25588, 4112, 0);
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, MinLevel=72, MaxLevel=72, Expansion=0, UnitFlags=UnitFlags|33555200, MinLevelHealth=52, MaxLevelHealth=52 WHERE entry=25603;


