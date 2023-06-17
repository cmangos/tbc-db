-- arranged by class in lowest 2 spots
DELETE FROM creature_spell_list_entry WHERE Id IN(1844101,1844102,1844103,1844104,1844105,1844106,1844107,1844108,1844109,1844111);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1844101, 'AC - Stolen Soul - Warrior', 0, 0),
(1844102, 'AC - Stolen Soul - Paladin', 0, 0),
(1844103, 'AC - Stolen Soul - Hunter', 0, 0),
(1844104, 'AC - Stolen Soul - Rogue', 0, 0),
(1844105, 'AC - Stolen Soul - Priest', 0, 0),
-- (1844106, 'AC - Stolen Soul - Death Knight', 0, 0), -- uncomment in wotlk
(1844107, 'AC - Stolen Soul - Shaman', 0, 0),
(1844108, 'AC - Stolen Soul - Mage', 0, 0),
(1844109, 'AC - Stolen Soul - Warlock', 0, 0),
(1844111, 'AC - Stolen Soul - Druid', 0, 0);

DELETE FROM creature_spell_list WHERE Id IN(1844101,1844102,1844103,1844104,1844105,1844106,1844107,1844108,1844109,1844111);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1844101', '0', '37335', '0', '-1', '101', '1', '100', '1','1000','1000','6000','6000', 'Stolen Soul - Mortal Strike on Current'),
('1844102', '0', '37369', '0', '-1', '101', '1', '100', '1','1000','1000','6000','6000', 'Stolen Soul - Hammer of Justice on Current'),
('1844103', '0', '37368', '0', '-1', '101', '0', '100', '1','1000','1000','20000','20000', 'Stolen Soul - Freezing Trap'),
('1844104', '0', '37331', '0', '-1', '101', '1', '100', '1','1000','1000','10000','10000', 'Stolen Soul - Hemorrhage on Current'),
('1844105', '0', '37330', '0', '-1', '101', '1', '100', '1','1000','1000','5000','5000', 'Stolen Soul - Mind Flay on Current'),
-- ('1844106', '0', '58339', '0', '-1', '101', '1', '100', '1','1000','1000','10000','10000', 'Stolen Soul - Plague Strike'),
('1844107', '0', '37332', '0', '-1', '101', '1', '100', '1','1000','1000','8000','8000', 'Stolen Soul - Frost Shock'),
('1844108', '0', '37329', '0', '-1', '101', '1', '100', '1','1000','1000','5000','5000', 'Stolen Soul - Fireball'),
('1844109', '0', '37334', '0', '-1', '101', '1', '100', '1','1000','1000','20000','20000', 'Stolen Soul - Curse of Agony'),
('1844111', '0', '37328', '0', '-1', '101', '1', '100', '1','1000','1000','10000','10000', 'Stolen Soul - Moonfire');


UPDATE creature_template SET SpellList = 1837301 WHERE entry=18373;
UPDATE creature_template SET SpellList = 2030601 WHERE entry=20306;
DELETE FROM creature_spell_list_entry WHERE Id IN(1837301,2030601);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1837301, 'AC - Exarch Maladaar - Normal', 0, 0),
(2030601, 'AC - Exarch Maladaar - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1837301,2030601);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1837301', '0', '32346', '0', '-1', '101', '0', '100', '5','19000','31000','35000','67000', 'Exarch Maladaar - Stolen Soul on random player'),
('1837301', '1', '32422', '0', '-1', '101', '0', '100', '1','4000','8000','4000','18000', 'Exarch Maladaar - Ribbon of Souls on random player'),
('1837301', '2', '32421', '0', '-1', '0', '0', '100', '2','11000','29000','13000','30000', 'Exarch Maladaar - Soul Scream'),
('2030601', '0', '32346', '0', '-1', '101', '0', '100', '5','19000','31000','35000','67000', 'Exarch Maladaar - Stolen Soul on random player'),
('2030601', '1', '32422', '0', '-1', '101', '0', '100', '1','4000','8000','4000','18000', 'Exarch Maladaar - Ribbon of Souls on random player'),
('2030601', '2', '32421', '0', '-1', '0', '0', '100', '2','11000','29000','13000','30000', 'Exarch Maladaar - Soul Scream');

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10512 WHERE Id IN(15466);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10513 WHERE Id IN(17647);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10514 WHERE Id IN(17648);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10515 WHERE Id IN(17649);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10510 WHERE Id IN(17644);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10511 WHERE Id IN(17645);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10516 WHERE Id IN(17650);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10517 WHERE Id IN(17651);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10518 WHERE Id IN(17646);


