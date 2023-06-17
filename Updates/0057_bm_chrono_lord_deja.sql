UPDATE creature_template SET SpellList = 1787901 WHERE entry=17879;
UPDATE creature_template SET SpellList = 2073801 WHERE entry=20738;
DELETE FROM creature_spell_list_entry WHERE Id IN(1787901,2073801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1787901, 'BM - Chrono Lord Deja - Normal', 0, 0),
(2073801, 'BM - Chrono Lord Deja - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1787901,2073801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1787901', '0', '31457', '0', '-1', '1', '0', '100', '1','18000','23000','15000','25000', 'Chrono Lord Deja - Arcane Blast on Current'),
('1787901', '1', '31472', '0', '-1', '0', '0', '100', '1','20000','30000','20000','30000', 'Chrono Lord Deja - Arcane Discharge'),
('1787901', '2', '31467', '0', '-1', '0', '0', '100', '1','10000','15000','15000','25000', 'Chrono Lord Deja - Time Lapse'),
('2073801', '0', '38538', '0', '-1', '1', '0', '100', '1','18000','23000','15000','25000', 'Chrono Lord Deja - Arcane Blast on Current'),
('2073801', '1', '38539', '0', '-1', '0', '0', '100', '1','20000','30000','20000','30000', 'Chrono Lord Deja - Arcane Discharge'),
('2073801', '2', '31467', '0', '-1', '0', '0', '100', '1','10000','15000','15000','25000', 'Chrono Lord Deja - Time Lapse'),
('2073801', '3', '38540', '0', '-1', '0', '0', '100', '1','25000','35000','25000','35000', 'Chrono Lord Deja - Attraction');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10414 WHERE Id IN(16815);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10413 WHERE Id IN(16817);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10415 WHERE Id IN(16818);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10416 WHERE Id IN(16819);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10417 WHERE Id IN(16816);


