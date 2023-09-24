UPDATE creature_template SET SpellList = 1798201 WHERE entry=17982;
DELETE FROM creature_spell_list_entry WHERE Id IN(1798201);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1798201, 'Bloodmyst Isle - Demolitionist Legoso', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1798201);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1798201', '0', '8056', '0', '-1', '1', '0', '100', '1','5000','10000','10000','15000', 'Demolitionist Legoso - Frost Shock on current'),
('1798201', '1', '31633', '0', '-1', '0', '0', '100', '1','15000','20000','20000','30000', 'Demolitionist Legoso - Strength of Earth Totem'),
('1798201', '2', '38116', '0', '-1', '0', '0', '100', '1','10000','15000','20000','30000', 'Demolitionist Legoso - Searing Totem');


