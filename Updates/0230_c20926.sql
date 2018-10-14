-- Fix Stats for Invisible Stalker Coilfang Doors 20926 & Add basic implementation for - Emote on 184125/184126 go template use
UPDATE `creature_template` SET `ModelId2` = 11686, `UnitFlags` = 33554432, `ExtraFlags` = 0 WHERE `entry` = 20926;

DELETE FROM `dbscript_string` WHERE `entry` IN (2000004999,2000005000);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000004999, 'You hear a faint echo....', 0, 2, 0, 0, NULL),
(2000005000, 'You hear a loud rumble of metal grinding on stone...', 0, 2, 0, 0, NULL);

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN (184125,184126);
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(184125, 0, 0, 0, 0, 0, 0, 0, 0, 2000004999, 0, 0, 0, 0, 0, 0, 0, 'Invisible Stalker Coilfang Doors 20926 - Emote on 184125 go template use'),
(184126, 0, 0, 0, 0, 0, 0, 0, 0, 2000004999, 0, 0, 0, 0, 0, 0, 0, 'Invisible Stalker Coilfang Doors 20926 - Emote on 184126 go template use'),
(184126, 0, 0, 0, 0, 0, 0, 0, 0, 2000005000, 0, 0, 0, 0, 0, 0, 0, 'Invisible Stalker Coilfang Doors 20926 - Emote on 184126 go template use'); -- should be conditioned to whichever go is activated last

