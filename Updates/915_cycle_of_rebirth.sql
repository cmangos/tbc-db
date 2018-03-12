-- q.6301 'Cycle of Rebirth' end script
UPDATE gameobject SET spawntimesecsmin=10, spawntimesecsmax=10 WHERE guid=33531;
UPDATE quest_template SET CompleteScript=6301 WHERE entry=6301;
DELETE FROM dbscripts_on_quest_end WHERE id=6301;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('6301', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Remove Quest Giver NpcFlags'),
('6301', '2', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Stand State'),
('6301', '3', '15', '32618', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Cast Cosmetic Nature Cast'),
('6301', '10', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Point'),
('6301', '13', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Kneel State'),
('6301', '13', '13', '0', '0', '0', '177927', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Activate gameobject'),
('6301', '16', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Add Quest Giver NpcFlags');


