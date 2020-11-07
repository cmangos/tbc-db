-- Add script for spell 9096 (Rift Spawn Manifestation) triggering spell 9738 (Rift Spawn Becomes Visible)
DELETE FROM dbscripts_on_spell WHERE id=9096;
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9096, 0, 0, 15, 9738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Spawn - cast Rift Spawn Becomes Visible');

