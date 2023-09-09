UPDATE creature_model_info SET bounding_radius=2,combat_reach=3 WHERE modelid IN(13109,14213,13110,14112,14214);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN(17980,21559);
UPDATE spell_target_position SET target_position_x=-185,target_position_y=376,target_position_z=-15.6,target_orientation=0.506146013736724853 WHERE Id IN(34682);
UPDATE spell_target_position SET target_position_x=-185,target_position_y=376,target_position_z=-15.6,target_orientation=0.506146013736724853 WHERE Id IN(34681);
UPDATE spell_target_position SET target_position_x=-185,target_position_y=407,target_position_z=-15.6,target_orientation=6.126110076904296875 WHERE Id IN(34684);
UPDATE spell_target_position SET target_position_x=-185,target_position_y=407,target_position_z=-15.6,target_orientation=6.126110076904296875 WHERE Id IN(34685);
UPDATE spell_target_position SET target_orientation=0.017452999949455261 WHERE Id IN(34673);


UPDATE creature_template SET SpellList = 1798001 WHERE entry=17980;
UPDATE creature_template SET SpellList = 2155901 WHERE entry=21559;
DELETE FROM creature_spell_list_entry WHERE Id IN(1798001,2155901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1798001, 'Botanica - Laj - Normal', 0, 0),
(2155901, 'Botanica - Laj - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1798001,2155901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1798001', '0', '34697', '0', '-1', '1', '0', '100', '1','8500','30000','21000','32000', 'Laj - Allergic Reaction on current'),
('1798001', '1', '34673', '0', '-1', '0', '0', '100', '1','17000','26000','25000','33000', 'Laj - Teleport Self'),
('1798001', '2', '3391', '0', '-1', '0', '0', '100', '1','3600','5000','10000','24000', 'Laj - Thrash'),
('1798001', '3', '34703', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Arcane'),
('1798001', '4', '34704', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Fire'),
('1798001', '5', '34705', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Frost'),
('1798001', '6', '34707', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Nature'),
('1798001', '7', '34710', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Shadow'),
('2155901', '0', '34697', '0', '-1', '1', '0', '100', '1','8500','30000','21000','32000', 'Laj - Allergic Reaction on current'),
('2155901', '1', '34673', '0', '-1', '0', '0', '100', '1','17000','26000','25000','33000', 'Laj - Teleport Self'),
('2155901', '2', '3391', '0', '-1', '0', '0', '100', '1','3600','5000','10000','24000', 'Laj - Thrash'),
('2155901', '3', '34703', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Arcane'),
('2155901', '4', '34704', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Fire'),
('2155901', '5', '34705', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Frost'),
('2155901', '6', '34707', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Nature'),
('2155901', '7', '34710', '0', '-1', '0', '0', '100', '1','30000','30000','25000','40000', 'Laj - Laj Shadow');

