UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11289,EmoteId1=0 WHERE Id IN(20231);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11290,EmoteId1=0 WHERE Id IN(19607);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11291,EmoteId1=0 WHERE Id IN(20235);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11292,EmoteId1=0 WHERE Id IN(20236);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11293,EmoteId1=0 WHERE Id IN(20238);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11297,EmoteId1=0 WHERE Id IN(19606);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11298,EmoteId1=0 WHERE Id IN(20233);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11299,EmoteId1=0 WHERE Id IN(20234);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=11300,EmoteId1=0 WHERE Id IN(20239);

UPDATE creature_template SET SpellList = 2121601 WHERE entry=21216;
DELETE FROM creature_spell_list_entry WHERE Id IN(2121601,2121602,2121603);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2121601, 'Serpentshrine Cavern - Hydross the Unstable - Clean', 0, 0),
(2121602, 'Serpentshrine Cavern - Hydross the Unstable - Corrupt', 0, 0),
(2121603, 'Serpentshrine Cavern - Hydross the Unstable - Clean - Repeat', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2121601,2121602,2121603);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2121601', '0', '38235', '0', '-1', '101', '0', '100', '1','7000','7000','7000','7000', 'Hydross the Unstable - Water Tomb on random player non tank'),
('2121601', '1', '27680', '0', '-1', '0', '0', '100', '1','600000','600000','600000','600000', 'Hydross the Unstable - Berserk'),
('2121601', '2', '38215', '0', '-1', '0', '0', '100', '1','15000','15000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121601', '3', '38216', '0', '-1', '0', '0', '100', '1','30000','30000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121601', '4', '38217', '0', '-1', '0', '0', '100', '1','45000','45000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121601', '5', '38218', '0', '-1', '0', '0', '100', '1','60000','60000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121601', '6', '38231', '0', '-1', '0', '0', '100', '1','75000','75000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121601', '7', '40584', '0', '-1', '0', '0', '100', '1','90000','90000','15000','15000', 'Hydross the Unstable - Mark of Hydross');
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2121602', '0', '38246', '0', '-1', '100', '0', '100', '1','7000','7000','15000','15000', 'Hydross the Unstable - Vile Sludge - on random player'),
('2121602', '1', '27680', '0', '-1', '0', '0', '100', '1','0','0','600000','600000', 'Hydross the Unstable - Berserk'),
('2121602', '2', '38219', '0', '-1', '0', '0', '100', '1','15000','15000','1200000','1200000', 'Hydross the Unstable - Mark of Corruption'),
('2121602', '3', '38220', '0', '-1', '0', '0', '100', '1','30000','30000','1200000','1200000', 'Hydross the Unstable - Mark of Corruption'),
('2121602', '4', '38221', '0', '-1', '0', '0', '100', '1','45000','45000','1200000','1200000', 'Hydross the Unstable - Mark of Corruption'),
('2121602', '5', '38222', '0', '-1', '0', '0', '100', '1','60000','60000','1200000','1200000', 'Hydross the Unstable - Mark of Corruption'),
('2121602', '6', '38230', '0', '-1', '0', '0', '100', '1','75000','75000','1200000','1200000', 'Hydross the Unstable - Mark of Corruption'),
('2121602', '7', '40583', '0', '-1', '0', '0', '100', '1','90000','90000','15000','15000', 'Hydross the Unstable - Mark of Corruption');
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2121603', '0', '38235', '0', '-1', '101', '0', '100', '1','7000','7000','7000','7000', 'Hydross the Unstable - Water Tomb on random player non tank'),
('2121603', '1', '27680', '0', '-1', '0', '0', '100', '1','0','0','600000','600000', 'Hydross the Unstable - Berserk'),
('2121603', '2', '38215', '0', '-1', '0', '0', '100', '1','15000','15000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121603', '3', '38216', '0', '-1', '0', '0', '100', '1','30000','30000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121603', '4', '38217', '0', '-1', '0', '0', '100', '1','45000','45000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121603', '5', '38218', '0', '-1', '0', '0', '100', '1','60000','60000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121603', '6', '38231', '0', '-1', '0', '0', '100', '1','75000','75000','1200000','1200000', 'Hydross the Unstable - Mark of Hydross'),
('2121603', '7', '40584', '0', '-1', '0', '0', '100', '1','90000','90000','15000','15000', 'Hydross the Unstable - Mark of Hydross');


