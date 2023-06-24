DELETE FROM creature_spell_targeting WHERE Id IN(105,106); -- already in wotlk
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, UnitCondition, Comments) VALUES
('105', '1', '0', '0', '2', '-1', 'Attack - random player mana user'),
('106', '1', '0', '1', '2', '-1', 'Attack - random player non tank mana user');
UPDATE creature_template SET SpellList = 2303501 WHERE entry=23035;
DELETE FROM creature_spell_list_entry WHERE Id IN(2303501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2303501, 'SH - Anzu - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2303501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2303501', '0', '40199', '0', '-1', '1', '0', '100', '1','9000','10000','10000','20000', 'Anzu - Flesh Rip on Current'),
('2303501', '1', '40184', '0', '-1', '0', '0', '100', '1','23000','23000','31000','35000', 'Anzu - Screech'),
('2303501', '2', '40303', '0', '-1', '105', '0', '100', '1','17000','17000','24000','40000', 'Anzu - Spell Bomb on Random mana user'),
('2303501', '3', '40321', '0', '-1', '101', '0', '100', '1','5000','5000','21000','21000', 'Anzu - Cyclone on Random non tank'),
('2303501', '4', '40279', '0', '-1', '101', '0', '100', '1','10000','10000','20000','20000', 'Anzu - Dive on Random non tank');

UPDATE broadcast_text SET ChatTypeID=1, EmoteID1=35 WHERE Id IN(20797);
UPDATE broadcast_text SET ChatTypeID=1 WHERE Id IN(20799);
UPDATE broadcast_text SET ChatTypeID=1 WHERE Id IN(20991);
UPDATE broadcast_text SET ChatTypeID=5 WHERE Id IN(21015);
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN(20980);
UPDATE broadcast_text SET ChatTypeID=5 WHERE Id IN(21016);
UPDATE broadcast_text SET ChatTypeID=5 WHERE Id IN(21017);



