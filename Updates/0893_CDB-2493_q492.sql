-- Improve quest end script for quest 492 (A New Plague)
-- Add missing text
DELETE FROM dbscripts_on_quest_end WHERE id=492 AND delay=1000;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(492, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 576, 0, 0, 0, 0, 0, 0, 0, 'Captured Mountainer says');

-- BCT - 576	I raise my brew and hope to be rid of the likes of you!  Cheers, you no good scoundrel, $N!
-- DELETE FROM dbscript_string WHERE entry=2000000010;
-- INSERT INTO dbscript_string VALUES
-- (2000000010, 'I raise my brew and hope to be rid of the likes of you! Cheers, you no good scoundrel, $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

