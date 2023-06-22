UPDATE creature_template SET SpellList = 1847201 WHERE entry=18472;
UPDATE creature_template SET SpellList = 2069001 WHERE entry=20690;
DELETE FROM creature_spell_list_entry WHERE Id IN(1847201,2069001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1847201, 'SH - Darkweaver Syth - Normal', 0, 0),
(2069001, 'SH - Darkweaver Syth - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1847201,2069001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1847201', '0', '15039', '0', '-1', '100', '0', '100', '1','18000','18000','13000','28000', 'Darkweaver Syth - Flame Shock on Random'),
('1847201', '1', '33534', '0', '-1', '100', '0', '100', '1','19000','19000','13000','28000', 'Darkweaver Syth - Arcane Shock on Random'),
('1847201', '2', '12548', '0', '-1', '100', '0', '100', '1','18000','18000','13000','28000', 'Darkweaver Syth - Frost Shock on Random'),
('1847201', '3', '33620', '0', '-1', '100', '0', '100', '1','17000','17000','13000','28000', 'Darkweaver Syth - Shadow Shock on Random'),
('1847201', '4', '15659', '0', '-1', '100', '0', '100', '1','6000','9000','14000','26000', 'Darkweaver Syth - Chain Lightning on Random'),
('2069001', '0', '15616', '0', '-1', '100', '0', '100', '1','18000','18000','11000','20000', 'Darkweaver Syth - Flame Shock on Random'),
('2069001', '1', '38135', '0', '-1', '100', '0', '100', '1','19000','19000','11000','20000', 'Darkweaver Syth - Arcane Shock on Random'),
('2069001', '2', '21401', '0', '-1', '100', '0', '100', '1','18000','18000','11000','20000', 'Darkweaver Syth - Frost Shock on Random'),
('2069001', '3', '38136', '0', '-1', '100', '0', '100', '1','17000','17000','11000','20000', 'Darkweaver Syth - Shadow Shock on Random'),
('2069001', '4', '15305', '0', '-1', '100', '0', '100', '1','6000','9000','13000','19000', 'Darkweaver Syth - Chain Lightning on Random');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10502 WHERE Id IN(17733);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10503 WHERE Id IN(17734);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10504 WHERE Id IN(17735);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10505 WHERE Id IN(17736);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10506 WHERE Id IN(17737);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10507 WHERE Id IN(17738);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10508 WHERE Id IN(17739);


