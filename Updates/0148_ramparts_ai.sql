-- ====================================
-- Hellfire Ramparts creature_ai rework into creature_spell_list
-- ====================================

-- Bonechewer Hungerer - 17259
DELETE FROM creature_spell_list WHERE Id IN (1725901, 1805301);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1725901, 1, 14516, 0, 1, 0, 100, 0, 4500, 20000, 1000, 20000, "Bonechewer Hungerer - Strik - on current"),
(1725901, 2, 6713, 0, 1, 0, 100, 0, 4000, 25000, 6000, 28000, "Bonechewer Hungerer - Disarm - on current"),
(1725901, 3, 16244, 0, 2, 0, 100, 0, 1000, 19000, 10000, 20000, "Bonechewer Hungerer - Demoralizing Shout - on self"),
-- heroic
(1805301, 1, 14516, 0, 1, 0, 100, 0, 4500, 20000, 1000, 20000, "Bonechewer Hungerer - Strik - on current"),
(1805301, 2, 6713, 0, 1, 0, 100, 0, 4000, 25000, 6000, 28000, "Bonechewer Hungerer - Disarm - on current"),
(1805301, 3, 16244, 0, 2, 0, 100, 0, 1000, 19000, 10000, 20000, "Bonechewer Hungerer - Demoralizing Shout - on self");


DELETE FROM creature_spell_list_entry WHERE Id IN (1725901, 1805301);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1725901, "Hellfire Ramparts - Bonechewer Hungerer - Normal", 0, 0),
(1805301, "Hellfire Ramparts - Bonechewer Hungerer - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1725901' WHERE entry = '17259';
UPDATE creature_template SET SpellList = '1805301' WHERE entry = '18053';

-- Bonechewer Ravener - 17264
DELETE FROM creature_spell_list WHERE Id IN (1726401, 1805401);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1726401, 1, 30621, 0, 1, 0, 100, 0, 5000, 19000, 21000, 30000, "Bonechewer Ravener - Kidney Shot - on current"),
-- heroic
(1805401, 1, 30621, 0, 1, 0, 100, 0, 5000, 19000, 21000, 30000, "Bonechewer Ravener - Kidney Shot - on current");


DELETE FROM creature_spell_list_entry WHERE Id IN (1726401, 1805301);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1726401, "Hellfire Ramparts - Bonechewer Ravener - Normal", 0, 0),
(1805401, "Hellfire Ramparts - Bonechewer Ravener - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1726401' WHERE entry = '17264';
UPDATE creature_template SET SpellList = '1805401' WHERE entry = '18054';

-- Bleeding Hollow Darkcaster - 17269
DELETE FROM creature_spell_list WHERE Id IN (1726901, 1804901);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1726901, 1, 20754, 0, 1, 0, 100, 0, 16000, 28000, 20000, 45000, "Bleeding Hollow Darkcaster - Rain of Fire - on current"),
(1726901, 2, 15241, 2, 1, 0, 100, 0, 1400, 3600, 1500, 3600, "Bleeding Hollow Darkcaster - Scorch - on current"),
-- heroic
(1804901, 1, 36808, 0, 1, 0, 100, 0, 16000, 28000, 20000, 45000, "Bleeding Hollow Darkcaster - Rain of Fire - on current"),
(1804901, 2, 36807, 2, 1, 0, 100, 0, 1400, 3600, 1500, 3600, "Bleeding Hollow Darkcaster - Scorch - on current");


DELETE FROM creature_spell_list_entry WHERE Id IN (1726901, 1805301);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1726901, "Hellfire Ramparts - Bleeding Hollow Darkcaster - Normal", 0, 0),
(1804901, "Hellfire Ramparts - Bleeding Hollow Darkcaster - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1726901' WHERE entry = '17269';
UPDATE creature_template SET SpellList = '1804901' WHERE entry = '18049';

-- Bleeding Hollow Archer - 17270
DELETE FROM creature_spell_list WHERE Id IN (1727001, 1804801);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1727001, 1, 30614, 0, 1, 0, 100, 0, 12100, 15300, 13300, 18200, "Bleeding Hollow Archer - Aimed Shot - on current"),
(1727001, 2, 18651, 0, 1, 0, 100, 0, 13000, 16000, 14000, 19000, "Bleeding Hollow Archer - Multi Shot - on random"),
-- heroic
(1804801, 1, 30614, 0, 1, 0, 100, 0, 12100, 15300, 13300, 18200, "Bleeding Hollow Archer - Aimed Shot - on current"),
(1804801, 2, 31942, 0, 1, 0, 100, 0, 13000, 16000, 14000, 19000, "Bleeding Hollow Archer - Multi Shot - on random");



