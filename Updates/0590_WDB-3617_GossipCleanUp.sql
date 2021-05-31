-- Removed all gossips that have correct id set in creature_template
-- CDB & TDB can use this... for check
-- SELECT * FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id IN (SELECT Entry FROM creature_template WHERE GossipMenuId >0));
DELETE FROM npc_gossip WHERE npc_guid IN (
-- guid, text, gossipmenu, gossiptext
1796, -- 5422 4264	5422
4680, -- 5425 4265	5425
38066, -- 5434 4268	5434
46218, -- 5437 4269	5437
51258, -- 2575 1922	2575
55371, -- 8239 6953	8239
81093, -- 5257 4172	5257
86167, -- 68 5181	6194 - entry 13436 "68" is blank template
86233, -- 6194 5181	6194
95066, -- 12539 26301	25329 - entry 26307 - I can both stable and give new pets.
95124, -- 12539
95227, -- 12539
95287, -- 12539
95335, -- 12539
95415, -- 12539
95490, -- 12539
95530, -- 12539
95609, -- 12539
95681, -- 12539
95745, -- 12539
95824, -- 12539
95886, -- 12539
95928, -- 12539
96000, -- 12539
96077, -- 12539
96121, -- 12539
96197, -- 12539
96238, -- 12539
96334, -- 12539
96390, -- 12539
96438, -- 12539
96517, -- 12539
96583); -- 12539

