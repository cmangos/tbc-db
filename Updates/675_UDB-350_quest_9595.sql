-- q.9595 'Control'
-- Quel'dorei Magewraith is summoned by killing murlocks ... only during this quest											
DELETE FROM conditions WHERE condition_entry = 1048;
INSERT INTO conditions VALUES
(1048, 9, 9595, 0);
DELETE FROM dbscripts_on_creature_death WHERE id IN (17190,17191,17192);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17190, 1, 34, 1048, 0, 0, 0, 0x08, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(17190, 3, 10, 17612, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Quel\'dorei Magewraith on Death'),
(17191, 1, 34, 1048, 0, 0, 0, 0x08, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(17191, 3, 10, 17612, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Quel\'dorei Magewraith on Death'),
(17192, 1, 34, 1048, 0, 0, 0, 0x08, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(17192, 3, 10, 17612, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Quel\'dorei Magewraith on Death');

-- Quel'dorei Magewraith c.17612
-- spawned only during quest 
DELETE FROM creature WHERE guid IN (86554,86555,86556,86557);
DELETE FROM creature_addon WHERE guid IN (86554,86555,86556,86557);
DELETE FROM creature_movement WHERE id IN (86554,86555,86556,86557);
DELETE FROM game_event_creature WHERE guid IN (86554,86555,86556,86557);
DELETE FROM game_event_creature_data WHERE guid IN (86554,86555,86556,86557);
DELETE FROM creature_battleground WHERE guid IN (86554,86555,86556,86557);
DELETE FROM creature_linking WHERE guid IN (86554,86555,86556,86557) OR master_guid IN (86554,86555,86556,86557);


