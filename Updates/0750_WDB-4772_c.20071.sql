-- Wind Trader Marid 20071
-- Use SCRIPT_COMMAND_MODIFY_UNIT_FLAGS instead of SCRIPT_COMMAND_FLAG_REMOVE
DELETE FROM dbscripts_on_creature_movement WHERE id = 2007101 AND priority = 3;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2007101,3700,48,256,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UnitFlags Removed'); -- 3600

