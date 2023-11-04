UPDATE creature_template SET SpellList = 2006401 WHERE entry=20064;
DELETE FROM creature_spell_list_entry WHERE Id IN(2006401,2006402);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2006401, 'The Eye - Thaladred the Darkener', 0, 0),
(2006402, 'The Eye - Thaladred the Darkener Rezzed', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2006401,2006402);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2006401', '0', '40373', '8', '-1', '0', '0', '100', '1','0','0','8000','18000', 'Thaladred the Darkener - Trigger Creature Special'),
('2006401', '1', '36965', '0', '-1', '1', '0', '100', '1','4000','8000','7000','12000', 'Thaladred the Darkener - Rend on current'),
('2006401', '2', '30225', '0', '-1', '103', '0', '100', '1','5000','5000','7000','13000', 'Thaladred the Darkener - Silence on eligible aoe target'),
('2006401', '3', '36966', '0', '-1', '1', '0', '100', '1','25000','25000','20000','25000', 'Thaladred the Darkener - Psychic Blow on current'),
('2006402', '0', '40373', '8', '-1', '0', '0', '100', '1','0','0','8000','12000', 'Thaladred the Darkener - Trigger Creature Special'),
('2006402', '1', '36965', '0', '-1', '1', '0', '100', '1','4000','8000','7000','12000', 'Thaladred the Darkener - Rend on current'),
('2006402', '2', '30225', '0', '-1', '103', '0', '100', '1','5000','5000','7000','13000', 'Thaladred the Darkener - Silence on eligible aoe target'),
('2006402', '3', '36966', '0', '-1', '1', '0', '100', '1','25000','25000','20000','25000', 'Thaladred the Darkener - Psychic Blow on current');


UPDATE creature_template SET SpellList = 2006001 WHERE entry=20060;
DELETE FROM creature_spell_list_entry WHERE Id IN(2006001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2006001, 'The Eye - Lord Sanguinar', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2006001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2006001', '0', '44863', '0', '-1', '103', '0', '100', '1','10000','10000','30000','30000', 'Lord Sanguinar - Bellowing Roar on AOE eligible target');


UPDATE creature_template SET SpellList = 2006301 WHERE entry=20063;
DELETE FROM creature_spell_list_entry WHERE Id IN(2006301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2006301, 'The Eye - Master Engineer Telonicus', 0, 75);
DELETE FROM creature_spell_list WHERE Id IN(2006301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2006301', '0', '37036', '0', '-1', '1', '0', '100', '10','4000','4000','4000','5000', 'Master Engineer Telonicus - Bomb on current'),
('2006301', '1', '37027', '0', '-1', '121', '0', '100', '10','5000','5000','10000','15000', 'Master Engineer Telonicus - Remote Toy on random player aura not present'),
('2006301', '2', '16496', '2', '-1', '1', '0', '100', '1','0','0','0','0', 'Master Engineer Telonicus - Shoot on current');


UPDATE creature_template SET SpellList = 2006201 WHERE entry=20062;
DELETE FROM creature_spell_list_entry WHERE Id IN(2006201);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2006201, 'The Eye - Grand Astromancer Capernian', 0, 75);
DELETE FROM creature_spell_list WHERE Id IN(2006201);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2006201', '0', '37018', '0', '-1', '100', '0', '100', '10','20000','20000','16000','18000', 'Grand Astromancer Capernian - Conflagration on random player'),
('2006201', '1', '36970', '0', '-1', '103', '0', '100', '10','5000','5000','4000','6000', 'Grand Astromancer Capernian - Arcane Burst on AOE eligible target'),
('2006201', '2', '36971', '2', '-1', '1', '0', '100', '1','0','0','0','0', 'Grand Astromancer Capernian - Fireball');


UPDATE creature_template SET SpellList = 1962201 WHERE entry=19622;
DELETE FROM creature_spell_list_entry WHERE Id IN(1962201,1962202,1962203,1962204);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1962201, 'The Eye - Kael''thas Sunstrider Phase 4', 0, 75),
(1962202, 'The Eye - Kael''thas Sunstrider Phase 5 Initial', 0, 75),
(1962203, 'The Eye - Kael''thas Sunstrider Phase 5 Gravity', 0, 0),
(1962204, 'The Eye - Kael''thas Sunstrider Phase 5 Ground', 0, 75);
DELETE FROM creature_spell_list WHERE Id IN(1962201,1962202,1962203,1962204);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1962201', '0', '36805', '2', '-1', '1', '0', '100', '1','0','0','0','0', 'Kael''thas Sunstrider - Fireball on current'),
('1962201', '1', '36815', '0', '-1', '0', '0', '100', '10','60000','60000','60000','60000', 'Kael''thas Sunstrider - Shock Barrier (starts pyro sequence)'),
('1962201', '2', '36797', '0', '105', '0', '0', '100', '10','40000','40000','30000','30000', 'Kael''thas Sunstrider - Mind Control'),
('1962201', '3', '36723', '0', '-1', '0', '0', '100', '10','50000','50000','60000','60000', 'Kael''thas Sunstrider - Phoenix'),
('1962201', '4', '36834', '0', '-1', '0', '0', '100', '10','45000','45000','60000','60000', 'Kael''thas Sunstrider - Arcane Disruption'),
('1962201', '5', '36735', '0', '-1', '100', '0', '100', '10','30000','30000','30000','30000', 'Kael''thas Sunstrider - Flame Strike on random player');
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1962202', '0', '36805', '2', '-1', '1', '0', '100', '1','0','0','0','0', 'Kael''thas Sunstrider - Fireball on current'),
('1962202', '1', '35941', '0', '-1', '0', '0', '100', '100', '10000','10000','60000','60000', 'Kael''thas Sunstrider - Gravity Lapse');
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1962203', '0', '36815', '0', '-1', '0', '0', '100', '1','10000','10000','10000','10000', 'Kael''thas Sunstrider - Shock Barrier'),
('1962203', '1', '35865', '0', '-1', '0', '0', '100', '1','5000','5000','60000','60000', 'Kael''thas Sunstrider - Summon Nether Vapor'),
('1962203', '2', '35869', '0', '-1', '0', '0', '100', '1','8000','8000','2000','4000', 'Kael''thas Sunstrider - Nether Beam');
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1962204', '0', '36805', '2', '-1', '1', '0', '100', '1','0','0','0','0', 'Kael''thas Sunstrider - Fireball on current'),
('1962204', '1', '36723', '0', '-1', '0', '0', '100', '10','30000','35000','60000','60000', 'Kael''thas Sunstrider - Phoenix'),
('1962204', '2', '36834', '0', '-1', '0', '0', '100', '10','20000','25000','60000','60000', 'Kael''thas Sunstrider - Arcane Disruption'),
('1962204', '3', '36735', '0', '-1', '100', '0', '100', '10','30000','30000','60000','60000', 'Kael''thas Sunstrider - Flame Strike on random player'),
('1962204', '4', '35941', '0', '-1', '0', '0', '100', '100', '54000','54000','60000','60000', 'Kael''thas Sunstrider - Gravity Lapse');

