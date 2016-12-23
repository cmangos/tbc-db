-- ===================
-- Fixes by Killerwife
-- ===================
-- Exorcism of Colonel Jules fix backport
-- http://www.wowhead.com/quest=10935/the-exorcism-of-colonel-jules
-- it will not be 100% blizzlike but that will be core side
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry=10935;

-- quest 10935
-- despawn link on death (despawn colonel on dreanei death)
DELETE FROM creature_linking_template WHERE entry IN (22432);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(22432, 530, 22431, 16, 20);
-- movement and inhabit
UPDATE creature_template SET InhabitType = InhabitType|4 WHERE entry = 22507;
UPDATE creature_template SET MovementType = 0 WHERE entry IN (22505,22507,22506);
-- fix quest condition
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 10935;
-- draenei move
DELETE FROM creature_movement_template WHERE entry IN (22431);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime) VALUES
(22431,1, -707.411, 2750.491, 101.591, 0, 0),
(22431,2, -709.274, 2748.262, 101.591, 0, 0),
(22431,3, -710.760, 2747.854, 101.591, 0, 1000),
(22431,4, -709.274, 2748.262, 101.591, 0, 0),
(22431,5, -707.411, 2750.491, 101.591, 0, 0),
(22431,6, -707.210, 2754.110, 101.675, 0, 1000);

