/*
DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1829702, command 26 has buddy 18180 not found in range 10 of searcher Creature (Entry: 18297 Guid: 9001699) (data-flags 3), skipping.
DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1829702, command 26 has buddy 18200 not found in range 10 of searcher Creature (Entry: 18297 Guid: 9001699) (data-flags 3), skipping.
DB-SCRIPTS: Process table `dbscripts_on_creature_death` id 18297, command 32 has buddy 18294 not found in range 100 of searcher Creature (Entry: 18297 Guid: 9001699) (data-flags 7), skipping.
*/
-- Gankly Rottenfist RP Event - update
-- this part is not needed - target is aggroed by faction change & killed by 1 shoot
DELETE FROM dbscripts_on_creature_movement WHERE id = 1829702 AND command = 26; -- attack commands
-- 1829702	21000	0	26	0	0	0	18180	10	3	0	0	0	0	0	0	0	0	0	0	0	Hemet Nesingwary - Start Attack on Gankly Rottenfist
-- 1829702	21000	0	26	0	0	0	18200	10	3	0	0	0	0	0	0	0	0	0	0	0	Shado 'Fitz' Farstrider - Start Attack on Gankly Rottenfist

-- event allows to kill buddy by him ... so check need to be done first
DELETE FROM dbscripts_on_creature_death WHERE id = 18297;
INSERT INTO dbscripts_on_creature_death (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
('18297','1','0','31','18294','90','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Gankly Rottenfist - search for 18294'),
('18297','90','0','29','3','1','0','18294','100','7','0','0','0','0','0','0','0','0','0','0','0','Gankly Rottenfist - buddy add NPCFLAGS'),
('18297','100','0','32','0','0','0','18294','100','7','0','0','0','0','0','0','0','0','0','0','0','Gankly Rottenfist - buddy Resume Waypoints'); -- was only this befor

-- Kristen Dipswitch
-- she shouldnt offer quest before saved from Gankly Rottenfist RP Event
DELETE FROM dbscripts_on_relay WHERE id = 19988;
INSERT INTO dbscripts_on_relay (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
('19988','1','29','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Part of Kristen Dipswitch EAI - Remove NPCFLAGS');

