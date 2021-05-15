-- Part of Ley-Keeper Caidanis 15405 EAI
DELETE FROM dbscripts_on_relay WHERE id = 19989;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19989,0,31,15420,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ley-Keeper Caidanis 15405 EAI: search for 15420'),
(19989,10,0,0,0,0,15420,35,7,2000020931,0,0,0,0,0,0,0,'Part of Ley-Keeper Caidanis 15405 EAI: buddy say'),
(19989,5000,0,0,0,0,0,0,0x04,2000020932,0,0,0,0,0,0,0,'Part of Ley-Keeper Caidanis 15405 EAI: say');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000020931 AND 2000020932;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment, broadcast_text_id) VALUES
(2000020931,'These arcane sanctums of yours are quite... interesting Mr. Caidanis.  I appreciate the information you have given me today.',0,0,0,1,NULL, 11717),
(2000020932,'It\'s been a pleasure, Mr. Anvilward.  I must say your enthusiastic interest in our operations is most... unexpected.',0,0,0,1,NULL, 11718);

