DELETE FROM string_id WHERE Id IN(10000) AND Name IN('CLAW_UNDERBOG');
INSERT INTO string_id(Id, Name) VALUES
(10000, 'CLAW_UNDERBOG');
DELETE FROM spell_script_target WHERE entry IN(34662);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(34662,5,10000,0);
UPDATE creature_template SET StringId1=10000 WHERE entry IN(17827,20165);


