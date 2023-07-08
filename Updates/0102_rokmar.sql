UPDATE creature_template SET SpellList = 1799101 WHERE entry=17991;
UPDATE creature_template SET SpellList = 1989501 WHERE entry=19895;
DELETE FROM creature_spell_list_entry WHERE Id IN(1799101,1989501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1799101, 'SP - Rokmar the Crackler - Normal', 0, 0),
(1989501, 'SP - Rokmar the Crackler - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1799101,1989501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1799101', '0', '34970', '0', '872', '0', '0', '100', '1','0','0','120000','120000', 'Rokmar the Crackler - Enrage'),
('1799101', '1', '35008', '0', '-1', '0', '0', '100', '1','9700','14900','12100','22900', 'Rokmar the Crackler - Water Spit'),
('1799101', '2', '31948', '0', '-1', '1', '0', '100', '1','15300','37400','22900','32600', 'Rokmar the Crackler - Ensnaring Moss on Current'),
('1799101', '3', '31956', '0', '-1', '1', '0', '100', '1','8400','15700','20700','35100', 'Rokmar the Crackler - Grievous Wound on Current'),
('1989501', '0', '34970', '0', '872', '0', '0', '100', '1','0','0','120000','120000', 'Rokmar the Crackler - Enrage'),
('1989501', '1', '35008', '0', '-1', '0', '0', '100', '1','9700','14900','12100','22900', 'Rokmar the Crackler - Water Spit'),
('1989501', '2', '31948', '0', '-1', '1', '0', '100', '1','15300','37400','22900','32600', 'Rokmar the Crackler - Ensnaring Moss on Current'),
('1989501', '3', '38801', '0', '-1', '1', '0', '100', '1','8400','15700','20700','35100', 'Rokmar the Crackler - Grievous Wound on Current');


