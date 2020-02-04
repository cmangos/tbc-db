-- correct spell targeting data for animations
DELETE FROM spell_script_targeT WHERE entry IN(180102,180101,180100);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(24390,0,180102,0),
(24390,0,180101,0),
(24390,0,180100,0),
(24391,0,180102,0),
(24391,0,180101,0),
(24391,0,180100,0);

