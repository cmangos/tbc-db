-- Moroes Adds
-- Baroness Dorothea Millstipe 19875
-- Mana Burn on Random Mana User - high CD
-- Mind Flay on Current
UPDATE creature_template SET SpellList = 1987501 WHERE entry=19875;

DELETE FROM creature_spell_list_entry WHERE Id = '1987501';
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1987501, 'Karazhan - Baroness Dorothea Millstipe', 0, 0);

DELETE FROM creature_spell_list WHERE Id = '1987501';
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1987501', '0', '29405', '0', '-1', '107', '0', '100', '0','15000','30000','15000','30000', 'Baroness Dorothea Millstipe - Mana Burn - Random Mana User'),
('1987501', '1', '29570', '0', '-1', '1', '0', '100', '0','6000','15000','6500','16500', 'Baroness Dorothea Millstipe - Mind Flay - on Current');

-- Baron Rafe Dreuger 19874 
-- Hammer of Justice 13005 on Tank
-- Seal of Command 29385 on Self
-- Judgement of Command 29386 - on Current
UPDATE creature_template SET SpellList = 1987401 WHERE entry=19874;

DELETE FROM creature_spell_list_entry WHERE Id = '1987401';
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1987401, 'Karazhan - Baron Rafe Dreuger', 0, 0);

DELETE FROM creature_spell_list WHERE Id = '1987401';
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1987401', '0', '13005', '0', '-1', '1', '0', '100', '0','19000','33000','20000','35000', 'Baron Rafe Dreuger - Hammer of Justice - on Current'),
('1987401', '1', '29385', '0', '-1', '0', '0', '100', '0','5500','16000','16000','25000', 'Baron Rafe Dreuger - Seal of Command - on self'),
('1987401', '2', '29386', '0', '-1', '1', '0', '100', '0','14000','23000','19000','25000', 'Baron Rafe Dreuger - Judgement of Command - on Current');

-- Lord Robin Daris 19876
-- Harmstring on Current
-- Mortal Strike on Current
-- Whirlwind on Self
UPDATE creature_template SET SpellList = 1987601 WHERE entry=19876;

DELETE FROM creature_spell_list_entry WHERE Id = '1987601';
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1987601, 'Karazhan - Lord Robin Daris', 0, 0);

DELETE FROM creature_spell_list WHERE Id = '1987601';
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1987601', '0', '9080', '0', '-1', '1', '0', '100', '0','6000','15000','12500','30000', 'Lord Robin Daris - Harmstring - on Current'),
('1987601', '1', '29572', '0', '-1', '1', '0', '100', '0','14000','28000','19500','25000', 'Lord Robin Daris - Mortal Strike - on Current'),
('1987601', '2', '29573', '0', '-1', '0', '0', '100', '0','16000','23000','17000','29000', 'Lord Robin Daris - Whirlwind - on self');

-- Lord Crispin Ference 19873 
-- Disarm on Current
-- Heroic Strike on Current
-- Shield Bash on Casting
-- Shield Wall on Self unter 15% life
UPDATE creature_template SET SpellList = 1987301 WHERE entry=19873;

DELETE FROM creature_spell_list_entry WHERE Id = '1987301';
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1987301, 'Karazhan - Lord Crispin Ference', 0, 0);

DELETE FROM creature_spell_list WHERE Id = '1987301';
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1987301', '0', '8379', '0', '-1', '1', '0', '100', '0','14500','25000','20000','30000', 'Lord Crispin Ference - Harmstring - on Current'),
('1987301', '1', '29567', '0', '-1', '1', '0', '100', '0','8000','20000','14000','30000', 'Lord Crispin Ference - Heroic Strike - on Current'),
('1987301', '2', '11972', '0', '-1', '102', '0', '100', '0','8000','18000','12500','30000', 'Lord Crispin Ference - Shield Bash - on Casting');

-- Lady Catriona Von'Indi 19872
-- Power Word: Shield low CD on friendly missing buff including self 
-- Greater Heal - missing 75% health 
-- Dispel magic - dispel friendly including self
-- Holy Fire on Current Target
UPDATE creature_template SET SpellList = 1987201 WHERE entry=19872;

DELETE FROM creature_spell_list_entry WHERE Id = '1987201';
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1987201, 'Karazhan - Lady Catriona Von''Indi', 0, 0);

DELETE FROM creature_spell_list WHERE Id = '1987201';
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1987201', '0', '29408', '0', '-1', '5', '0', '100', '0','15000','25000','15000','25000', 'Lady Catriona Von''Indi - Power Word: Shield - friendly missing buff include self'),
('1987201', '1', '29564', '0', '-1', '206', '0', '100', '0','10000','30000','10000','30000', 'Lady Catriona Von''Indi - Greater Heal - missing 75% including self'),
('1987201', '2', '15090', '0', '-1', '3', '0', '100', '0','8000','23000','8000','23000', 'Lady Catriona Von''Indi - Dispel Magic - Hardcoded - eligible friendly dispel'),
('1987201', '3', '15090', '0', '-1', '100', '0', '100', '0','8000','23000','8000','23000', 'Lady Catriona Von''Indi - Dispel Magic - on Random'),
('1987201', '4', '29563', '0', '-1', '1', '0', '100', '0','20000','30000','20000','30000', 'Lady Catriona Von''Indi - Holy Fire - on Current');

-- Lady Keira Berrybuck 17007
-- Casts Holy Light (small) 29562 when friendly or self missing 50%
-- Casts Holy Light (big) 29383 when under 10% health on self only
-- Casts Divine Shield under 10%
-- Cleanses friendly units
-- Blessing of Might timer based
UPDATE creature_template SET SpellList = 1700701 WHERE entry=17007;

DELETE FROM creature_spell_list_entry WHERE Id = '1700701';
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1700701, 'Karazhan - Lady Keira Berrybuck', 0, 0);


DELETE FROM creature_spell_list WHERE Id = '1700701';
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1700701', '0', '29562', '0', '-1', '201', '0', '100', '0','3000','10000','3000','10000', 'Lady Keira Berrybuck - Holy Light - on friendly missing 50% including self'),
('1700701', '1', '29380', '0', '-1', '3', '0', '100', '0','6000','13000','5500','15000', 'Lady Keira Berrybuck - Cleanse - Hardcoded - eligible friendly dispel'),
('1700701', '2', '29381', '0', '-1', '1', '0', '100', '0','1000','5000','30000','40000', 'Lady Keira Berrybuck - Greater Blessing of Might - on self');

-- New creature_spell_target 
DELETE FROM creature_spell_targeting WHERE Id IN (106, 107, 206, 207);
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `UnitCondition`, `Comments`) VALUES 
-- taken from cmangos-wotlk
('106', '1', '0', '1', '6', '-1', 'Attack - random player non tank mana user'),
-- new one - including tank 
('107', '1', '0', '0', '6', '-1', 'Attack - random player mana user'),
('206', '2', '75', '1', '1', '-1', 'Support - missing 75% including self'),
('207', '2', '75', '1', '0', '-1', 'Support - missing 75% excluding self');