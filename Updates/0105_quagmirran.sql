UPDATE creature_template SET SpellList = 1794201 WHERE entry=17942;
UPDATE creature_template SET SpellList = 1989401 WHERE entry=19894;
DELETE FROM creature_spell_list_entry WHERE Id IN(1794201,1989401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1794201, 'SP - Quagmirran - Normal', 0, 0),
(1989401, 'SP - Quagmirran - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1794201,1989401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1794201', '0', '40504', '0', '-1', '1', '0', '100', '1','8000','15000','15000','30000', 'Quagmirran - Cleave on Current'),
('1794201', '1', '32055', '0', '-1', '1', '0', '100', '1','10000','20000','15000','30000', 'Quagmirran - Uppercut on Current'),
('1794201', '2', '38153', '0', '-1', '100', '0', '100', '1','15000','18000','40000','50000', 'Quagmirran - Acid Spray on Random Player'),
('1794201', '3', '34780', '0', '-1', '1', '0', '100', '1','18000','22000','21000','32000', 'Quagmirran - Poison Volley on Current'),
('1989401', '0', '40504', '0', '-1', '1', '0', '100', '1','8000','15000','15000','30000', 'Quagmirran - Cleave on Current'),
('1989401', '1', '32055', '0', '-1', '1', '0', '100', '1','10000','20000','15000','30000', 'Quagmirran - Uppercut on Current'),
('1989401', '2', '38153', '0', '-1', '100', '0', '100', '1','15000','18000','40000','50000', 'Quagmirran - Acid Spray on Random Player'),
('1989401', '3', '39340', '0', '-1', '1', '0', '100', '1','18000','22000','21000','32000', 'Quagmirran - Poison Volley on Current');

