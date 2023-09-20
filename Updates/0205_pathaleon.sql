UPDATE creature_template SET SpellList = 1922001 WHERE entry=19220;
UPDATE creature_template SET SpellList = 2153701 WHERE entry=21537;
DELETE FROM creature_spell_list_entry WHERE Id IN(1922001,2153701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1922001, 'Mechanar - Pathaleon the Calculator - Normal', 0, 0),
(2153701, 'Mechanar - Pathaleon the Calculator - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1922001,2153701);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1922001', '0', '36021', '0', '-1', '105', '0', '100', '1','2000','9000','16000','34000', 'Pathaleon the Calculator - Mana tap on random mana player'),
('1922001', '1', '36022', '0', '-1', '0', '0', '100', '1','11000','24000','40000','52000', 'Pathaleon the Calculator - Arcane Torrent'),
('1922001', '2', '35280', '0', '-1', '101', '0', '100', '1','25000','40000','25000','30000', 'Pathaleon the Calculator - Domination on random player non tank'),
('1922001', '3', '36992', '0', '872', '0', '0', '100', '1','0','0','600000','600000', 'Pathaleon the Calculator - Enrage below 20'),
('1922001', '4', '35284', '0', '1075', '0', '0', '100', '1','12000','23000','45000','50000', 'Pathaleon the Calculator - Summon Nether Wraiths above 20'),
('1922001', '5', '35289', '0', '1075', '0', '0', '100', '1','31000','42000','55000','84000', 'Pathaleon the Calculator - Disgruntled Anger above 20'),
('2153701', '0', '36021', '0', '-1', '105', '0', '100', '1','2000','9000','16000','34000', 'Pathaleon the Calculator - Mana tap on random mana player'),
('2153701', '1', '36022', '0', '-1', '0', '0', '100', '1','11000','24000','40000','52000', 'Pathaleon the Calculator - Arcane Torrent'),
('2153701', '2', '35280', '0', '-1', '101', '0', '100', '1','25000','40000','25000','30000', 'Pathaleon the Calculator - Domination on random player non tank'),
('2153701', '3', '36992', '0', '872', '0', '0', '100', '1','0','0','600000','600000', 'Pathaleon the Calculator - Enrage below 20'),
('2153701', '4', '35284', '0', '1075', '0', '0', '100', '1','12000','23000','45000','50000', 'Pathaleon the Calculator - Summon Nether Wraiths above 20'),
('2153701', '5', '35289', '0', '1075', '0', '0', '100', '1','31000','42000','55000','84000', 'Pathaleon the Calculator - Disgruntled Anger above 20'),
('2153701', '6', '15453', '0', '-1', '0', '0', '100', '1','18000','45000','13000','25000', 'Pathaleon the Calculator - Arcane Explosion');

UPDATE creature_template SET SpellList = 2106201 WHERE entry=21062;
UPDATE creature_template SET SpellList = 2153501 WHERE entry=21535;
DELETE FROM creature_spell_list_entry WHERE Id IN(2106201,2153501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2106201, 'Mechanar - Nether Wraith - Normal', 0, 0),
(2153501, 'Mechanar - Nether Wraith - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2106201,2153501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2106201', '0', '20720', '0', '-1', '100', '0', '100', '1','2000','8000','5000','10000', 'Nether Wraith - Arcane Bolt on random player'),
('2153501', '0', '20720', '0', '-1', '100', '0', '100', '1','2000','8000','5000','10000', 'Nether Wraith - Arcane Bolt on random player');


