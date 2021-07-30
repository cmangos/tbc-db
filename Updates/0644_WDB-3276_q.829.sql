-- q.829 'Neeru Fireblade'
-- .go c id 3216
DELETE FROM dbscripts_on_quest_end WHERE id = 829;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(829, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2000003330, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 13:42:06.750
(829, 3000, 0, 0, 897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- 13:42:09.594

UPDATE quest_template SET CompleteScript = 829 WHERE entry = 829;

DELETE FROM dbscript_string WHERE entry BETWEEN 2000003330 AND 2000003334;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment, broadcast_text_id) VALUES
(2000003330,'%s inspects the Searing Collar...',0,2,0,0,NULL, 990),
(2000003331,'Interesting, very interesting.  You found this in Durotar, $N?',0,0,1,0,NULL, 991),
(2000003332,'The collar is indeed infused with demonic power, $N.  This bodes ill for our people.',0,0,1,0,NULL, 992),
(2000003333,'Hm...it is good that you brought this to me, $N.',0,0,1,0,NULL, 993),
(2000003334,'A dangerous device this is, $N.  I am glad you brought it to my attention.',0,0,1,0,NULL, 994);

DELETE FROM `dbscript_random_templates` WHERE `id` = 897;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(897, 0, 2000003331, 0, 'Neeru Fireblade 3216 - Random Text q.829'),
(897, 0, 2000003332, 0, 'Neeru Fireblade 3216 - Random Text q.829'),
(897, 0, 2000003333, 0, 'Neeru Fireblade 3216 - Random Text q.829'),
(897, 0, 2000003334, 0, 'Neeru Fireblade 3216 - Random Text q.829');

