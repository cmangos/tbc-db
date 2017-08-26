-- Ring of Blood - Update

-- Correct temp faction for Mogor (18069)
UPDATE dbscripts_on_quest_start SET datalong=14 WHERE id=9977 AND command=22;

-- Murkblood Twins should aggro together
DELETE FROM creature_linking_template WHERE entry=18399;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(18399,530,18399,3,0);

