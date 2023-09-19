UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11332,EmoteID1=0 WHERE Id IN(20076);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11333,EmoteID1=0 WHERE Id IN(20077);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11334,EmoteID1=0 WHERE Id IN(20078);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11335,EmoteID1=0 WHERE Id IN(20079);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11336,EmoteID1=0 WHERE Id IN(20080);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11337,EmoteID1=0 WHERE Id IN(20081);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11338,EmoteID1=0 WHERE Id IN(20082);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11339,EmoteID1=0 WHERE Id IN(20083);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11340,EmoteID1=0 WHERE Id IN(20084);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=0,EmoteID1=0 WHERE Id IN(15895); -- yes these two dont have sounds
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=0,EmoteID1=0 WHERE Id IN(16432);

UPDATE creature_template SET SpellList = 1872801 WHERE entry=18728;
DELETE FROM creature_spell_list_entry WHERE Id IN(1872801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1872801, 'Hellfire Peninsula - Doom Lord Kazzak', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1872801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1872801', '0', '16044', '0', '-1', '1', '0', '100', '1','7000','7000','8000','12000', 'Doom Lord Kazzak - Cleave on current'),
('1872801', '1', '36706', '0', '-1', '0', '0', '100', '1','14000','18000','10000','14000', 'Doom Lord Kazzak - Thunderclap'),
('1872801', '2', '21066', '0', '-1', '1', '0', '100', '1','30000','30000','15000','18000', 'Doom Lord Kazzak - Void Bolt on current'),
('1872801', '3', '32960', '0', '-1', '105', '0', '100', '1','25000','25000','20000','20000', 'Doom Lord Kazzak - Mark of Kazzak on random mana user'),
('1872801', '4', '32965', '0', '-1', '0', '0', '100', '1','180000','180000','600000','600000', 'Doom Lord Kazzak - Berserk'),
('1872801', '5', '21063', '0', '-1', '100', '0', '100', '1','33000','33000','15000','15000', 'Doom Lord Kazzak - Twisted Reflection on random player'),
('1872801', '6', '32964', '0', '-1', '0', '0', '100', '1','60000','60000','60000','60000', 'Doom Lord Kazzak - Enrage');


