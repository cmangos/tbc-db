UPDATE creature_template SET SpellList = 1771101 WHERE entry=17711;
DELETE FROM creature_spell_list_entry WHERE Id IN(1771101);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1771101, 'Shadowmoon Valley - Doomwalker - Normal', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1771101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1771101', '0', '33653', '0', '872', '0', '0', '100', '1','0','0','600000','600000', 'Doomwalker - Enrage below 20'),
('1771101', '1', '32636', '0', '-1', '0', '0', '100', '1','30000','45000','25000','40000', 'Doomwalker - Overrun'),
('1771101', '2', '32686', '0', '-1', '0', '0', '100', '1','25000','35000','30000','55000', 'Doomwalker - Earthquake'),
('1771101', '3', '33665', '0', '-1', '101', '0', '100', '1','10000','30000','7000','27000', 'Doomwalker - Lightning Wrath on random player non tank'),
('1771101', '4', '33661', '0', '-1', '1', '0', '100', '1','5000','13000','10000','25000', 'Doomwalker - Crush Armor on current');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11344,EmoteID1=0 WHERE Id IN(20941);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11345,EmoteID1=0 WHERE Id IN(20942);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11346,EmoteID1=0 WHERE Id IN(20943);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11347,EmoteID1=0 WHERE Id IN(20944);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11348,EmoteID1=0 WHERE Id IN(20945);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11349,EmoteID1=0 WHERE Id IN(20946);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11350,EmoteID1=0 WHERE Id IN(20947);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11351,EmoteID1=0 WHERE Id IN(20948);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=11352,EmoteID1=0 WHERE Id IN(20949);


