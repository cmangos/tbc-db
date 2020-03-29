-- has core component
DELETE FROM dbscripts_on_quest_start WHERE id IN(9962,9970,9972,9967,9977,9973) AND command=29 AND datalong=3;
DELETE FROM gossip_menu WHERE entry IN(7700);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('7700', '9395', '0', '0');
UPDATE creature_template SET MovementType=0 WHERE entry IN(18398,18399,18400,18401,18402,18069);


