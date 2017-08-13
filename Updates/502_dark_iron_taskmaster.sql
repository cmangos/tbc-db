-- Dark Iron Taskmaster Death (12613)
-- Should only hit Slave Worker
DELETE FROM spell_script_target WHERE entry=12613;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(12613, 1, 5843, 0);

