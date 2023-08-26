UPDATE creature_template SET SpellList = 1797501 WHERE entry=17975;
UPDATE creature_template SET SpellList = 2155801 WHERE entry=21558;
DELETE FROM creature_spell_list_entry WHERE Id IN(1797501,2155801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1797501, 'Botanica - High Botanist Freywinn - Normal', 0, 0),
(1797502, 'Botanica - High Botanist Freywinn - Normal - Tree Form', 0, 0),
(2155801, 'Botanica - High Botanist Freywinn - Heroic', 0, 0),
(2155802, 'Botanica - High Botanist Freywinn - Heroic - Tree Form', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1797501,1797502,2155801,2155802);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1797501', '0', '34759', '0', '-1', '0', '0', '100', '1','5000','5000','5000','5000', 'High Botanist Freywinn - Plant White Seedling'),
('1797501', '1', '34761	', '0', '-1', '0', '0', '100', '1','5000','5000','5000','5000', 'High Botanist Freywinn - Plant Green Seedling'),
('1797501', '2', '34762', '0', '-1', '0', '0', '100', '1','5000','5000','5000','5000', 'High Botanist Freywinn - Plant Blue Seedling'),
('1797501', '3', '34763', '0', '-1', '0', '0', '100', '1','5000','5000','5000','5000', 'High Botanist Freywinn - Plant Red Seedling'),
('1797501', '4', '34551', '0', '-1', '0', '0', '100', '1','30000','30000','75000','75000', 'High Botanist Freywinn - Tree Form'),
('1797502', '0', '34550', '0', '-1', '0', '0', '100', '1','1000','1000','46000','46000', 'High Botanist Freywinn - Tranquility'),

('2155801', '0', '34759', '0', '-1', '0', '0', '100', '1','5000','5000','5000','5000', 'High Botanist Freywinn - Plant White Seedling'),
('2155801', '1', '34761	', '0', '-1', '0', '0', '100', '1','5000','5000','5000','5000', 'High Botanist Freywinn - Plant Green Seedling'),
('2155801', '2', '34762', '0', '-1', '0', '0', '100', '1','5000','5000','5000','5000', 'High Botanist Freywinn - Plant Blue Seedling'),
('2155801', '3', '34763', '0', '-1', '0', '0', '100', '1','5000','5000','5000','5000', 'High Botanist Freywinn - Plant Red Seedling'),
('2155801', '4', '34551', '0', '-1', '0', '0', '100', '1','30000','30000','75000','75000', 'High Botanist Freywinn - Tree Form'),
('2155802', '0', '34550', '0', '-1', '0', '0', '100', '1','1000','1000','600000','600000', 'High Botanist Freywinn - Tranquility');


