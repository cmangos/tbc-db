UPDATE creature_template SET SpellList = 1834301 WHERE entry=18343;
UPDATE creature_template SET SpellList = 2026801 WHERE entry=20268;
DELETE FROM creature_spell_list_entry WHERE Id IN(1834301,2026801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1834301, 'MT - Tavarok - Normal', 0, 0),
(2026801, 'MT - Tavarok - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1834301,2026801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1834301', '0', '8374', '0', '-1', '0', '0', '100', '1','7400','13800','6800','15500', 'Tavarok - Arcing Smash'),
('1834301', '1', '33919', '0', '-1', '0', '0', '100', '1','8500','14400','19700','30700', 'Tavarok - Earthquake'),
('1834301', '2', '32361', '0', '-1', '101', '0', '100', '1','16900','22400','10300','30300', 'Tavarok - Crystal Prison on Random non tank'),
('2026801', '0', '38761', '0', '-1', '0', '0', '100', '1','5400','9300','7800','13500', 'Tavarok - Arcing Smash'),
('2026801', '1', '33919', '0', '-1', '0', '0', '100', '1','8500','14400','19700','30700', 'Tavarok - Earthquake'),
('2026801', '2', '32361', '0', '-1', '101', '0', '100', '1','16900','22400','10300','30300', 'Tavarok - Crystal Prison on Random non tank');


