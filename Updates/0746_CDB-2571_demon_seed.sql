-- Add end script for quest 924 (The Demon Seed) in the Barrens
-- Source: https://classic.wowhead.com/quest=924/the-demon-seed#videos:id=168754
UPDATE gameobject SET spawntimesecsmin=120, spawntimesecsmax=120 WHERE id IN (3523, 3524);

UPDATE gameobject_template SET data3=65536, data5=1 WHERE entry=3524;

DELETE FROM dbscripts_on_event WHERE id=510;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(510, 1000, 0, 13, 0, 0, 0, 3524, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Demon Seed'),
(510, 2000, 0, 40, 0, 0, 0, 3523, 30, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Circle of Flame');

