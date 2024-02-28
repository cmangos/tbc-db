-- Hellfire Ramparts caster AI updates
-- correct timers

-- Bleeding Hollow Darkcaster - 17269
DELETE FROM creature_spell_list WHERE Id IN (1726901, 1804901);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1726901, 1, 20754, 0, 1, 0, 100, 0, 16000, 28000, 20000, 45000, "Bleeding Hollow Darkcaster - Rain of Fire - on current"),
(1726901, 2, 15241, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Bleeding Hollow Darkcaster - Scorch - on current"),
-- heroic
(1804901, 1, 36808, 0, 1, 0, 100, 0, 16000, 28000, 20000, 45000, "Bleeding Hollow Darkcaster - Rain of Fire - on current"),
(1804901, 2, 36807, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Bleeding Hollow Darkcaster - Scorch - on current");

-- Hellfire Watcher 17309
-- Heal and Renew when someone is missing 50% health including self
DELETE FROM creature_spell_list WHERE Id IN (1730901, 1805801);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1730901, 1, 8362, 0, 201, 0, 100, 0, 2000, 10000, 12000, 19000, "Hellfire Watcher - Renew - on friendly missing 50% including self"),
(1730901, 2, 12039, 0, 201, 0, 100, 0, 3000, 11000, 13000, 27000, "Hellfire Watcher - Heal - on friendly missing 50% including self"),
(1730901, 3, 14032, 0, 1, 0, 100, 0, 6000, 15000, 33000, 40000, "Hellfire Watcher - Shadow Word: Pain - on current"),
-- heroic
(1805801, 1, 8362, 0, 201, 0, 100, 0, 2000, 10000, 12000, 19000, "Hellfire Watcher - Renew - on friendly missing 50% including self"),
(1805801, 2, 12039, 0, 201, 0, 100, 0, 3000, 11000, 13000, 27000, "Hellfire Watcher - Heal - on friendly missing 50% including self"),
(1805801, 3, 14032, 0, 1, 0, 100, 0, 6000, 15000, 33000, 40000, "Hellfire Watcher - Shadow Word: Pain - on current");

-- Bleeding Hollow Scryer 17478
DELETE FROM creature_spell_list WHERE Id IN (1747801, 1805001);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1747801, 1, 30615, 0, 101, 0, 100, 0, 6600, 23500, 17100, 23800, "Bleeding Hollow Scryer - Fear - random not tank"),
(1747801, 2, 12471, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Bleeding Hollow Scryer - Shadowbolt - on current"),
-- heroic
(1805001, 1, 30615, 0, 101, 0, 100, 0, 6600, 23500, 17100, 23800, "Bleeding Hollow Scryer - Fear - random not tank"),
(1805001, 2, 15232, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Bleeding Hollow Scryer - Shadowbolt - on current");
