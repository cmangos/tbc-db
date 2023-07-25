DELETE FROM spell_script_target WHERE entry IN(30745,30741,30735);
INSERT INTO spell_script_target VALUES
(30745, 1, 17083, 0),
(30741, 1, 17083, 0),
(30735, 1, 17083, 0);

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10262,EmoteID1=0 WHERE Id IN(15594);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10270,EmoteID1=0 WHERE Id IN(15589);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10272,EmoteID1=0 WHERE Id IN(15595);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10263,EmoteID1=11 WHERE Id IN(15569);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10264,EmoteID1=0 WHERE Id IN(15575);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10265,EmoteID1=11 WHERE Id IN(15573);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10266,EmoteID1=0 WHERE Id IN(15572);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10267,EmoteID1=0 WHERE Id IN(15579);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10268,EmoteID1=0 WHERE Id IN(15584);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10269,EmoteID1=0 WHERE Id IN(15582);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10259,EmoteID1=0 WHERE Id IN(14130);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10260,EmoteID1=11 WHERE Id IN(14132);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10261,EmoteID1=11 WHERE Id IN(14148);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10273,EmoteID1=0 WHERE Id IN(16863);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10271,EmoteID1=0 WHERE Id IN(16864);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10274,EmoteID1=0 WHERE Id IN(16865);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10275,EmoteID1=0 WHERE Id IN(16866);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10276,EmoteID1=0 WHERE Id IN(16862);

UPDATE creature_template SET SpellList = 1680701 WHERE entry=16807;
UPDATE creature_template SET SpellList = 2056801 WHERE entry=20568;
DELETE FROM creature_spell_list_entry WHERE Id IN(1680701,2056801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1680701, 'SHH - Grand Warlock Nethekurse - Normal', 0, 0),
(2056801, 'SHH - Grand Warlock Nethekurse - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1680701,2056801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1680701', '0', '30495', '0', '-1', '1', '0', '100', '1','5000','5000','6000','8500', 'Grand Warlock Nethekurse - Shadow Cleave on Current'),
('1680701', '1', '30496', '0', '-1', '100', '0', '100', '1','8000','8000','7500','15000', 'Grand Warlock Nethekurse - Lesser Shadow Fissure on Random Player'),
('1680701', '2', '30500', '0', '-1', '100', '0', '100', '1','20000','20000','15000','20000', 'Grand Warlock Nethekurse - Death Coil on Random Player'),
('1680701', '3', '30502', '0', '872', '0', '0', '100', '1','0','0','0','0', 'Grand Warlock Nethekurse - Dark Spin'),
('2056801', '0', '35953', '0', '-1', '1', '0', '100', '1','5000','5000','6000','8500', 'Grand Warlock Nethekurse - Shadow Slam on Current'),
('2056801', '1', '30496', '0', '-1', '100', '0', '100', '1','8000','8000','7500','15000', 'Grand Warlock Nethekurse - Lesser Shadow Fissure on Random Player'),
('2056801', '2', '30500', '0', '-1', '100', '0', '100', '1','20000','20000','15000','20000', 'Grand Warlock Nethekurse - Death Coil on Random Player'),
('2056801', '3', '30502', '0', '872', '0', '0', '100', '1','0','0','0','0', 'Grand Warlock Nethekurse - Dark Spin');

