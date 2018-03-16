DELETE FROM spell_script_target WHERE entry=36220;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(36220, 1, 18731, 0);

UPDATE creature_template SET ModelId1=21584, ModelId2=15880 WHERE entry=21159;


