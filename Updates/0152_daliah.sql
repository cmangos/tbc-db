UPDATE creature_template SET SpellList = 2088501 WHERE entry=20885;
UPDATE creature_template SET SpellList = 2159001 WHERE entry=21590;
DELETE FROM creature_spell_list_entry WHERE Id IN(2088501,2159001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2088501, 'Arcatraz - Dalliah the Doomsayer - Normal', 0, 0),
(2159001, 'Arcatraz - Dalliah the Doomsayer - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2088501,2159001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2088501', '0', '36173', '0', '-1', '1', '0', '100', '1','4000','7000','14000','19000', 'Dalliah the Doomsayer - Gift of the Doomsayer on Current'),
('2088501', '1', '36142', '0', '-1', '0', '0', '100', '1','15000','15000','25000','30000', 'Dalliah the Doomsayer - Whirlwind'),
('2159001', '0', '39009', '0', '-1', '1', '0', '100', '1','4000','7000','14000','19000', 'Dalliah the Doomsayer - Gift of the Doomsayer on Current'),
('2159001', '1', '36142', '0', '-1', '0', '0', '100', '1','15000','15000','25000','30000', 'Dalliah the Doomsayer - Whirlwind'),
('2159001', '2', '39016', '0', '-1', '100', '0', '100', '1','9000','13000','13000','17000', 'Dalliah the Doomsayer - Shadow Wave on Random Player');


