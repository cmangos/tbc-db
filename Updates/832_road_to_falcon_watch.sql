-- missing dbscript string
DELETE FROM dbscript_string WHERE entry=2000000360;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`) VALUES
('2000000360', 'Another pilgrim has arrived! Bring water quickly, or we may lose her!', '0', '0', '1', '0');

-- DBscript, open the gate
DELETE FROM dbscripts_on_quest_start WHERE id=9375;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(9375, 5, 11, 22149, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Road to Falconwatch - open cage');

UPDATE `quest_template` SET `StartScript`='9375' WHERE `entry`='9375';

-- Relay DBscript events for Taleris interaction at the end
-- Invoked in SD2
DELETE FROM dbscripts_on_relay WHERE id=10028;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(10028, 0, 28, 8, 0, 0, 17015, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Taleris - kneel'),
(10028, 3, 0, 0, 0, 0, 17015, 2, 4, 2000000360, 0, 0, 0, 0, 0, 0, 0, 'Taleris - say'),
(10028, 10, 28, 0, 0, 0, 17015, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Taleris - stand up');

