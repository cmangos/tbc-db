DELETE FROM spell_script_target WHERE entry IN(32228,37220,37337,37339,37345,37348,37476,37413,37454,37502,37461,37471);
DELETE FROM spell_script_target WHERE entry IN(32227,37142,37143,37147,37149,37150,37474,37406,37453,37498,37459,37472);
DELETE FROM spell_script_target WHERE entry IN(37142,37143,37147,37149,37150,32227,32228,37220,37337,37339,37345,37348);
DELETE FROM spell_script_target WHERE entry IN(37469,37775);
DELETE FROM spell_script_target WHERE entry IN(37465);

INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) -- spells that should hit alliance pieces
select Id, '1', entry, '0' from spell_template, creature_template where id in(32228,37220,37337,37339,37345,37348,37476,37413,37454,37502,37461,37471,37428) AND entry IN(17211,21664,21683,21682,21160,21684);

INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) -- spells that should hit horde pieces
select Id, '1', entry, '0' from spell_template, creature_template where id in(32227,37142,37143,37147,37149,37150,37474,37406,37453,37498,37459,37472,37427) AND entry IN(17469,21748,21750,21747,21726,21752);

INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) -- spells that should hit alliance pieces AA
select Id, '1', entry, '0' from spell_template, creature_template where id in(37469,37775) AND entry IN(17469,21748,21750,21747,21726,21752);

INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) -- spells that should hit horde pieces AA
select Id, '1', entry, '0' from spell_template, creature_template where id in(37465) AND entry IN(17469,21748,21750,21747,21726,21752);

UPDATE creature_template SET Name='Chess Square, OUTSIDE WHITE (DND)' WHERE entry=17317; -- typo in name

-- Correct level and health for Fury of Medivh Visual
UPDATE creature_template SET MinLevel=70,MaxLevel=70,MinLevelHealth=6986,MaxLevelHealth=6986 WHERE entry IN(22521);


