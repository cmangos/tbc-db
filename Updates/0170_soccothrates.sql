UPDATE creature_template SET SpellList = 2088601 WHERE entry=20886;
UPDATE creature_template SET SpellList = 2162401 WHERE entry=21624;
DELETE FROM creature_spell_list_entry WHERE Id IN(2088601,2162401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2088601, 'Arcatraz - Wrath-Scryer Soccothrates - Normal', 0, 0),
(2162401, 'Arcatraz - Wrath-Scryer Soccothrates - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2088601,2162401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2088601', '0', '35759', '0', '-1', '1', '0', '100', '1','10000','13000','35000','45000', 'Wrath-Scryer Soccothrates - Felfire Shock on Current'),
('2088601', '1', '36512', '0', '-1', '0', '0', '100', '1','22000','25000','30000','35000', 'Wrath-Scryer Soccothrates - Knock Away'),
('2162401', '0', '39006', '0', '-1', '1', '0', '100', '1','10000','13000','35000','45000', 'Wrath-Scryer Soccothrates - Felfire Shock on Current'),
('2162401', '1', '36512', '0', '-1', '0', '0', '100', '1','22000','25000','30000','35000', 'Wrath-Scryer Soccothrates - Knock Away');


