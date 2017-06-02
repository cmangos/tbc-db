-- Add some generic scripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(7,8,9,10);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `command`, `datalong`, `comments`) VALUES
('7', '32', '1', 'GENERIC - Pause Waypoints'),
('8', '32', '0', 'GENERIC - Resume Waypoints'),
('9', '21', '1', 'GENERIC - Set Active Object On'),
('10', '21', '0', 'GENERIC - Set Active Object Off');

-- Update comment to make it clear that it's generic and not specific to Stratholme Gargoyles
UPDATE dbscripts_on_creature_movement SET comments='GENERIC - Run Mode On' WHERE id=5;