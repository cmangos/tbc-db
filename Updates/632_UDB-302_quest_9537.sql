-- q.9537 'Show Gnomercy'
DELETE FROM dbscripts_on_gossip WHERE id = 7426;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7426,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),
(7426,3,0,2,0,0,0,0,2000000305,0,0,0,0,0,0,0,'text emote'),
(7426,5,0,0,7,0,0,0,2000000306,0,0,0,0,0,0,0,'say 1'),
(7426,11,0,0,7,0,0,0,2000000307,0,0,0,0,0,0,0,'say 2'),
(7426,13,36,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),
(7426,14,0,0,7,0,0,0,2000000308,0,0,0,0,0,0,0,'say 3'),
(7426,17,22,14,1,0,0,0,0,0,0,0,0,0,0,0,'change faction'),
(7426,17,0,0,7,0,0,0,2000000309,0,0,0,0,0,0,0,'say 4'),
(7426,18,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'start attack');
UPDATE db_script_string SET emote = 11 WHERE entry = 2000000305;
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000000306,2000000307,2000000308);
UPDATE db_script_string SET emote = 1 WHERE entry = 2000000306;


