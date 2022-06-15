-- Use Bauble spell event at Quest 'Trial of the Lake'
DELETE FROM `dbscripts_on_event` WHERE id = '6206';
INSERT INTO `dbscripts_on_event` (`id`, `priority`, `command`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `comments`) VALUES 
('6206', '0', '0', '11799', '30', '3', '7611', 'Spell Use Bauble - Tajarri - Say Text');