-- Add Commune With The Ancestors 32649 to Auchenai Crypts Area 3790
-- conditioned by (Quest ID 10045 Rewarded OR Quest ID 10252 Rewarded)
DELETE FROM `spell_area` WHERE `spell` = 32649 AND `area` = 3790;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
('32649', '3790', '0', '0', '0', '1135', '0', '0', '2', '1');

