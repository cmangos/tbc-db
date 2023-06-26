UPDATE creature_template SET SpellList = 1873101 WHERE entry=18731;
UPDATE creature_template SET SpellList = 2063601 WHERE entry=20636;
DELETE FROM creature_spell_list_entry WHERE Id IN(1873101,2063601);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1873101, 'SL - Ambassador Hellmaw - Normal', 0, 0),
(2063601, 'SL - Ambassador Hellmaw - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1873101,2063601);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1873101', '0', '33551', '0', '-1', '100', '0', '100', '1','20000','23000','23000','35000', 'Ambassador Hellmaw - Corrosive Acid'),
('1873101', '1', '33547', '0', '-1', '100', '0', '100', '1','20000','26000','20000','38000', 'Ambassador Hellmaw - Fear'),
('2063601', '0', '33551', '0', '-1', '100', '0', '100', '1','20000','23000','23000','35000', 'Ambassador Hellmaw - Corrosive Acid'),
('2063601', '1', '33547', '0', '-1', '100', '0', '100', '1','20000','26000','20000','38000', 'Ambassador Hellmaw - Fear'),
('2063601', '2', '34970', '0', '-1', '100', '0', '100', '1','180000','180000','180000','180000', 'Ambassador Hellmaw - Enrage');

UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10475 WHERE Id IN(17860);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10476 WHERE Id IN(17861);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10477 WHERE Id IN(17863);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10474 WHERE Id IN(17859);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10478 WHERE Id IN(17864);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10479 WHERE Id IN(17865);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10480 WHERE Id IN(17866);


