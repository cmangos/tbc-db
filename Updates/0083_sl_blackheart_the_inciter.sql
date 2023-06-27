DELETE FROM creature_spell_targeting WHERE Id IN(107,108);
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, UnitCondition, Comments) VALUES
('107', '1', '0', '0', '130', '-1', 'Attack - random player not in melee'),
('108', '1', '0', '1', '130', '-1', 'Attack - random player non tank not in melee');
UPDATE creature_template SET SpellList = 1866701 WHERE entry=18667;
UPDATE creature_template SET SpellList = 2063701 WHERE entry=20637;
DELETE FROM creature_spell_list_entry WHERE Id IN(1866701,2063701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1866701, 'SL - Blackheart the Inciter - Normal', 0, 0),
(2063701, 'SL - Blackheart the Inciter - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1866701,2063701);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1866701', '0', '33676', '0', '105', '0', '0', '100', '10','18000','24000','52000','60000', 'Blackheart the Inciter - Incite Chaos'),
('1866701', '1', '33709', '0', '-1', '108', '0', '100', '10','30000','50000','26000','44000', 'Blackheart the Inciter - Charge on Random non tank not in melee'),
('1866701', '2', '33707', '0', '-1', '0', '0', '100', '5','10000','14000','15000','30000', 'Blackheart the Inciter - War Stomp'),
('2063701', '0', '33676', '0', '105', '0', '0', '100', '10','12000','17000','52000','60000', 'Blackheart the Inciter - Incite Chaos'),
('2063701', '1', '33709', '0', '-1', '108', '0', '100', '10','30000','50000','26000','44000', 'Blackheart the Inciter - Charge on Random non tank not in melee'),
('2063701', '2', '33707', '0', '-1', '0', '0', '100', '5','10000','14000','15000','30000', 'Blackheart the Inciter - War Stomp');

UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10486 WHERE Id IN(17563);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10497 WHERE Id IN(17565);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10491 WHERE Id IN(17569);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10487 WHERE Id IN(16433);


