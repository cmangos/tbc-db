-- Add some generic scripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 7 AND 16;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `command`, `datalong`, `comments`) VALUES
('7', '32', '1', 'GENERIC - Pause Waypoints'),
('8', '32', '0', 'GENERIC - Resume Waypoints'),
('9', '21', '1', 'GENERIC - Set Active Object On'),
('10', '21', '0', 'GENERIC - Set Active Object Off'),
('11', '35', '5', 'GENERIC - Send AI Event 5 (A) to Self'),
('12', '35', '6', 'GENERIC - Send AI Event 6 (B) to Self'),
('13', '35', '8', 'GENERIC - Send AI Event 8 (C) to Self'),
('14', '35', '9', 'GENERIC - Send AI Event 9 (D) to Self'),
('15', '35', '10', 'GENERIC - Send AI Event 10 (E) to Self'),
('16', '35', '11', 'GENERIC - Send AI Event 11 (F) to Self');


-- Update comment to make it clear that it's generic and not specific to Stratholme Gargoyles
UPDATE dbscripts_on_creature_movement SET comments='GENERIC - Run Mode On' WHERE id=5;