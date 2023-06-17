UPDATE creature_template SET SpellList = 1788001 WHERE entry=17880;
UPDATE creature_template SET SpellList = 2074501 WHERE entry=20745;
DELETE FROM creature_spell_list_entry WHERE Id IN(1788001,2074501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1788001, 'BM - Temporus - Normal', 0, 0),
(2074501, 'BM - Temporus - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1788001,2074501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1788001', '0', '31475', '0', '-1', '0', '0', '100', '5','18000','22000','20000','28000', 'Temporus - Wing Buffet'),
('1788001', '1', '31464', '0', '-1', '1', '0', '100', '1','3500','7000','4500','7000', 'Temporus - Mortal Wound on Current'),
('1788001', '2', '31458', '0', '-1', '0', '0', '100', '2','13000','18000','17000','21000', 'Temporus - Hasten'),
('2074501', '0', '38593', '0', '-1', '0', '0', '100', '5','14000','18000','14000','28000', 'Temporus - Wing Buffet'),
('2074501', '1', '31464', '0', '-1', '1', '0', '100', '1','3500','7000','4500','7000', 'Temporus - Mortal Wound on Current'),
('2074501', '2', '31458', '0', '-1', '0', '0', '100', '2','10000','15000','12000','21000', 'Temporus - Hasten'),
('2074501', '3', '38592', '0', '-1', '0', '0', '100', '10','17000','22000','25000','35000', 'Temporus - Spell Reflection');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10444 WHERE Id IN(16822);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10443 WHERE Id IN(16824);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10447 WHERE Id IN(16823);


