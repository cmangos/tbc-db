-- q.3701 'The Smoldering Ruins of Thaurissan' - REDONE
-- DELETE FROM dbscripts_on_event WHERE id = 3361;
-- INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- (3361,0,10,8887,5000,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- (3361,1,0,1001,0,0,8887,10,3,0,0,0,0,0,0,0,0,'');

-- texts corrected
-- broadcast_text used
DELETE FROM `dbscript_string` WHERE `entry` IN (2000000544,2000000546,2000000548,2000000550,2000001424,2000001428,2000001430);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000000544 AND 2000000551; -- 2000000551 not req. anymore
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES
(2000000548, 'He cannot be defeated. <The relic burns to nothing. The memories it held are now your own. This city was destroyed by a being not of this world.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 4598, NULL),
(2000000546, 'Do not taint these ruins, mortal. <You are engulfed in a blinding flash of light. A creature composed entirely of flame is the only thing you can remember seeing.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 4596, NULL),
(2000000544, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 4594, NULL),
(2000000547, 'Help us, outsider. <The relic crumbles to dust. A vision of eight Dark Iron dwarves performing some sort of ritual fills your head.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 4597, NULL),
(2000000545, 'You will perish here. <Your mind fills with visions of chaos and destruction.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 4595, NULL),
(2000000550, 'Defiler... you will be punished for this incursion. <A symbol of flame radiates from the relic before it crumbles to the earth.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 4600, NULL),
(2000000549, 'Your existence is acknowledged. <The relic turns to dust. Your head throbs with newfound wisdom. Something evil lurks in the heart of the mountain.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 4599, NULL);

-- random templates also corrected
DELETE FROM dbscript_random_templates WHERE id IN (1001,1002); -- 1002 not needed anymore, already deleted
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(1001,0,2000000544,0,'8887 - Random Whisper'),
(1001,0,2000000545,0,'8887 - Random Whisper'),
(1001,0,2000000546,0,'8887 - Random Whisper'),
(1001,0,2000000547,0,'8887 - Random Whisper'),
(1001,0,2000000548,0,'8887 - Random Whisper'),
(1001,0,2000000549,0,'8887 - Random Whisper'),
(1001,0,2000000550,0,'8887 - Random Whisper');

