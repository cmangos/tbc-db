UPDATE creature_template SET SpellList = 1788101 WHERE entry=17881;
UPDATE creature_template SET SpellList = 2073701 WHERE entry=20737;
DELETE FROM creature_spell_list_entry WHERE Id IN(1788101,2073701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1788101, 'BM - Aeonus - Normal', 0, 0),
(2073701, 'BM - Aeonus - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1788101,2073701);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1788101', '0', '31473', '0', '-1', '0', '0', '100', '0','15000','30000','15000','25000', 'Aeonus - Sand Breath'),
('1788101', '1', '31422', '0', '-1', '0', '0', '100', '0','10000','15000','20000','35000', 'Aeonus - Time Stop'),
('1788101', '2', '40504', '0', '-1', '1', '0', '100', '0','5000','9000','7000','12000', 'Aeonus - Cleave on Current'),
('1788101', '3', '37605', '0', '-1', '0', '0', '100', '0','30000','45000','20000','35000', 'Aeonus - Frenzy'),
('2073701', '0', '39049', '0', '-1', '0', '0', '100', '0','15000','30000','15000','25000', 'Aeonus - Sand Breath'),
('2073701', '1', '31422', '0', '-1', '0', '0', '100', '0','10000','15000','20000','35000', 'Aeonus - Time Stop'),
('2073701', '2', '40504', '0', '-1', '1', '0', '100', '0','5000','9000','7000','12000', 'Aeonus - Cleave on Current'),
('2073701', '3', '37605', '0', '-1', '0', '0', '100', '0','30000','45000','20000','35000', 'Aeonus - Frenzy');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10403 WHERE Id IN(16831);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10404 WHERE Id IN(16832);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10402 WHERE Id IN(16829);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10401 WHERE Id IN(16829);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10405 WHERE Id IN(16830);


