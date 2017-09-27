-- q.3701 'The Smoldering Ruins of Thaurissan' - REDONE
DELETE FROM dbscripts_on_go_use WHERE id IN (SELECT guid FROM gameobject WHERE id = 153556);

DELETE FROM dbscript_string WHERE entry BETWEEN 2000000544 AND 2000000551;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001424 AND 2000001431;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000544, 'He cannot be defeated.', 0, 4, 0, 0, NULL),
(2000000545, 'The relic burns to nothing. The memories it held are now your own. This city was destroyed by a being not of this world.', 0, 2, 0, 0, NULL),
(2000000546, 'Do not taint these ruins, mortal.', 0, 4, 0, 0, NULL),
(2000000547, 'You are engulfed in a blinding flash of light. A creature composed entirely of flame is the only thing you can remember seeing.', 0, 2, 0, 0, NULL),
(2000000548, 'Leave this place.', 0, 4, 0, 0, NULL),
(2000000549, 'The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.', 0, 2, 0, 0, NULL),
(2000000550, 'Help us, outsider.', 0, 4, 0, 0, NULL),
(2000000551, 'The relic crumbles to dust. A vision of eight Dark Iron dwarves performing some sort of ritual fills your head.', 0, 2, 0, 0, NULL),
(2000001424, 'You will perish here.', 0, 4, 0, 0, NULL),
(2000001425, 'Your mind fills with visions of chaos and destruction.', 0, 2, 0, 0, NULL),
(2000001426, 'Leave this place.', 0, 4, 0, 0, NULL),
(2000001427, 'The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.', 0, 2, 0, 0, NULL),
(2000001428, 'Defiler... you will be punished for this incursion.', 0, 4, 0, 0, NULL),
(2000001429, 'A symbol of flame radiates from the relic before it crumbles to the earth.', 0, 2, 0, 0, NULL),
(2000001430, 'Your existence is acknowledged.', 0, 4, 0, 0, NULL),
(2000001431, 'The relic turns to dust. Your head throbs with newfound wisdom. Something evil lurks in the heart of the mountain.', 0, 2, 0, 0, NULL);

DELETE FROM dbscripts_on_event WHERE id = 3361;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3361,0,10,8887,5000,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3361,1,0,1,0,0,8887,10,3,0,0,0,0,0,0,0,0,''),
(3361,3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

DELETE FROM dbscript_random_templates WHERE id in (1,2);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(1,0,2000000544,0,'8887 - Random Whisper'),
(1,0,2000000546,0,'8887 - Random Whisper'),
(1,0,2000000548,0,'8887 - Random Whisper'),
(1,0,2000000550,0,'8887 - Random Whisper'),
(1,0,2000001424,0,'8887 - Random Whisper'),
(1,0,2000001426,0,'8887 - Random Whisper'),
(1,0,2000001428,0,'8887 - Random Whisper'),
(1,0,2000001430,0,'8887 - Random Whisper'),
(2,0,2000000545,0,'8887 - Random Texts'),
(2,0,2000000547,0,'8887 - Random Texts'),
(2,0,2000000549,0,'8887 - Random Texts'),
(2,0,2000000551,0,'8887 - Random Texts'),
(2,0,2000001425,0,'8887 - Random Texts'),
(2,0,2000001427,0,'8887 - Random Texts'),
(2,0,2000001429,0,'8887 - Random Texts'),
(2,0,2000001431,0,'8887 - Random Texts');

