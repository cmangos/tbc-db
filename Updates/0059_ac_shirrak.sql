UPDATE creature_template SET SpellList = 1837101 WHERE entry=18371;
UPDATE creature_template SET SpellList = 2031801 WHERE entry=20318;
DELETE FROM creature_spell_list_entry WHERE Id IN(1837101,2031801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1837101, 'AC - Shirrak - Normal', 0, 0),
(2031801, 'AC - Shirrak - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1837101,2031801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1837101', '0', '32291', '0', '-1', '101', '0', '100', '5','15000','15000','15000','15000', 'Shirrak - Focus Fire on Random non tank'),
('1837101', '1', '36383', '0', '-1', '0', '0', '100', '1','4000','7000','4000','10000', 'Shirrak - Carnivorous Bite'),
('1837101', '2', '32265', '0', '-1', '0', '0', '100', '10','20000','24000','25000','38000', 'Shirrak - Attract Magic'),
('2031801', '0', '32291', '0', '-1', '101', '0', '100', '5','15000','15000','15000','15000', 'Shirrak - Focus Fire on Random non tank'),
('2031801', '1', '39382', '0', '-1', '0', '0', '100', '1','4000','7000','4000','10000', 'Shirrak - Carnivorous Bite'),
('2031801', '2', '32265', '0', '-1', '0', '0', '100', '10','20000','24000','25000','38000', 'Shirrak - Attract Magic');

UPDATE broadcast_text SET ChatTypeID=3 WHERE Id IN(19321);


