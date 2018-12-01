-- Ethereal Jailor spawns from wotlk-db
DELETE FROM creature WHERE id = 23008;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(150223, 23008, 530, 1, 0, 0, 4285.64, 1900.79, 134.852, 0.863772, 900, 900, 10, 0, 13284, 0, 0, 1),
(150224, 23008, 530, 1, 0, 0, 4252.49, 1835.95, 143.106, 1.89422, 900, 900, 10, 0, 13284, 0, 0, 1),
(150225, 23008, 530, 1, 0, 0, 4221.32, 1766.66, 130.509, 2.36092, 900, 900, 10, 0, 13284, 0, 0, 1),
(150226, 23008, 530, 1, 0, 0, 4227.59, 1710.46, 121.084, 0.940916, 900, 900, 10, 0, 13284, 0, 0, 1),
(150227, 23008, 530, 1, 0, 0, 4196.29, 1697.37, 118.356, 2.06561, 900, 900, 10, 0, 13284, 0, 0, 1),
(150228, 23008, 530, 1, 0, 0, 4162.44, 1671.21, 116.169, 3.90751, 900, 900, 10, 0, 13284, 0, 0, 1),
(150229, 23008, 530, 1, 0, 0, 4131.4, 1661.49, 124.643, 5.86787, 900, 900, 10, 0, 13284, 0, 0, 1),
(150230, 23008, 530, 1, 0, 0, 4097.41, 1710.19, 137.963, 1.14762, 900, 900, 10, 0, 13284, 0, 0, 1),
(150231, 23008, 530, 1, 0, 0, 4057.55, 1698.7, 136.879, 5.65176, 900, 900, 10, 0, 13284, 0, 0, 1),
(150232, 23008, 530, 1, 0, 0, 3930.28, 1647.93, 126.538, 3.73852, 900, 900, 10, 0, 13284, 0, 0, 1),
(150233, 23008, 530, 1, 0, 0, 3894.74, 1649.2, 127.552, 3.73852, 900, 900, 10, 0, 13284, 0, 0, 1),
(150234, 23008, 530, 1, 0, 0, 3835.62, 1614.66, 127.926, 3.73852, 900, 900, 10, 0, 13284, 0, 0, 1),
(150235, 23008, 530, 1, 0, 0, 3805.98, 1573.23, 118.196, 3.73852, 900, 900, 10, 0, 13284, 0, 0, 1),
(150236, 23008, 530, 1, 0, 0, 3793.48, 1638.27, 135.625, 3.73852, 900, 900, 10, 0, 13284, 0, 0, 1),
(150237, 23008, 530, 1, 0, 0, 3770.45, 1704.41, 149.751, 3.54375, 900, 900, 10, 0, 13284, 0, 0, 1),
(150238, 23008, 530, 1, 0, 0, 3718.62, 1728.71, 138.644, 4.91662, 900, 900, 10, 0, 13284, 0, 0, 1),
(150239, 23008, 530, 1, 0, 0, 3685.04, 1772.15, 130.008, 3.36233, 900, 900, 10, 0, 13284, 0, 0, 1),
(150240, 23008, 530, 1, 0, 0, 3669.82, 1815.83, 126.059, 3.36233, 900, 900, 10, 0, 13284, 0, 0, 1),
(150241, 23008, 530, 1, 0, 0, 3573.03, 1861.43, 108.895, 3.36233, 900, 900, 10, 0, 13284, 0, 0, 1),
(150242, 23008, 530, 1, 0, 0, 3600.99, 1898.07, 111.36, 4.92998, 900, 900, 10, 0, 13284, 0, 0, 1),
(150243, 23008, 530, 1, 0, 0, 3647.45, 1918.92, 118.17, 1.7774, 900, 900, 10, 0, 13284, 0, 0, 1);

DELETE FROM pool_template WHERE entry = 25687;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25687, 2, 'Netherstorm - Ethereum Jailor');
DELETE FROM pool_creature_template WHERE pool_entry = 25687;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(23008, 25687, 0, 'Ethereum Jailor');

-- correct data for Ethereum Prisons
DELETE FROM creature_template_addon WHERE entry IN(20520);
UPDATE creature_template SET UnitFlags=UnitFlags|768 WHERE entry IN(20783,20790,20786,20788,20785,20784,20789,22810,22811,22812,22813,22814,22815);

