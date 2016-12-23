-- q.9541 'Totem of Yor'
DELETE FROM dbscripts_on_quest_start WHERE id = 9541;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9541,1,10,17392,60000,0,0,0,0,0,0,0,-3875.88,-13125.3,6.75334,1.60905,'summon Stillpine Ancestor Tikti'),
(9541,2,21,1,0,17392,30,7,0,0,0,0,0,0,0,0,'active'),
(9541,2,36,0,0,17392,50,0,0,0,0,0,0,0,0,0,'face player'),
(9541,2,0,0,0,17392,50,0,2000000672,0,0,0,0,0,0,0,''),
(9541,3,3,0,0,17392,50,7,0,0,0,0,-3885.67,-13096.5,3.56423,1.65068,''),
(9541,15,0,0,0,17392,50,0,2000000673,0,0,0,0,0,0,0,''),
(9541,20,15,30430,0,17392,100,0,0,0,0,0,0,0,0,0,''),
(9541,22,0,0,0,17392,50,0,2000000674,0,0,0,0,0,0,0,''),
(9541,24,15,30431,0,17392,100,7,0,0,0,0,0,0,0,0,''),
(9541,26,3,0,0,17392,100,7,0,0,0,0,-3913.36,-13055.2,-4.82595,2.28533,''),
(9541,40,3,0,0,17392,100,7,0,0,0,0,-3951.4,-13033.9,-8.45508,2.61913,''),
(9541,48,21,0,0,17392,100,7,0,0,0,0,0,0,0,0,'unactive'),
(9541,49,18,0,0,17392,100,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET SrcSpell = 0, StartScript = 9541 WHERE entry = 9541;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000672 AND 2000000674;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000672,'%s asks that you follow him.',0,2,0,0,NULL),
(2000000673,'[Furbolg] Far you mixik tak come. Gaze upon the kitch\'kal river. Follow. Ilog to Yor.',0,0,0,0,NULL),
(2000000674,'[Furbolg] Go... Search yitix\'kil bottom river. South!',0,0,0,0,NULL);

-- Stillpine Ancestor Tikti
DELETE FROM creature WHERE guid = 86513;
DELETE FROM creature_addon WHERE guid = 86513;
UPDATE creature_template SET MovementType = 0 WHERE Entry = 17392;


