UPDATE creature_template SET SpellList = 2126801 WHERE entry=21268;
DELETE FROM creature_spell_list_entry WHERE Id IN(2126801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2126801, 'TK - Netherstrand Longbow', 0, 70);
DELETE FROM creature_spell_list WHERE Id IN(2126801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2126801', '0', '36994', '0', '101', '0', '0', '100', '10','15000','20000','24000','30000', 'Netherstrand Longbow - Blink'),
('2126801', '1', '36979', '0', '-1', '1', '0', '100', '5','7000','11000','12000','16000', 'Netherstrand Longbow - Multi-Shot on current'),
('2126801', '2', '36980', '2', '-1', '1', '0', '100', '1','0','0','0','0', 'Netherstrand Longbow - Shoot on current');

UPDATE creature_template SET SpellList = 2127001 WHERE entry=21270;
DELETE FROM creature_spell_list_entry WHERE Id IN(2127001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2127001, 'TK - Devastation', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2127001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2127001', '0', '36981', '0', '101', '0', '0', '100', '1','11000','15000','11000','15000', 'Devastation - Whirlwind');

UPDATE creature_template SET SpellList = 2127001 WHERE entry=21270;
DELETE FROM creature_spell_list_entry WHERE Id IN(2127001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2127001, 'TK - Cosmic Infuser', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2127001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2127001', '0', '36985', '0', '-1', '103', '0', '100', '1','6000','6000','6000','6000', 'Cosmic Infuser - Holy Nova'),
('2127001', '1', '36983', '0', '-1', '201', '0', '100', '1','10000','15000','10000','15000', 'Cosmic Infuser - Heal on friendly low hp');

UPDATE creature_template SET SpellList = 2127201 WHERE entry=21272;
DELETE FROM creature_spell_list_entry WHERE Id IN(2127201);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2127201, 'TK - Warp Slicer', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2127201);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2127201', '0', '36991', '0', '-1', '1', '0', '100', '1','6000','6000','6000','6000', 'Warp Slicer - Rend on current');

UPDATE creature_template SET SpellList = 2127301 WHERE entry=21273;
DELETE FROM creature_spell_list_entry WHERE Id IN(2127301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2127301, 'TK - Phaseshift Bulwark', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2127301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2127301', '0', '36988', '0', '-1', '102', '0', '100', '1','10000','15000','10000','15000', 'Phaseshift Bulwark - Shield Bash on random casting player');

UPDATE creature_template SET SpellList = 2127401 WHERE entry=21274;
DELETE FROM creature_spell_list_entry WHERE Id IN(2127401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2127401, 'TK - Staff of Disintegration', 0, 75);
DELETE FROM creature_spell_list WHERE Id IN(2127401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2127401', '0', '36990', '2', '-1', '1', '0', '100', '1','0','0','0','0', 'Staff of Disintegration - Frostbolt on current'),
('2127401', '1', '36989', '0', '-1', '103', '0', '100', '1','12000','15000','12000','15000', 'Staff of Disintegration - Frost Nova');



