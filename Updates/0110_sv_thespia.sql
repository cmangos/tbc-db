UPDATE creature_template SET SpellList = 1779701 WHERE entry=17797;
UPDATE creature_template SET SpellList = 2062901 WHERE entry=20629;
DELETE FROM creature_spell_list_entry WHERE Id IN(1779701,2062901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1779701, 'SV - Hydromancer Thespia - Normal', 0, 0),
(2062901, 'SV - Hydromancer Thespia - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1779701,2062901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1779701', '0', '25033', '0', '-1', '100', '0', '100', '1','15000','15000','30000','30000', 'Hydromancer Thespia - Lightning Cloud on Random Player'),
('1779701', '1', '31481', '0', '-1', '100', '0', '100', '1','15000','18000','7000','12000', 'Hydromancer Thespia - Lung Burst on Random Player'),
('1779701', '2', '31718', '0', '-1', '100', '0', '100', '1','20000','25000','10000','10000', 'Hydromancer Thespia - Enveloping Winds on Random Player'),
('2062901', '0', '25033', '0', '-1', '100', '0', '100', '1','15000','15000','10000','10000', 'Hydromancer Thespia - Lightning Cloud on Random Player'),
('2062901', '1', '31481', '0', '-1', '100', '0', '100', '1','15000','18000','7000','12000', 'Hydromancer Thespia - Lung Burst on Random Player'),
('2062901', '2', '31718', '0', '-1', '100', '0', '100', '1','20000','25000','15000','15000', 'Hydromancer Thespia - Enveloping Winds on Random Player');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=0 WHERE Id IN(19456); -- has no sound - i checked
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10361 WHERE Id IN(17696);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10362 WHERE Id IN(17697);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10363 WHERE Id IN(17698);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10364 WHERE Id IN(17701);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10365 WHERE Id IN(17702);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10366 WHERE Id IN(17704);


