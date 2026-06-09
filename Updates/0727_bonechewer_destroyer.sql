-- Bonechewer Destroyer - 17271
-- Correct naming kock Away ->  Knock Away
-- Correct SpellID for Heroic Mortal Strike
DELETE FROM creature_spell_list WHERE Id IN (1727101, 1805201);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1727101, 1, 10101, 0, 1, 0, 100, 0, 21000, 36000, 12000, 25000, "Bonechewer Destroyer - Knock Away - on current"),
(1727101, 2, 16856, 0, 1, 0, 100, 0, 5000, 10000, 6000, 12000, "Bonechewer Destroyer - Mortal Strike - on current"),
-- heroic
(1805201, 1, 10101, 0, 1, 0, 100, 0, 21000, 36000, 12000, 25000, "Bonechewer Destroyer - Knock Away - on current"),
(1805201, 2, 15708, 0, 1, 0, 100, 0, 5000, 10000, 6000, 12000, "Bonechewer Destroyer - Mortal Strike - on current");