-- The Missing Diplomat questline fixes

-- quest credit now granted through different trigger, 302 will be used to summon Tervosh at Sentry Point in SD2
DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (302,1667);
INSERT INTO `areatrigger_involvedrelation` VALUES (1667,1265);

DELETE FROM dbscripts_on_quest_start WHERE id=1447; -- thugs now summoned in SD2
UPDATE quest_template SET StartScript=0 WHERE entry=1447;

-- link Old Town Thug (4969) summoned guards to Dashel Stonefist (4961)
DELETE FROM creature_linking_template WHERE entry IN (4961,4969) OR master_entry IN (4961,4969);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(4969,0,4961,4097,0);

-- Tapoke "Slim" Jahn (4962) - reduce respawn timer so quest may be repeated faster
UPDATE creature SET spawntimesecsmin=30, spawntimesecsmax=30 WHERE guid=10873;


