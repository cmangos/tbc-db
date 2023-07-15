UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10367 WHERE Id IN(14602);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10368 WHERE Id IN(17716);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10369 WHERE Id IN(17717);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10370 WHERE Id IN(17718);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10371 WHERE Id IN(17719);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10372 WHERE Id IN(17720);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10373 WHERE Id IN(17721);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10374 WHERE Id IN(17722);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10375 WHERE Id IN(17723);

UPDATE creature_template SET SpellList = 1779601 WHERE entry=17796;
UPDATE creature_template SET SpellList = 2063001 WHERE entry=20630;
DELETE FROM creature_spell_list_entry WHERE Id IN(1779601,2063001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1779601, 'SV - Mekgineer Steamrigger - Normal', 0, 0),
(2063001, 'SV - Mekgineer Steamrigger - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1779601,2063001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1779601', '0', '31485', '0', '-1', '0', '0', '100', '1','20000','20000','20000','20000', 'Mekgineer Steamrigger - Super Shrink Ray'),
('1779601', '1', '31486', '0', '-1', '101', '0', '100', '1','15000','15000','15000','15000', 'Mekgineer Steamrigger - Saw Blade on Random non-tank Player'),
('1779601', '2', '35107', '0', '-1', '100', '0', '100', '1','10000','10000','10000','10000', 'Mekgineer Steamrigger - Electrified Net'),
('2063001', '0', '31485', '0', '-1', '0', '0', '100', '1','20000','20000','20000','20000', 'Mekgineer Steamrigger - Super Shrink Ray'),
('2063001', '1', '31486', '0', '-1', '101', '0', '100', '1','15000','15000','15000','15000', 'Mekgineer Steamrigger - Saw Blade on Random non-tank Player'),
('2063001', '2', '35107', '0', '-1', '100', '0', '100', '1','10000','10000','10000','10000', 'Mekgineer Steamrigger - Electrified Net'),
('2063001', '3', '26662', '0', '-1', '0', '0', '100', '100','300000','300000','300000','300000', 'Mekgineer Steamrigger - Berserk');

