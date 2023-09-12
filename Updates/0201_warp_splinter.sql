-- source - 3 0 9 - changed in 7 3 5
UPDATE creature_model_info SET bounding_radius=2,combat_reach=4 WHERE modelid=19438;

UPDATE creature_template SET SpellList = 1797701 WHERE entry=17977;
UPDATE creature_template SET SpellList = 2158201 WHERE entry=21582;
DELETE FROM creature_spell_list_entry WHERE Id IN(1797701,2158201);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1797701, 'Botanica - Warp Splinter - Normal', 0, 0),
(2158201, 'Botanica - Warp Splinter - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1797701,2158201);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1797701', '0', '34716', '0', '-1', '0', '0', '100', '1','6000','7000','17000','38000', 'Warp Splinter - Stomp'),
('1797701', '1', '36705', '0', '-1', '0', '0', '100', '1','12000','14500','16000','38000', 'Warp Splinter - Arcane Volley'),
('1797701', '2', '34741', '0', '-1', '0', '0', '100', '1','25000','35000','37000','55000', 'Warp Splinter - Summon Saplings'),
('2158201', '0', '34716', '0', '-1', '0', '0', '100', '1','6000','7000','17000','38000', 'Warp Splinter - Stomp'),
('2158201', '1', '39133', '0', '-1', '0', '0', '100', '1','12000','14500','16000','38000', 'Warp Splinter - Arcane Volley'),
('2158201', '2', '34741', '0', '-1', '0', '0', '100', '1','25000','35000','37000','55000', 'Warp Splinter - Summon Saplings');

