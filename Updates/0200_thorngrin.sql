UPDATE creature_template SET SpellList = 1797801 WHERE entry=17978;
UPDATE creature_template SET SpellList = 2158101 WHERE entry=21581;
DELETE FROM creature_spell_list_entry WHERE Id IN(1797801,2158101);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1797801, 'Botanica - Thorngrin the Tender - Normal', 0, 0),
(2158101, 'Botanica - Thorngrin the Tender - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1797801,2158101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1797801', '0', '34659', '0', '-1', '0', '0', '100', '1','4500','12500','16000','24000', 'Thorngrin the Tender - Hellfire'),
('1797801', '1', '34661', '0', '-1', '101', '0', '100', '1','7000','12000','22000','34000', 'Thorngrin the Tender - Sacrifice on random player non tank'),
('1797801', '2', '34670', '0', '-1', '0', '0', '100', '1','15000','30000','22000','40000', 'Thorngrin the Tender - Enrage'),
('2158101', '0', '39131', '0', '-1', '0', '0', '100', '1','4500','12500','16000','24000', 'Thorngrin the Tender - Hellfire'),
('2158101', '1', '34661', '0', '-1', '101', '0', '100', '1','7000','12000','22000','34000', 'Thorngrin the Tender - Sacrifice on random player non tank'),
('2158101', '2', '34670', '0', '-1', '0', '0', '100', '1','15000','30000','22000','40000', 'Thorngrin the Tender - Enrage');

UPDATE broadcast_text SET ChatTypeID=1,EmoteID1=53 WHERE Id=16961;


