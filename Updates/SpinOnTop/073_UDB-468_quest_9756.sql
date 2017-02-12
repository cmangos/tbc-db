-- q.9756 'What We Don't Know...'
-- gossip corrected
DELETE FROM dbscripts_on_gossip WHERE id = 7533;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7533,0,8,17974,1,0,0,0,0,0,0,0,0,0,0,0,'killcredit for quest 9756'),
(7533,0,0,0,0,0,0,0,2000000276,0,0,0,0,0,0,0,'');
-- emote added into text
UPDATE db_script_string SET emote = 5 WHERE entry = 2000000276;
