UPDATE creature_template SET SpellList = 1809601 WHERE entry=18096;
UPDATE creature_template SET SpellList = 2053101 WHERE entry=20531;
DELETE FROM creature_spell_list_entry WHERE Id IN(1809601,2053101);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1809601, 'OHF - Epoch Hunter - Normal', 0, 0),
(2053101, 'OHF - Epoch Hunter - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1809601,2053101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1809601', '0', '31914', '0', '-1', '0', '0', '100', '0','6400','10300','18100','26600', 'Epoch Hunter - Sand Breath'),
('1809601', '1', '31916', '0', '-1', '101', '0', '100', '0','25000','30000','25000','30000', 'Epoch Hunter - Impending Death on Random non tank'),
('1809601', '2', '31475', '0', '-1', '0', '0', '100', '0','12400','20300','20500','26600', 'Epoch Hunter - Wing Buffet'),
('1809601', '3', '33834', '0', '-1', '0', '0', '100', '0','1100','8800','15700','25300', 'Epoch Hunter - Magic Disruption Aura'),
('2053101', '0', '31914', '0', '-1', '0', '0', '100', '0','6400','10300','18100','26600', 'Epoch Hunter - Sand Breath'),
('2053101', '1', '31916', '0', '-1', '101', '0', '100', '0','25000','30000','25000','30000', 'Epoch Hunter - Impending Death on Random non tank'),
('2053101', '2', '31475', '0', '-1', '0', '0', '100', '0','12400','20300','20500','26600', 'Epoch Hunter - Wing Buffet'),
('2053101', '3', '33834', '0', '-1', '0', '0', '100', '0','1100','8800','15700','25300', 'Epoch Hunter - Magic Disruption Aura');


