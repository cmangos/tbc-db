UPDATE creature_template SET SpellList = 2293001 WHERE entry=22930;
DELETE FROM creature_spell_list_entry WHERE Id IN(2293001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2293001, 'MT - Yor', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2293001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2293001', '0', '36405', '0', '721', '101', '0', '100', '1','15000','15000','20000','20000', 'Yor - Stomp - If one target in melee at least'),
('2293001', '1', '38361', '0', '-1', '101', '0', '100', '1','8000','8000','9000','14000', 'Yor - Double Breath');


