UPDATE creature_template SET SpellList = 1834101 WHERE entry=18341;
UPDATE creature_template SET SpellList = 2026701 WHERE entry=20267;
DELETE FROM creature_spell_list_entry WHERE Id IN(1834101,2026701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1834101, 'MT - Pandemonius - Normal', 0, 0),
(2026701, 'MT - Pandemonius - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1834101,2026701);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1834101', '0', '32325', '0', '-1', '101', '100', '100', '1','15000','20000','27000','32000', 'Pandemonius - Void Blast on Random'),
('1834101', '1', '32358', '0', '-1', '101', '0', '100', '1','13000','15000','18000','30000', 'Pandemonius - Dark Shell'),
('2026701', '0', '38760', '0', '-1', '101', '100', '100', '1','15000','20000','27000','32000', 'Pandemonius - Void Blast on Random'),
('2026701', '1', '38759', '0', '-1', '101', '0', '100', '1','13000','15000','18000','30000', 'Pandemonius - Dark Shell');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10561 WHERE Id IN(17771);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10562 WHERE Id IN(17772);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10563 WHERE Id IN(17773);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10564 WHERE Id IN(17774);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10565 WHERE Id IN(17775);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10566 WHERE Id IN(17776);
UPDATE broadcast_text SET ChatTypeID=3, SoundEntriesID1=0 WHERE Id IN(21067);


