UPDATE creature_template SET SpellList = 1786201 WHERE entry=17862;
UPDATE creature_template SET SpellList = 2052101 WHERE entry=20521;
DELETE FROM creature_spell_list_entry WHERE Id IN(1786201,2052101);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1786201, 'OHF - Captain Skarloc - Normal', 0, 0),
(2052101, 'OHF - Captain Skarloc - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1786201,2052101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1786201', '0', '8258', '0', '-1', '0', '0', '100', '0','8000','8000','240000','240000', 'Captain Skarloc - Devotion Aura'),
('1786201', '1', '31904', '0', '-1', '0', '0', '100', '0','2000','10000','14000','21000', 'Captain Skarloc - Holy Shield'),
('1786201', '2', '13005', '0', '-1', '1', '0', '100', '0','7100','9200','10000','16000', 'Captain Skarloc - Hammer of Justice on Current'),
('1786201', '3', '29380', '0', '-1', '3', '0', '100', '0','5000','10000','10000','14000', 'Captain Skarloc - Cleanse on Friendly Dispel'),
('1786201', '4', '29427', '0', '-1', '204', '0', '100', '0','5000','10000','13300','15700', 'Captain Skarloc - Holy Light on Friendly missing 50% HP'),
('2052101', '0', '8258', '0', '-1', '0', '0', '100', '0','8000','8000','240000','240000', 'Captain Skarloc - Devotion Aura'),
('2052101', '1', '31904', '0', '-1', '0', '0', '100', '0','2000','10000','14000','21000', 'Captain Skarloc - Holy Shield'),
('2052101', '2', '13005', '0', '-1', '1', '0', '100', '0','5100','7200','10000','13000', 'Captain Skarloc - Hammer of Justice on Current'),
('2052101', '3', '29380', '0', '-1', '3', '0', '100', '0','5000','10000','10000','14000', 'Captain Skarloc - Cleanse on Friendly Dispel'),
('2052101', '4', '29427', '0', '-1', '204', '0', '100', '0','5000','10000','13300','15700', 'Captain Skarloc - Holy Light on Friendly missing 50% HP'),
('2052101', '5', '38385', '0', '-1', '0', '0', '100', '0','3000','9000','11000','13000', 'Captain Skarloc - Consecration');

UPDATE creature_template SET SpellList = 1783301 WHERE entry=17833;
UPDATE creature_template SET SpellList = 2053001 WHERE entry=20530;
DELETE FROM creature_spell_list_entry WHERE Id IN(1783301,2053001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1783301, 'OHF - Durnholde Warden - Normal', 0, 0),
(2053001, 'OHF - Durnholde Warden - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1783301,2053001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1783301', '0', '15654', '0', '-1', '1', '0', '100', '0','3800','8400','10800','24100', 'Durnholde Warden - Shadow Word: Pain on Current'),
('1783301', '1', '22884', '0', '-1', '0', '0', '100', '0','18800','33800','30100','48300', 'Durnholde Warden - Psychic Scream'),
('1783301', '2', '17201', '0', '-1', '3', '0', '100', '0','7000','12000','10000','16000', 'Durnholde Warden - Dispel Magic on Friendly Dispel'),
('1783301', '3', '15586', '0', '-1', '204', '0', '100', '0','5000','10000','12100','18200', 'Durnholde Warden - Heal on Friendly missing 50%'),
('2053001', '0', '34941', '0', '-1', '1', '0', '100', '0','3800','8400','10800','24100', 'Durnholde Warden - Shadow Word: Pain on Current'),
('2053001', '1', '22884', '0', '-1', '0', '0', '100', '0','18800','33800','30100','48300', 'Durnholde Warden - Psychic Scream'),
('2053001', '2', '17201', '0', '-1', '3', '0', '100', '0','7000','12000','10000','16000', 'Durnholde Warden - Dispel Magic on Friendly Dispel'),
('2053001', '3', '22883', '0', '-1', '204', '0', '100', '0','5000','10000','12100','18200', 'Durnholde Warden - Heal on Friendly missing 50%');

UPDATE creature_template SET SpellList = 1786001 WHERE entry=17860;
UPDATE creature_template SET SpellList = 2052901 WHERE entry=20529;
DELETE FROM creature_spell_list_entry WHERE Id IN(1786001,2052901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1786001, 'OHF - Durnholde Veteran - Normal', 0, 0),
(2052901, 'OHF - Durnholde Veteran - Heroic', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1786001,2052901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1786001', '0', '15581', '0', '-1', '1', '0', '100', '0','4800','10900','3600','10900', 'Durnholde Veteran - Sinister Strike on Current'),
('1786001', '1', '15582', '0', '-1', '1', '0', '100', '0','5000','10000','10000','12200', 'Durnholde Veteran - Backstab on Current'),
('2052901', '0', '15581', '0', '-1', '1', '0', '100', '0','4800','10900','3600','10900', 'Durnholde Veteran - Sinister Strike on Current'),
('2052901', '1', '15582', '0', '-1', '1', '0', '100', '0','5000','10000','10000','12200', 'Durnholde Veteran - Backstab on Current');


