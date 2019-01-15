-- Add Dragonmaw Wyrmcaller 22960 as target for 40887 (Assist)
DELETE FROM spell_script_target WHERE entry=40887;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(40887, 1, 22960, 0);


