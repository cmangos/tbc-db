-- Fixed NPCs involved in quest 7003 (Zapped Giants)
-- They will now attack cast and revert to their original form after 5 min
-- Thanks 249CAAFE40 for reporting. This closes #655
DELETE FROM `dbscripts_on_spell` WHERE `id` = 23359;
INSERT INTO `dbscripts_on_spell` (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23359, 0, 26, 0, 0, 0, 0, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 'Giant/Strider attacks player on Transmogrify Spell Hit');

