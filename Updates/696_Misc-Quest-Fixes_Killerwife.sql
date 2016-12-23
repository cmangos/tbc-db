-- ===================
-- Fixes by Killerwife
-- ===================
-- Miscellaneous

DELETE FROM gossip_menu WHERE entry=20281;
INSERT INTO gossip_menu VALUES(20281,10039,0,602); -- menu with condition for npc drijya
DELETE FROM conditions WHERE condition_entry=602;
INSERT INTO conditions VALUES(602,9,10310,0); -- only show during quest


DELETE FROM npc_gossip where npc_guid=72042; -- remove gossip from http://www.wowhead.com/npc=20281/drijya so we can use conditioned



