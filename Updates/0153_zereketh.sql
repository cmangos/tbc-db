-- has to have player only flag unless confirmed - and adjusted comment style for easier reading
UPDATE creature_spell_targeting SET Param3=Param3|2, Comments='Attack - random player non tank aura not present' WHERE Id=120;
UPDATE creature_spell_targeting SET Param3=Param3|2, Comments='Attack - random player aura not present' WHERE Id=121;
UPDATE creature_template SET SpellList = 2087001 WHERE entry=20870;
UPDATE creature_template SET SpellList = 2162601 WHERE entry=21626;
DELETE FROM creature_spell_list_entry WHERE Id IN(2087001,2162601);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2087001, 'Arcatraz - Zereketh the Unbound - Normal', 0, 0),
(2162601, 'Arcatraz - Zereketh the Unbound - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2087001,2162601);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2087001', '0', '36119', '0', '-1', '100', '0', '100', '1','9000','15000','13000','17000', 'Zereketh the Unbound - Void Zone on Random Player'),
('2087001', '1', '36123', '0', '-1', '121', '0', '100', '1','14000','21000','14000','21000', 'Zereketh the Unbound - Seed of Corruption on Random Player aura not present'),
('2087001', '2', '36127', '0', '-1', '0', '0', '100', '1','15000','21000','35000','45000', 'Zereketh the Unbound - Shadow Nova'),
('2162601', '0', '36119', '0', '-1', '100', '0', '100', '1','9000','15000','13000','17000', 'Zereketh the Unbound - Void Zone on Random Player'),
('2162601', '1', '39367', '0', '-1', '121', '0', '100', '1','12000','18000','12000','18000', 'Zereketh the Unbound - Seed of Corruption on Random Player aura not present'),
('2162601', '2', '39005', '0', '-1', '0', '0', '100', '1','15000','23000','30000','40000', 'Zereketh the Unbound - Shadow Nova');


