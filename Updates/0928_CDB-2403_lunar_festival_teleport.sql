-- classic-db
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 180867;
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(180867, 0, 15, 26450, 0, 0, 15905, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Darnassus'), -- Holiday - Lunar Teleport: Darnassus at Darnassus Reveler
(180867, 0, 15, 26452, 0, 0, 15906, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Ironforge'), -- Holiday - Lunar Teleport: Ironforge at Ironforge Reveler
(180867, 0, 15, 26448, 0, 0, 15892, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Moonglade - Alliance'), -- Holiday - Teleport: Moonglade at Lunar Festival Emissary [Entry 15892]
(180867, 0, 15, 26448, 0, 0, 15891, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Moonglade - Horde'), -- Holiday - Teleport: Moonglade at Lunar Festival Herald [Entry 15891]
(180867, 0, 15, 26453, 0, 0, 15908, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Orgrimmar'), -- Holiday - Lunar Teleport: Orgrimmar at Orgrimmar Reveler
(180867, 0, 15, 26454, 0, 0, 15694, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Storwimnd'), -- Holiday - Lunar Teleport: Stormwind at Stormwind Reveler
(180867, 0, 15, 26455, 0, 0, 15719, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Thunderbluff'), -- Holiday - Lunar Teleport: Thunderbluff at Thunder Bluff Reveler
(180867, 0, 15, 26456, 0, 0, 15907, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Undercity'); -- Holiday - Lunar Teleport: Undercity at Undercity Reveler

-- Fix Lunar Festival Moonglade Teleport in Thunder Bluff: range was too small to target trigger
UPDATE dbscripts_on_go_template_use SET search_radius=10 WHERE id=180867;

