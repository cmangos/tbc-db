-- has 3 classic-db / wotlk-db 1
UPDATE `creature_template_addon` SET `b2_0_sheath` = 1 WHERE `entry` = 6181;

-- duplicate 4690060 - 469_blackwing_lair
DELETE FROM `dbscripts_on_go_use` WHERE `id` = 55359;

-- Add GENERIC EMOTE - ONESHOT_NONE which removes EmoteState
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - ONESHOT_NONE');

