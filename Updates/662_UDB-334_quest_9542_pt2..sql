-- q.9542 'Totem of Vark'
-- end part of quest
DELETE FROM dbscripts_on_quest_end WHERE id = 9542;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9542,1,14,30448,0,0,0,2,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9542 WHERE entry = 9542;


