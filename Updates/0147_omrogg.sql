UPDATE creature_template SET SpellList = 1680901 WHERE entry=16809;
UPDATE creature_template SET SpellList = 2059601 WHERE entry=20596;
DELETE FROM creature_spell_list_entry WHERE Id IN(1680901,2059601);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1680901, 'SHH - Warbringer O''mrogg - Normal', 0, 0),
(2059601, 'SHH - Warbringer O''mrogg - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1680901,2059601);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1680901', '0', '30598', '0', '-1', '0', '0', '100', '1','25000','25000','40000','40000', 'Warbringer O''mrogg - Burning Maul'),
('1680901', '1', '30618', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Warbringer O''mrogg - Beatdown'),
('1680901', '2', '30584', '0', '-1', '0', '0', '100', '1','8000','8000','15000','35000', 'Warbringer O''mrogg - Fear'),
('1680901', '3', '30633', '0', '-1', '0', '0', '100', '1','15000','15000','15000','30000', 'Warbringer O''mrogg - Thunderclap'),
('2059601', '0', '36056', '0', '-1', '0', '0', '100', '1','25000','25000','40000','40000', 'Warbringer O''mrogg - Burning Maul'),
('2059601', '1', '30618', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Warbringer O''mrogg - Beatdown'),
('2059601', '2', '30584', '0', '-1', '0', '0', '100', '1','8000','8000','15000','35000', 'Warbringer O''mrogg - Fear'),
('2059601', '3', '30633', '0', '-1', '0', '0', '100', '1','15000','15000','15000','30000', 'Warbringer O''mrogg - Thunderclap');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10306,EmoteID1=0 WHERE Id IN(14046);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10308,EmoteID1=0 WHERE Id IN(14048);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10309,EmoteID1=0 WHERE Id IN(19842);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10317,EmoteID1=0 WHERE Id IN(14047);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10318,EmoteID1=0 WHERE Id IN(16916);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10319,EmoteID1=0 WHERE Id IN(16919);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10303,EmoteID1=0 WHERE Id IN(16898);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10315,EmoteID1=0 WHERE Id IN(16901);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10302,EmoteID1=0 WHERE Id IN(16895);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10300,EmoteID1=0 WHERE Id IN(14043);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10314,EmoteID1=0 WHERE Id IN(16899);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10305,EmoteID1=0 WHERE Id IN(16902);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10313,EmoteID1=0 WHERE Id IN(16896);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10312,EmoteID1=0 WHERE Id IN(14044);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10304,EmoteID1=0 WHERE Id IN(16900);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10316,EmoteID1=0 WHERE Id IN(16903);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10307,EmoteID1=0 WHERE Id IN(16917);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10301,EmoteID1=0 WHERE Id IN(14045);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10310,EmoteID1=0 WHERE Id IN(16922);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10320,EmoteID1=0 WHERE Id IN(16921);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10321,EmoteID1=0 WHERE Id IN(16923);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10311,EmoteID1=0 WHERE Id IN(16924);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10322,EmoteID1=0 WHERE Id IN(16925);
UPDATE broadcast_text SET ChatTypeID=2, SoundEntriesID1=0,EmoteID1=0 WHERE Id IN(16402);


