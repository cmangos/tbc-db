-- turn them neutral after completion
DELETE FROM spell_area WHERE spell=38687;
INSERT INTO spell_area(spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
('38687', '3830', '0', '0', '10830', '0', '0', '0', '2', '1');
