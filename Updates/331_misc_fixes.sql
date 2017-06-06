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

-- Time Keeper (1)
UPDATE creature_template SET FactionHorde=1718, FactionAlliance=1718 WHERE entry=20746;
-- Infinite Dragonflight
UPDATE creature_template SET FactionHorde=1720, FactionAlliance=1720 WHERE entry IN (17835,17838,17839,17879,17880,17881,17892,21818,21104,21697,21698,20740,20741,20744,22169,22170);

-- Karazhan Side Entrance Door
UPDATE gameobject_template SET flags=2 WHERE entry=184275;

-- Give HFP Marauding Crust Burster proper aura - serverside
UPDATE creature_template_addon SET auras='34038' WHERE entry IN(16857);

-- Kathelas
-- I have no idea why, but those quests require you to complete 10296 and 10297 (Black Morass questline in Caverns of Time), which is obviously wrong.
-- The quests shouldnt require anything except being level 55.
UPDATE quest_template SET PrevQuestId=0 WHERE entry=6804 OR entry=6805;


