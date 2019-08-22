-- Resolve DBScript Diff for Maraudon
-- tbc-db
DELETE FROM `dbscript_string` WHERE `entry` IN (2000001035,2000001036,2000001037,2000001038,2000001039,2000001040,2000001041,2000001042);
-- wotlk-db
-- DELETE FROM `dbscript_string` WHERE `entry` IN (
-- 2000001108, -- 2000005646 "You wish to learn of the stone? Follow me."
-- 2000001109, -- 2000005647 "For so long I have drifted in my cursed form. You have freed me... Your hard work shall be repaid."
-- 2000001110, -- 2000005648 "Please do as I instruct you, $n."
-- 2000001111, -- 2000005649 "Read this tome I have placed before you, and speak the words aloud."
-- 2000001112, -- 2000005650 "%s begins to channel his energy, focusing on the stone."
-- 2000001113, -- 2000005651 "Together, the two parts shall become one, once again."
-- 2000001114, -- 2000005652 "Shal myrinan ishnu daldorah..."
-- 2000001115 --  2000005653 "My scepter will once again become whole!"
-- );

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000010170 AND 2000010177;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000010170, 'By your command!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL), -- classic-db 2000000170
(2000010171, 'Wait here, $N. Spybot will make Lescovar come out as soon as possible. Be ready! Attack only after you\'ve overheard their conversation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), -- 2000000171
(2000010172, 'Good day to you both. I would speak to Lord Lescovar.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), -- 2000000172
(2000010173, 'Of course. He awaits you in the library.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), -- 2000000173
(2000010174, 'Thank you. The Light be with you both.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), -- 2000000174
(2000010175, 'Milord, your guest has arrived. He awaits your presence.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), -- 2000000175
(2000010176, 'Ah, thank you kindly. I will leave you to the library while I tend to this small matter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), -- 2000000176
(2000010177, 'I shall use this time wisely, milord. Thank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, NULL); -- 2000000177

DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 434;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(434, 0, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_flag removed'),
(434, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.26784, ''),
(434, 3, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(434, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(434, 8, 0, 0, 0, 0, 8856, 15, 7, 2000010170, 0, 0, 0, 0, 0, 0, 0, 'force buddy to: say text'),
(434, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(434, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.251, ''),
(434, 10, 15, 7671, 0, 0, 8856, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'cast 7671 on buddy'),
(434, 11, 23, 7779, 0, 0, 8856, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'morph into 7779'),
(434, 11, 0, 0, 0, 0, 0, 0, 0, 2000010171, 0, 0, 0, 0, 0, 0, 0, ''),
(434, 15, 20, 2, 0, 0, 8856, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged to 2:waypoint'),
(434, 177, 7, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(434, 210, 3, 0, 0, 0, 1756, 10523, 23, 0, 0, 0, 0, 0, 0, 0, 0.711, ''),
(434, 210, 3, 0, 0, 0, 1756, 10524, 23, 0, 0, 0, 0, 0, 0, 0, 3.773, '');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (885601,885602);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(885601, 3, 0, 0, 0, 0, 0, 0, 0, 2000010172, 0, 0, 0, 0, 0, 0, 0, ''),
(885601, 5, 1, 16, 0, 0, 1756, 10523, 23, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(885601, 5, 1, 16, 0, 0, 1756, 10524, 23, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(885601, 8, 0, 0, 0, 0, 1756, 15, 7, 2000010173, 0, 0, 0, 0, 0, 0, 0, 'force buddy to: say text'),
(885601, 10, 0, 0, 0, 0, 0, 0, 0, 2000010174, 0, 0, 0, 0, 0, 0, 0, ''),

(885602, 1, 3, 0, 0, 0, 1754, 15, 7, 0, 0, 0, 0, 0, 0, 0, 3.84895, ''),
(885602, 3, 0, 0, 0, 0, 0, 0, 0, 2000010175, 0, 0, 0, 0, 0, 0, 0, ''),
(885602, 5, 0, 0, 0, 0, 1754, 15, 7, 2000010176, 0, 0, 0, 0, 0, 0, 0, 'force buddy to: say text'),
(885602, 7, 3, 0, 0, 0, 1754, 15, 7, 0, 0, 0, 0, 0, 0, 0, 2.596, ''),
(885602, 8, 20, 2, 0, 0, 1754, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'movement chenged to 2:waypoint'),
(885602, 9, 0, 0, 0, 0, 0, 0, 0, 2000010177, 0, 0, 0, 0, 0, 0, 0, '');