DELETE FROM creature_spell_list_entry WHERE Id IN (1727001, 1805301);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1727001, "Hellfire Ramparts - Bleeding Hollow Archer - Normal", 0, 0),
(1804801, "Hellfire Ramparts - Bleeding Hollow Archer - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1727001' WHERE entry = '17270';
UPDATE creature_template SET SpellList = '1804801' WHERE entry = '18048';

-- Bonechewer Destroyer - 17271
DELETE FROM creature_spell_list WHERE Id IN (1727101, 1805201);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1727101, 1, 10101, 0, 1, 0, 100, 0, 21000, 36000, 12000, 25000, "Bonechewer Destroyer - Kock Away - on current"),
(1727101, 2, 16856, 0, 1, 0, 100, 0, 5000, 10000, 6000, 12000, "Bonechewer Destroyer - Mortal Strike - on current"),
-- heroic
(1805201, 1, 10101, 0, 1, 0, 100, 0, 21000, 36000, 12000, 25000, "Bonechewer Destroyer - Kock Away - on current"),
(1805201, 2, 16856, 0, 1, 0, 100, 0, 5000, 10000, 6000, 12000, "Bonechewer Destroyer - Mortal Strike - on current");


DELETE FROM creature_spell_list_entry WHERE Id IN (1727101, 1805201);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1727101, "Hellfire Ramparts - Bonechewer Destroyer - Normal", 0, 0),
(1805201, "Hellfire Ramparts - Bonechewer Destroyer - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1727101' WHERE entry = '17271';
UPDATE creature_template SET SpellList = '1805201' WHERE entry = '18052';

-- Shattered Hand Warhound 17280
DELETE FROM creature_spell_list WHERE Id IN (1728001, 1805901);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1728001, 1, 30636, 0, 1, 0, 100, 0, 1000, 3100, 13000, 21000, "Shattered Hand Warhound - Furious Howl - on current"),
(1728001, 2, 30639, 0, 1, 0, 100, 0, 2300, 8600, 3600, 8400, "Shattered Hand Warhound - Carnivorous Bite - on current"),
-- heroic
(1805901, 1, 30636, 0, 1, 0, 100, 0, 1000, 3100, 13000, 21000, "Shattered Hand Warhound - Furious Howl - on current"),
(1805901, 2, 30639, 0, 1, 0, 100, 0, 2300, 8600, 3600, 8400, "Shattered Hand Warhound - Carnivorous Bite - on current");


DELETE FROM creature_spell_list_entry WHERE Id IN (1728001, 1805901);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1728001, "Hellfire Ramparts - Shattered Hand Warhound - Normal", 0, 0),
(1805901, "Hellfire Ramparts - Shattered Hand Warhound - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1728001' WHERE entry = '17280';
UPDATE creature_template SET SpellList = '1805901' WHERE entry = '18059';

-- Bonechewer Ripper 17281
DELETE FROM creature_spell_list WHERE Id IN (1728101, 1805501);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1728101, 1, 18501, 0, 1, 0, 100, 0, 700, 1000, 12000, 19000, "Bonechewer Ripper - Enrage - on current"),
-- heroic
(1805501, 1, 18501, 0, 1, 0, 100, 0, 700, 1000, 12000, 19000, "Bonechewer Ripper - Enrage - on current");

DELETE FROM creature_spell_list_entry WHERE Id IN (1728101, 1805501);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1728101, "Hellfire Ramparts - Bonechewer Ripper - Normal", 0, 0),
(1805501, "Hellfire Ramparts - Bonechewer Ripper - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1728101' WHERE entry = '17281';
UPDATE creature_template SET SpellList = '1805501' WHERE entry = '18055';


-- Hellfire Watcher 17309
-- Heal and Renew when someone is missing 50% health including self
-- ToDo:
-- recheck heroic diff, Heal (30643) 
DELETE FROM creature_spell_list WHERE Id IN (1730901, 1805801);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1730901, 1, 8362, 0, 1, 0, 100, 0, 2000, 10000, 12000, 19000, "Hellfire Watcher - Renew - on friendly missing 50% including self"),
(1730901, 2, 12039, 0, 201, 0, 100, 0, 2000, 10000, 12000, 27000, "Hellfire Watcher - Heal - on friendly missing 50% including self"),
(1730901, 3, 14032, 0, 201, 0, 100, 0, 6000, 15000, 33000, 40000, "Hellfire Watcher - Shadow Word: Pain - on current"),
-- heroic
(1805801, 1, 8362, 0, 1, 0, 100, 0, 2000, 10000, 12000, 19000, "Hellfire Watcher - Renew - on friendly missing 50% including self"),
(1805801, 2, 12039, 0, 201, 0, 100, 0, 2000, 10000, 12000, 27000, "Hellfire Watcher - Heal - on friendly missing 50% including self"),
(1805801, 3, 14032, 0, 201, 0, 100, 0, 6000, 15000, 33000, 40000, "Hellfire Watcher - Shadow Word: Pain - on current");

