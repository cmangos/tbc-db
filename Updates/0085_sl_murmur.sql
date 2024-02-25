DELETE FROM creature_spell_targeting WHERE Id IN(109,110);
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, UnitCondition, Comments) VALUES
('109', '1', '0', '0', '66', '-1', 'Attack - random player in melee'),
('110', '1', '0', '1', '66', '-1', 'Attack - random player non tank in melee');
UPDATE creature_template SET SpellList = 1870801 WHERE entry=18708;
UPDATE creature_template SET SpellList = 2065701 WHERE entry=20657;
DELETE FROM creature_spell_list_entry WHERE Id IN(1870801,2065701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1870801, 'SL - Murmur - Normal', 0, 0),
(2065701, 'SL - Murmur - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1870801,2065701);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1870801', '0', '33923', '0', '-1', '0', '0', '100', '1','31000','38000','31000','38000', 'Murmur - Sonic Boom'),
('1870801', '1', '33711', '0', '-1', '0', '0', '100', '1','21000','21000','21000','21000', 'Murmur - Murmur''s Touch'),
('1870801', '2', '33689', '0', '-1', '100', '0', '100', '1','21000','30000','21000','30000', 'Murmur - Magnetic Pull on Random player'),
('1870801', '3', '33657', '0', '321', '0', '0', '100', '1','5000','12000','5000','12000', 'Murmur - Resonance'),
('2065701', '0', '38796', '0', '-1', '0', '0', '100', '1','31000','38000','31000','38000', 'Murmur - Sonic Boom'),
('2065701', '1', '38794', '0', '-1', '0', '0', '100', '1','29000','40000','29000','40000', 'Murmur - Murmur''s Touch'),
('2065701', '2', '38797', '0', '-1', '109', '0', '100', '1','3000','10000','3000','10000', 'Murmur - Sonic Shock on Random player in melee'),
('2065701', '3', '33657', '0', '321', '0', '0', '100', '1','5000','12000','5000','12000', 'Murmur - Resonance'),
('2065701', '4', '39365', '0', '1232', '0', '0', '100', '1','6000','10000','6000','10000', 'Murmur - Thundering Storm');

UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN(18799);

