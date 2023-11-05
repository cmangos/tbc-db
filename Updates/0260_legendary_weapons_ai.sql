UPDATE creature_template SET SpellList = 2126801 WHERE entry=21268;
DELETE FROM creature_spell_list_entry WHERE Id IN(2126801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2126801, 'TK - Netherstrand Longbow', 0, 70);
DELETE FROM creature_spell_list WHERE Id IN(2126801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2126801', '0', '36994', '0', '101', '0', '0', '100', '10','15000','20000','24000','30000', 'Netherstrand Longbow - Blink'),
('2126801', '1', '36979', '0', '-1', '1', '0', '100', '5','7000','11000','12000','16000', 'Netherstrand Longbow - Multi-Shot on current'),
('2126801', '2', '36980', '2', '-1', '1', '0', '100', '1','0','0','0','0', 'Netherstrand Longbow - Shoot on current');

UPDATE creature_template SET SpellList = 3698101 WHERE entry=36981;
DELETE FROM creature_spell_list_entry WHERE Id IN(3698101);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3698101, 'TK - Devastation', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3698101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3698101', '0', '36981', '0', '101', '0', '0', '100', '1','11000','15000','11000','15000', 'Devastation - Whirlwind');

/*
UPDATE creature_template SET SpellList = 01 WHERE entry=;
DELETE FROM creature_spell_list_entry WHERE Id IN();
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(, 'TK - ', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN();
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('', '0', '', '0', '-1', '', '0', '100', '1','','','','', ' - '),
('', '1', '', '0', '-1', '', '0', '100', '1','','','','', ' - '),
('', '2', '', '0', '-1', '', '0', '100', '1','','','','', ' - ');

UPDATE creature_template SET SpellList = 01 WHERE entry=;
DELETE FROM creature_spell_list_entry WHERE Id IN();
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(, 'TK - ', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN();
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('', '0', '', '0', '-1', '', '0', '100', '1','','','','', ' - '),
('', '1', '', '0', '-1', '', '0', '100', '1','','','','', ' - '),
('', '2', '', '0', '-1', '', '0', '100', '1','','','','', ' - ');

UPDATE creature_template SET SpellList = 01 WHERE entry=;
DELETE FROM creature_spell_list_entry WHERE Id IN();
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(, 'TK - ', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN();
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('', '0', '', '0', '-1', '', '0', '100', '1','','','','', ' - '),
('', '1', '', '0', '-1', '', '0', '100', '1','','','','', ' - '),
('', '2', '', '0', '-1', '', '0', '100', '1','','','','', ' - ');

UPDATE creature_template SET SpellList = 01 WHERE entry=;
DELETE FROM creature_spell_list_entry WHERE Id IN();
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(, 'TK - ', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN();
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('', '0', '', '0', '-1', '', '0', '100', '1','','','','', ' - '),
('', '1', '', '0', '-1', '', '0', '100', '1','','','','', ' - '),
('', '2', '', '0', '-1', '', '0', '100', '1','','','','', ' - ');
*/


