UPDATE creature_template SET SpellList = 2091201 WHERE entry=20912;
UPDATE creature_template SET SpellList = 2159901 WHERE entry=21599;
DELETE FROM creature_spell_list_entry WHERE Id IN(2091201,2159901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2091201, 'Arcatraz - Harbinger Skyriss - Normal', 0, 0),
(2159901, 'Arcatraz - Harbinger Skyriss - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2091201,2159901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2091201', '0', '36924', '0', '-1', '101', '0', '100', '1','3000','3000','8000','8000', 'Harbinger Skyriss - Mind Rend on Random non tank'),
('2091201', '1', '39415', '0', '-1', '101', '0', '100', '1','15000','15000','25000','25000', 'Harbinger Skyriss - Fear on Random non tank'),
('2091201', '2', '37162', '0', '-1', '101', '0', '100', '1','30000','30000','16000','32000', 'Harbinger Skyriss - Domination on Random non tank'),
('2159901', '0', '39017', '0', '-1', '101', '0', '100', '1','3000','3000','8000','8000', 'Harbinger Skyriss - Mind Rend on Random non tank'),
('2159901', '1', '39415', '0', '-1', '101', '0', '100', '1','15000','15000','25000','25000', 'Harbinger Skyriss - Fear on Random non tank'),
('2159901', '2', '39019', '0', '-1', '101', '0', '100', '1','30000','30000','16000','32000', 'Harbinger Skyriss - Complete Domination on Random non tank'),
('2159901', '3', '39020', '0', '-1', '106', '0', '100', '1','25000','25000','16000','32000', 'Harbinger Skyriss - Mana Burn on Random non tank mana user');


