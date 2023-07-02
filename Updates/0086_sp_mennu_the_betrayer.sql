UPDATE creature_model_info SET combat_reach=1 WHERE modelid=17728; -- afaik 1 is default when not sent
UPDATE creature_template SET SpellList = 1794101 WHERE entry=17941;
UPDATE creature_template SET SpellList = 1989301 WHERE entry=19893;
DELETE FROM creature_spell_list_entry WHERE Id IN(1794101,1989301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1794101, 'SP - Mennu the Betrayer - Normal', 0, 0),
(1989301, 'SP - Mennu the Betrayer - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1794101,1989301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1794101', '0', '31985', '0', '-1', '0', '0', '100', '1','13700','18000','25400','33800', 'Mennu the Betrayer - Tainted Stoneskin Totem'),
('1794101', '1', '31981', '0', '-1', '0', '0', '100', '1','19200','23300','26200','26200', 'Mennu the Betrayer - Tainted Earthgrab Totem'),
('1794101', '2', '31991', '0', '-1', '0', '0', '100', '1','20200','30600','26200','26200', 'Mennu the Betrayer - Corrupted Nova Totem'),
('1794101', '3', '34980', '0', '361', '0', '0', '100', '1','15000','20000','15700','22900', 'Mennu the Betrayer - Mennu''s Healing Ward'),
('1794101', '4', '35010', '0', '-1', '1', '0', '100', '1','12100','18500','19300','29100', 'Mennu the Betrayer - Lightning Bolt on Current'),
('1989301', '0', '31985', '0', '-1', '0', '0', '100', '1','13700','18000','25400','33800', 'Mennu the Betrayer - Tainted Stoneskin Totem'),
('1989301', '1', '31981', '0', '-1', '0', '0', '100', '1','19200','23300','26200','26200', 'Mennu the Betrayer - Tainted Earthgrab Totem'),
('1989301', '2', '31991', '0', '-1', '0', '0', '100', '1','20200','30600','26200','26200', 'Mennu the Betrayer - Corrupted Nova Totem'),
('1989301', '3', '34980', '0', '361', '0', '0', '100', '1','15000','20000','15700','22900', 'Mennu the Betrayer - Mennu''s Healing Ward'),
('1989301', '4', '35010', '0', '-1', '1', '0', '100', '1','12100','18500','19300','29100', 'Mennu the Betrayer - Lightning Bolt on Current');



