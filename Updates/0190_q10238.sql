-- Add RP for How to Serve Goblins q.10238

-- 30s respawn
UPDATE creature SET spawntimesecsmin=30, spawntimesecsmax=30 WHERE id IN(19763,19764,19766);

-- Add texts
DELETE FROM `dbscript_string` WHERE entry IN (2000001618,2000001619,2000001620);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001618, 'Thank goodness you got here, it was almost dinner time!', 0, 0, 0, 0, 'Manni 19763', 17407),
(2000001619, 'I thought I was a goner for sure.', 0, 0, 0, 0, 'Moh 19764', 17409),
(2000001620, 'I don''t know which is worse, getting eaten by fel orcs or working for that slave master Razelcraz! Oh well, thanks anyways!', 0, 0, 0, 0, 'Jakk 19766', 17410);

-- Add scripts
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN(183936,183940,183941);
INSERT INTO `dbscripts_on_go_template_use` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(183936,0,3,0,0,0,0,0,0,0,19763,5,0,'Manni - Move',72.34592,3208.605,32.25425,100),
(183936,2921,36,0,0,0,0,0,0,0,19763,10,3,'Manni - Face Player',0,0,0,0),
(183936,2922,1,3,0,0,0,0,0,0,19763,10,0,'Manni - OneShotWave',0,0,0,0),
(183936,3063,0,0,0,0,2000001618,0,0,0,19763,10,0,'Manni - Thank goodness you got here, it was almost dinner time!',0,0,0,0),
(183936,10000,18,0,0,0,0,0,0,0,19763,10,0,'Manni - Despawn Self',0,0,0,0),

(183940,0,3,0,0,0,0,0,0,0,19764,5,0,'Moh - Move',-71.25401,3135.672,-4.512344,100),
(183940,3092,36,0,0,0,0,0,0,0,19764,10,3,'Moh - Face Player',0,0,0,0),
(183940,3093,1,4,0,0,0,0,0,0,19764,10,0,'Moh - OneShotCheer',0,0,0,0),
(183940,3312,0,0,0,0,2000001619,0,0,0,19764,10,0,'Moh - I thought I was a goner for sure.',0,0,0,0),
(183940,10000,18,0,0,0,0,0,0,0,19764,10,0,'Moh - Despawn Self',0,0,0,0),

(183941,0,3,0,0,0,0,0,0,0,19766,5,0,'Jakk - Move',-119.4339,3088.494,3.272493,100),
(183941,2733,36,0,0,0,0,0,0,0,19766,10,3,'Jakk - Face Player',0,0,0,0),
(183941,2734,1,66,0,0,0,0,0,0,19766,10,0,'Jakk - OneShotSalute',0,0,0,0),
(183941,2953,0,0,0,0,2000001620,0,0,0,19766,10,0,'Jakk - I don''t know which is worse, getting eaten by fel orcs or working for that slave master Razelcraz! Oh well, thanks anyways!',0,0,0,0),
(183941,10000,18,0,0,0,0,0,0,0,19766,10,0,'Jakk - Despawn Self',0,0,0,0);

