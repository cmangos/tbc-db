-- Sentinel Selarin
-- script updated and correct ids for texts used.
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 369401 AND 369403; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(369401,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sentinel Selarin active'),
(369401,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(369401,1,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(369402,3,0,0,0,0,0,0,2000000260,0,0,0,0,0,0,0,''),
(369402,7,31,3693,30,0,0,0,0,0,0,0,0,0,0,0,''),
(369402,8,0,0,0,3693,30,7,2000000797,0,0,0,0,0,0,0,''),
(369402,13,0,0,0,0,0,0,2000000798,0,0,0,0,0,0,0,''),
(369402,15,3,0,0,0,0,0,0,0,0,0,0,0,0,0.430173,''),
(369402,16,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags added'),
(369402,18,0,0,0,0,0,0,2000000799,0,0,0,0,0,0,0,''),
(369403,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sentinel Selarin unactive'),
(369403,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
DELETE FROM db_script_string WHERE entry IN (2000000797,2000000798,2000000799);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000797,'Hello, Selarin. I\'m afraid I cannot help you at the moment, but perhaps some of the adventurers here in Auberdine can...',0,0,0,1,NULL),
(2000000798,'Thank you, Terenthis. I shall remain here for as long as I can.',0,0,0,1,NULL),
(2000000799,'Hopefully I can send a worthy few to help Ashenvale and the Sentinels.',0,0,0,1,NULL);


