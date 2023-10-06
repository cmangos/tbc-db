-- Coldmist Widow
UPDATE creature_template SET SpellList = 1617101 WHERE entry=16171;

DELETE FROM creature_spell_list_entry WHERE Id = 1617101;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1617101, 'Karazhan - Coldmist Widow', 0, 0);

DELETE FROM creature_spell_list WHERE Id = 1617101;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1617101', '0', '29292', '0', '-1', '2', '0', '100', '1','9000','14000','14000','20000', 'Coldmist Widow - Frost Mist - on self'),
('1617101', '1', '29293', '0', '-1', '1', '0', '100', '1','5000','10000','9000','22000', 'Coldmist Widow - Poison Volley - on current');

-- Shadow Bat
UPDATE creature_template SET SpellList = 1617301 WHERE entry=16173;

DELETE FROM creature_spell_list_entry WHERE Id = 1617301;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1617301, 'Karazhan - Shadowbat', 0, 0);

DELETE FROM creature_spell_list WHERE Id = 1617301;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1617301', '0', '29298', '0', '-1', '2', '0', '100', '1','5000','10000','7000','11000', 'Shadowbat - Dark Shriek - on self');

-- Greater Shadowbat
UPDATE creature_template SET SpellList = 1617401 WHERE entry=16174;

DELETE FROM creature_spell_list_entry WHERE Id = 1617401;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1617401, 'Karazhan - Greater Shadowbat', 0, 0);

DELETE FROM creature_spell_list WHERE Id = 1617401;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1617401', '0', '29303', '0', '-1', '2', '0', '100', '1','7000','11000','11000','16000', 'Greater Shadowbat - Wing Beat - on self'),
('1617401', '1', '29300', '0', '-1', '100', '0', '100', '1','4000','7000','7000','10000', 'Greater Shadowbat - Sonic Blast - on random');

-- Hyakiss the Lurker
UPDATE creature_template SET SpellList = 1617901 WHERE entry=16179;

DELETE FROM creature_spell_list_entry WHERE Id = 1617901;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1617901, 'Karazhan - Hyakiss the Lurker', 0, 0);

DELETE FROM creature_spell_list WHERE Id = 1617901;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1617901', '0', '29896', '0', '-1', '1', '0', '100', '1','9000','17000','17000','23000', 'Hyakiss the Lurker - Hyakiss Web - on current'),
('1617901', '1', '29901', '0', '-1', '1', '0', '100', '1','7000','11000','11000','20000', 'Hyakiss the Lurker - Acidic Fang - on random');

-- Shadikith the Glider
UPDATE creature_template SET SpellList = 1618001 WHERE entry=16180;

DELETE FROM creature_spell_list_entry WHERE Id = 1618001;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1618001, 'Karazhan - Shadikith the Glider', 0, 0);

DELETE FROM creature_spell_list WHERE Id = 1618001;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1618001', '0', '29903', '0', '-1', '111', '0', '100', '1','11000','20000','20000','40000', 'Shadikith the Glider - Dive - on ATTACKING_TARGET_FARTHEST_AWAY'),
('1618001', '1', '29904', '0', '-1', '2', '0', '100', '1','10000','15000','12000','15000', 'Shadikith the Glider - Sonic Burst - on self'),
('1618001', '2', '29905', '0', '-1', '2', '0', '100', '1','7000','11000','8000','12000', 'Shadikith the Glider - Wing Buffet - on self');


-- Rokad the Ravager
UPDATE creature_template SET SpellList = 1618101 WHERE entry=16181;

DELETE FROM creature_spell_list_entry WHERE Id = 1618101;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1618101, 'Karazhan - Rokad the Ravager', 0, 0);

DELETE FROM creature_spell_list WHERE Id = 1618101;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1618101', '0', '29906', '0', '-1', '1', '0', '100', '1','8000','12000','12000','16000', 'Rokad the Ravager - Ravage - on current');