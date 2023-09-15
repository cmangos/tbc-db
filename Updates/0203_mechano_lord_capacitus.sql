UPDATE creature_template SET SpellList = 1921901 WHERE entry=19219;
UPDATE creature_template SET SpellList = 2153301 WHERE entry=21533;
DELETE FROM creature_spell_list_entry WHERE Id IN(1921901,2153301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1921901, 'Mechanar - Mechano-Lord Capacitus - Normal', 0, 0),
(2153301, 'Mechanar - Mechano-Lord Capacitus - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1921901,2153301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1921901', '0', '35161', '0', '-1', '1', '0', '100', '1','16100','18600','19500','33500', 'Mechano-Lord Capacitus - Head Crack on current'),
('1921901', '1', '26662', '0', '-1', '0', '0', '100', '1','180000','180000','300000','300000', 'Mechano-Lord Capacitus - Berserk'),
('1921901', '2', '35159', '0', '-1', '0', '0', '100', '1','15000','15000','0','0', 'Mechano-Lord Capacitus - Reflective Damage Shield'),
('1921901', '3', '35158', '0', '-1', '0', '0', '100', '1','35000','35000','0','0', 'Mechano-Lord Capacitus - Reflective Magic Shield'),

('2153301', '0', '35161', '0', '-1', '1', '0', '100', '1','16100','18600','19500','33500', 'Mechano-Lord Capacitus - Head Crack on current'),
('2153301', '1', '26662', '0', '-1', '0', '0', '100', '1','180000','180000','300000','300000', 'Mechano-Lord Capacitus - Berserk'),
('2153301', '2', '39096', '0', '-1', '0', '0', '100', '1','30000','30000','27000','34000', 'Mechano-Lord Capacitus - Polarity Shift');



