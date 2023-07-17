UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10390 WHERE Id IN(17724);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10391 WHERE Id IN(17725);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10392 WHERE Id IN(17726);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10393 WHERE Id IN(17727);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10394 WHERE Id IN(17728);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10395 WHERE Id IN(17729);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10397 WHERE Id IN(17730);

UPDATE creature_template SET SpellList = 1779801 WHERE entry=17798;
UPDATE creature_template SET SpellList = 2063301 WHERE entry=20633;
DELETE FROM creature_spell_list_entry WHERE Id IN(1779801,2063301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1779801, 'SV - Warlord Kalithresh - Normal', 0, 0),
(2063301, 'SV - Warlord Kalithresh - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1779801,2063301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1779801', '0', '31534', '0', '-1', '0', '0', '100', '1','15000','20000','24000','35000', 'Warlord Kalithresh - Spell Reflection'),
('1779801', '1', '39061', '0', '-1', '107', '0', '100', '1','7000','14000','7500','12500', 'Warlord Kalithresh - Impale on Player not in melee'),
('1779801', '2', '16172', '0', '-1', '1', '0', '100', '1','10000','15000','45000','58000', 'Warlord Kalithresh - Head Crack on Current'),
('2063301', '0', '31534', '0', '-1', '0', '0', '100', '1','15000','20000','24000','35000', 'Warlord Kalithresh - Spell Reflection'),
('2063301', '1', '39061', '0', '-1', '107', '0', '100', '1','7000','14000','7500','12500', 'Warlord Kalithresh - Impale on Player not in melee'),
('2063301', '2', '16172', '0', '-1', '1', '0', '100', '1','10000','15000','45000','58000', 'Warlord Kalithresh - Head Crack on Current');


