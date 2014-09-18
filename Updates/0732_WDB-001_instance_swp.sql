-- Madrigosa script target fix
DELETE FROM spell_script_target WHERE entry = 46609;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(46609,1,19871,0);

