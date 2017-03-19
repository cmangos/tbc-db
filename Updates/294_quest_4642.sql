-- q.4642 'Melding of Influences'
-- Correct target for spell "Merging Oozes"
DELETE FROM spell_script_target WHERE entry = 16032;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(16032,1,6557,0);


