-- Sergeant Bly 7604 - Zul'Farrak
-- https://github.com/cmangos/issues/issues/2101#issuecomment-580074265
-- gossip corrected
DELETE FROM conditions WHERE condition_entry BETWEEN 1599 AND 1600; -- 2000 - 2003 taken make it so classic can use this if wanted
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- wotlk 875, 33, 8, 0, 'Source of Condition's Last Waypoint == 8' -> 457 tbc			384 classic
-- (2000,9,2768,0), -- -> "Quest ID 2768 Taken" 484 tbc									408 classic
(1599,-3,484,0), -- NOT 2000 -> NOT 484 tbc												NOT 408 classic
-- (2002,-1,484,457), -- 2000 AND 875 -> 485 tbc										409 classic
(1600,-1,1599,457); -- (Not 2000) AND 875 -> (Not 484) AND 457 tbc						(Not 408) AND 384 classic
-- Both options shoudlnt show up together
-- this option should be available only when q.2768 'Divino-matic Rod' is active
UPDATE gossip_menu_option SET condition_id = 485 WHERE menu_id = 941 AND id = 0; --		409 classic
-- this option should be available only when q.2768 'Divino-matic Rod' is not active
UPDATE gossip_menu_option SET condition_id = 1600 WHERE menu_id = 941 AND id = 1;

-- tbc
-- 485	-1	484	457	(Quest ID 2768 Taken AND Source of Condition's Last Waypoint == 8)	409 classic
-- 457	33	8	0	Source of Condition's Last Waypoint == 8 -- 						384 classic
