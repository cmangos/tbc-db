-- =======================
-- Hellfire Ramparts Fixes
-- =======================

-- Shattered Hand Warhound double spawns before the final boss.
DELETE FROM creature WHERE guid=84444;
DELETE FROM creature WHERE guid=99332;
DELETE FROM creature WHERE guid=99300;
DELETE FROM creature WHERE guid=99299;
DELETE FROM creature WHERE guid=99314;
DELETE FROM creature WHERE guid=99315;


-- The two mobs before the final boss in ramps should be linked
-- http://jira.vengeancewow.com/projects/TBC/issues/TBC-806
DELETE FROM creature_linking WHERE guid=63012;
INSERT INTO creature_linking VALUES ('63012', '63011', '3');

DELETE FROM creature_linking WHERE guid=62083;
INSERT INTO creature_linking VALUES ('62088', '62083', '647');
INSERT INTO creature_linking VALUES ('62089', '62083', '647');
