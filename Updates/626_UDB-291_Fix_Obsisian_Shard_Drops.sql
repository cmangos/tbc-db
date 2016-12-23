-- UDB_291
-- Obsidian Shard & * of Ahn'Qiraj
-- missing spells added (DBC 1.12.x)
DELETE FROM spell_template WHERE id in (27627,27630);
INSERT INTO spell_template (id, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(27627, 0, 101, 21, 76, 32, 14, 0, 181068, 0, 0, 'Drop Obsidian'),
(27630, 0, 101, 21, 76, 32, 14, 0, 181069, 0, 0, 'Drop Obsidian');
-- Delete spawn static go
DELETE FROM gameobject WHERE id IN (181068, 181069);
-- should be droped on creatures death
DELETE FROM dbscripts_on_creature_death WHERE id in (15355, 15338, 15264, 15340, 15277);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15355, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'),
(15338, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'),
(15264, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'),
(15340, 1, 15, 27630, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops large obsidian chunk'),
(15277, 1, 15, 27630, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops large obsidian chunk');

