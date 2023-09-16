UPDATE creature_template SET SpellList = 1922101 WHERE entry=19221;
UPDATE creature_template SET SpellList = 2153601 WHERE entry=21536;
DELETE FROM creature_spell_list_entry WHERE Id IN(1922101,2153601);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1922101, 'Mechanar - Nethermancer Sepethrea - Normal', 0, 0),
(2153601, 'Mechanar - Nethermancer Sepethrea - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1922101,2153601);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1922101', '0', '35314', '0', '-1', '1', '0', '100', '1','14000','25000','15000','30000', 'Nethermancer Sepethrea - Arcane Blast on current'),
('1922101', '1', '35250', '0', '-1', '', '0', '100', '1','20000','26000','20000','35000', 'Nethermancer Sepethrea - Dragon''s Breath'),
('2153601', '0', '35314', '0', '-1', '1', '0', '100', '1','14000','25000','15000','30000', 'Nethermancer Sepethrea - Arcane Blast on current'),
('2153601', '1', '35250', '0', '-1', '', '0', '100', '1','20000','26000','20000','35000', 'Nethermancer Sepethrea - Dragon''s Breath');

UPDATE creature_template SET SpellList = 2048101 WHERE entry=20481;
UPDATE creature_template SET SpellList = 2153801 WHERE entry=21538;
DELETE FROM creature_spell_list_entry WHERE Id IN(2048101,2153801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2048101, 'Mechanar - Raging Flames - Normal', 0, 0),
(2153801, 'Mechanar - Raging Flames - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2048101,2153801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2048101', '0', '35268', '0', '-1', '0', '0', '100', '1','15700','30000','15700','28900', 'Raging Flames - Inferno'),
('2153801', '0', '39346', '0', '-1', '0', '0', '100', '1','15700','30000','15700','28900', 'Raging Flames - Inferno');


