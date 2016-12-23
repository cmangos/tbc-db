-- UDB_289
-- q.10929 'Fumping'
DELETE FROM spell_template WHERE id IN (39240,39241);
INSERT INTO spell_template (id, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(39240,0,101,21,28,41,8,0,22483,64,0,'Summon Summon Sand Gnome front of the caster'),
(39241,0,101,21,28,41,8,0,22482,64,0,'Summon Mature Bone Sifter front of the caster');
DELETE FROM dbscripts_on_spell WHERE id = 39238;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(39238,1,15,39240,0,0,0,0,39241,0,0,0,0,0,0,0,'cast random spell');
-- Sand Gnome - equipment update
UPDATE creature_template SET equipmentTemplateid = 5536 WHERE entry = 22483;

