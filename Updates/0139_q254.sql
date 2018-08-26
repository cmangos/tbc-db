-- Prevent unlimited spawns of Eliza c.314, spawned by q.254
-- Also correct the spawn coordinates from sniff.
DELETE FROM dbscripts_on_quest_end WHERE id=254;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(254, 0, 31, 314, 80, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate Script if Eliza found alive'),
(254, 2, 10, 314, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -10270.04, 53.92253, 41.89031, 3.089233, 'Summon Eliza'),
(254, 3, 40, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Eliza''s Grave Dirt');

UPDATE gameobject SET spawntimesecsmin=60, spawntimesecsmax=60 WHERE id=51708;
