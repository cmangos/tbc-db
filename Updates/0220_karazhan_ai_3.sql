-- Coldmist Widow
UPDATE creature_template SET SpellList = 1617101 WHERE entry=16171;

DELETE FROM creature_spell_list_entry WHERE Id = 1617101;

INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1617101, 'Karazhan - Coldmist Widow', 0, 0);

DELETE FROM creature_spell_list WHERE Id = 1617101;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1617101', '0', '29292', '0', '-1', '2', '0', '100', '1','9000','14000','14000','20000', 'Coldmist Widow - Frost Mist - on self'),
('1617101', '1', '29293', '0', '-1', '1', '0', '100', '1','5000','10000','9000','22000', 'Coldmist Widow - Poison Volley - on current');