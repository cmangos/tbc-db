-- q.10609 'What Came First, the Drake or the Egg?'
DELETE FROM dbscripts_on_go_template_use WHERE id IN (184867);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184867,1,15,37614,0,0,21814,10,7,0,0,0,0,0,0,0,0,'forces 21814 cast 37614'),
(184867,10,40,0,0,0,184867,10,0x04,0,0,0,0,0,0,0,0,'forces 21814 cast 37614');
-- target for spells
DELETE FROM spell_script_target WHERE entry IN(37639);
INSERT INTO spell_script_target VALUES
(37639,1,21814,0);
-- Nether Drake Egg Bunny 21814
UPDATE creature_template SET UnitFlags = 33554432 WHERE entry IN (21814);

