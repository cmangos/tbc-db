-- The Prodigal Lich Returns(q.411)
-- summoned npc will 'face' player after q. completed
DELETE FROM dbscripts_on_quest_end WHERE id = 411;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(411, 1000, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'active'),
(411, 2000, 0, 15, 7762, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor - Cast 7762- Summon Gunther\'s Visage'), -- s.7673 befor... "Nether Gem"
(411, 7000, 0, 10, 5666, 23000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1768.58, 55.4891, -46.3198, 2.28248, 0, 0, 'Summon Visage'),
(411, 12000, 0, 0, 0, 0, 0, 5666, 20, 0, 1973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gunther says'), -- missing in tbc and wotlk
(411, 12000, 0, 1, 1, 0, 0, 5666, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- missing in tbc and wotlk
(411, 17000, 0, 0, 0, 0, 0, 0, 0, 0, 1974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor says'), -- missing in tbc and wotlk
(411, 17000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- missing in tbc and wotlk
(411, 21000, 0, 36, 0, 0, 0, 5666, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 23000, 0, 0, 0, 0, 0, 5666, 20, 0, 1975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gunther Say 3'), -- Gunther's Visage, not Gunther and not Visage...
(411, 23000, 0, 1, 2, 0, 0, 5666, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(411, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 1976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor Say'),
(411, 31000, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unactive');