DELETE FROM creature_spell_list_entry WHERE Id IN (1730901, 1805801);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1730901, "Hellfire Ramparts - Hellfire Watcher - Normal", 0, 0),
(1805801, "Hellfire Ramparts - Hellfire Watcher - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1730901' WHERE entry = '17309';
UPDATE creature_template SET SpellList = '1805801' WHERE entry = '18058';

-- Bonechewer Beastmaster 17455
DELETE FROM creature_spell_list WHERE Id IN (1745501, 1805101);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1745501, 1, 9128, 0, 2, 0, 100, 0, 4200, 12400, 15200, 20500, "Bonechewer Beastmaster - Battle Shout - on self"),
(1745501, 2, 10966, 0, 1, 0, 100, 0, 1200, 10400, 10800, 20500, "Bonechewer Beastmaster - Uppercut - on current"),
-- heroic
(1805101, 1, 9128, 0, 2, 0, 100, 0, 4200, 12400, 15200, 20500, "Bonechewer Beastmaster - Battle Shout - on self"),
(1805101, 2, 10966, 0, 1, 0, 100, 0, 1200, 10400, 10800, 20500, "Bonechewer Beastmaster - Uppercut - on current");

DELETE FROM creature_spell_list_entry WHERE Id IN (1730901, 1805801);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1745501, "Hellfire Ramparts - Bonechewer Beastmaster - Normal", 0, 0),
(1805101, "Hellfire Ramparts - Bonechewer Beastmaster - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1745501' WHERE entry = '17455';
UPDATE creature_template SET SpellList = '1805101' WHERE entry = '18051';

-- Bleeding Hollow Scryer 17478
DELETE FROM creature_spell_list WHERE Id IN (1747801, 1805001);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1747801, 1, 30615, 0, 101, 0, 100, 0, 6600, 23500, 17100, 23800, "Bleeding Hollow Scryer - Fear - random not tank"),
(1747801, 2, 12471, 2, 1, 0, 100, 0, 3600, 4800, 3600, 4800, "Bleeding Hollow Scryer - Shadowbolt - on current"),
-- heroic
(1805001, 1, 30615, 0, 101, 0, 100, 0, 6600, 23500, 17100, 23800, "Bleeding Hollow Scryer - Fear - random not tank"),
(1805001, 2, 15232, 2, 1, 0, 100, 0, 3600, 4800, 3600, 4800, "Bleeding Hollow Scryer - Shadowbolt - on current");

DELETE FROM creature_spell_list_entry WHERE Id IN (1730901, 1805001);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1747801, "Hellfire Ramparts - Bleeding Hollow Scryer - Normal", 0, 0),
(1805001, "Hellfire Ramparts - Bleeding Hollow Scryer - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1747801' WHERE entry = '17478';
UPDATE creature_template SET SpellList = '1805001' WHERE entry = '18050';

-- Hellfire Sentry 17517
DELETE FROM creature_spell_list WHERE Id IN (1751701, 1805701);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1751701, 1, 30621, 0, 1, 0, 100, 0, 1200, 7900, 20800, 24100, "Hellfire Sentry - Kidney Shot - on Current"),
-- heroic
(1805701, 1, 30621, 0, 1, 0, 100, 0, 1200, 7900, 20800, 24100, "Hellfire Sentry - Kidney Shot - on Current");

DELETE FROM creature_spell_list_entry WHERE Id IN (1730901, 1805001);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1751701, "Hellfire Ramparts - Hellfire Sentry - Normal", 0, 0),
(1805701, "Hellfire Ramparts - Hellfire Sentry - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1751701' WHERE entry = '17517';
UPDATE creature_template SET SpellList = '1805701' WHERE entry = '18057';

-- Fiendish Hound 17540
DELETE FROM creature_spell_list WHERE Id IN (1754001, 1805601);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1754001, 1, 15785, 0, 105, 0, 100, 0, 2000, 8000, 11000, 13000, "Fiendish Hound - Mana Burn - on mana user"),
-- heroic
(1805601, 1, 15785, 0, 105, 0, 100, 0, 2000, 8000, 11000, 13000, "Fiendish Hound - Mana Burn - on mana user");

DELETE FROM creature_spell_list_entry WHERE Id IN (1730901, 1805001);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1754001, "Hellfire Ramparts - Fiendish Hound - Normal", 0, 0),
(1805601, "Hellfire Ramparts - Fiendish Hound - Heroic", 0, 0);

UPDATE creature_template SET SpellList = '1754001' WHERE entry = '17540';
UPDATE creature_template SET SpellList = '1805601' WHERE entry = '18056';
