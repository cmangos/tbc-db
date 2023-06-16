UPDATE creature_template SET SpellList = 1784801 WHERE entry=17848;
UPDATE creature_template SET SpellList = 2053501 WHERE entry=20535;
DELETE FROM creature_spell_list_entry WHERE Id IN(1784801,2053501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1784801, 'OHF - Lieutenant Drake - Normal', 0, 0),
(2053501, 'OHF - Lieutenant Drake - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1784801,2053501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1784801', '0', '33789', '0', '-1', '1', '0', '100', '4','18500','22500','25000','35000', 'Lieutenant Drake - Frightening Shout on Current'),
('1784801', '1', '31909', '0', '-1', '0', '0', '100', '2', '12300','14500','18100','22900', 'Lieutenant Drake - Whirlwind'),
('1784801', '2', '31911', '0', '-1', '1', '0', '100', '1', '7400','11900','14900','24800', 'Lieutenant Drake - Mortal Strike on Current'),
('1784801', '3', '9080', '0', '-1', '100', '0', '100', '1', '6100','7200','6100','22900', 'Lieutenant Drake - Hamstring on Current'),
('1784801', '4', '33792', '0', '-1', '101', '0', '100', '4', '20500','24100','12100','26600', 'Lieutenant Drake - Exploding Shot on Random Player non tank');
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2053501', '0', '33789', '0', '-1', '1', '0', '100', '4','18500','22500','25000','35000', 'Lieutenant Drake - Frightening Shout on Current'),
('2053501', '1', '31909', '0', '-1', '0', '0', '100', '2', '12300','14500','18100','22900', 'Lieutenant Drake - Whirlwind'),
('2053501', '2', '31911', '0', '-1', '1', '0', '100', '1', '7400','11900','14900','24800', 'Lieutenant Drake - Mortal Strike on Current'),
('2053501', '3', '9080', '0', '-1', '100', '0', '100', '1', '6100','7200','6100','22900', 'Lieutenant Drake - Hamstring on Current'),
('2053501', '4', '33792', '0', '-1', '101', '0', '100', '4', '20500','24100','12100','26600', 'Lieutenant Drake - Exploding Shot on Random Player non tank');