DELETE FROM dbscripts_on_go_use WHERE id IN(47301);
UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10974);
UPDATE creature_template SET UnitFlags=33555200,ModelId1=15880 WHERE entry IN(20889);
UPDATE creature_template SET UnitFlags=768,FactionAlliance=14,FactionHorde=14 WHERE entry IN(22920);
UPDATE creature_template SET UnitFlags=0,NpcFlags=3,GossipMenuId=8614 WHERE entry IN(22919);
UPDATE creature_model_info SET bounding_radius=3,combat_reach=7.5 WHERE modelid IN(20863);
DELETE FROM creature WHERE id IN(22919);
DELETE FROM creature WHERE id IN(22921); -- alpha ball not confirmed to be spawned in sniff, normal group ball reused
DELETE FROM creature WHERE id IN(20889) AND guid IN(150245);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('150244', '22919', '530', '1', '0', '0', '3866.336', '5978.463', '291.9092', '3.926991', '300', '300', '0', '0', '6986', '0', '0', '0'), -- image of commander ameer
('150245', '20889', '530', '1', '0', '0', '3989.042', '6071.459', '266.4976', '0.3839724', '300', '300', '0', '0', '6986', '0', '0', '0'); -- stasis chamber alpha ball
UPDATE gameobject SET spawntimesecsmin=0,spawntimesecsmax=0 WHERE id IN(185512) OR id BETWEEN 184418 AND 184431;
DELETE FROM gossip_menu WHERE entry IN(8614) AND text_id IN(10791);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('8614', '10791', '0', '0');

UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10975);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10975);

UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10976);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10976);
UPDATE creature_loot_template SET ChanceOrQuestChance=24 WHERE item IN(31941);
UPDATE creature_template SET UnitFlags=768,FactionAlliance=90,FactionHorde=90,MinLevel=70,MaxLevel=70 WHERE entry IN(22825,22826,22827,22828,20888);
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE entry IN(22825,22826,22827,22828,20888) AND item IN(31569,32522,31577,31553,31561);

UPDATE creature_template SET UnitFlags=33555200,ModelId1=15880 WHERE entry IN(22927);
UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10977);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10977);

UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10981);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10981);
UPDATE creature_template SET UnitFlags=768,FactionAlliance=35,FactionHorde=35 WHERE entry IN(22930);

UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10982);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10982);

-- Yor <Void Hound of Shaffar> 22930
DELETE FROM `creature_loot_template` WHERE entry=22930;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22930, 28558, 100, 0, 1, 1, 206, 'Spirit Shard'),
(22930, 29434, 100, 0, 1, 1, 0, 'Badge of Justice'),
(22930, 40109, 100, 1, -40109, 1, 0, 'Auchindoun: Mana-Tombs (Boss Loot) - Yor (Heroic) - Rare Items'),
(22930, 40114, 70, 1, -40114, 1, 0, 'Auchindoun: Mana-Tombs (Boss Loot) - Yor (Heroic) - Rare and Epic Items'),
(22930, 40118, 30, 0, -40118, 1, 0, 'Auchindoun: Mana-Tombs Heroic Epic Gems');

DELETE FROM `reference_loot_template` WHERE entry IN (40109,40114);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40109, 31554, 0, 1, 1, 1, 0, 'Windchanneller\'s Tunic'),
(40109, 31562, 0, 1, 1, 1, 0, 'Skystalker\'s Tunic'),
(40109, 31570, 0, 1, 1, 1, 0, 'Mistshroud Tunic'),
(40109, 31578, 0, 1, 1, 1, 0, 'Slatesteel Breastplate'),
(40114, 31554, 19, 1, 1, 1, 0, 'Windchanneller\'s Tunic'),
(40114, 31562, 19, 1, 1, 1, 0, 'Skystalker\'s Tunic'),
(40114, 31570, 19, 1, 1, 1, 0, 'Mistshroud Tunic'),
(40114, 31578, 19, 1, 1, 1, 0, 'Slatesteel Breastplate'),
(40114, 31919, 4, 1, 1, 1, 0, 'Nexus-Prince\'s Ring of Balance'),
(40114, 31920, 4, 1, 1, 1, 0, 'Shaffar\'s Band of Brutality'),
(40114, 31921, 4, 1, 1, 1, 0, 'Yor\'s Collapsing Band'),
(40114, 31922, 4, 1, 1, 1, 0, 'Ring of Conflict Survival'),
(40114, 31923, 4, 1, 1, 1, 0, 'Band of the Crystalline Void'),
(40114, 31924, 4, 1, 1, 1, 0, 'Yor\'s Revenge');

