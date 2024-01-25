-- Correct Shadowmoon Acolyte timers
DELETE FROM creature_spell_list WHERE Id IN (1659401, 2057601);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1659401, 1, 15585, 0, 201, 0, 100, 0, 16000, 25000, 16000, 25000, "Shadowmoon Acolyte (Normal) - Prayer of Healing - Missing 50% including self"),
(1659401, 2, 35944, 0, 202, 0, 100, 0, 10000, 20000, 11000, 26000, "Shadowmoon Acolyte (Normal) - Power Word: Shield - Missing 90% including self"),
(1659401, 3, 31516, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Shadowmoon Acolyte (Normal) - Mind Blast - on Current"),
-- heroic
(2057601, 1, 35943, 0, 201, 0, 100, 0, 16000, 25000, 16000, 25000, "Shadowmoon Acolyte (Normal) - Prayer of Healing - Missing 50% including self"),
(2057601, 2, 36052, 0, 202, 0, 100, 0, 10000, 20000, 11000, 26000, "Shadowmoon Acolyte (Normal) - Power Word: Shield - Missing 90% including self"),
(2057601, 3, 15587, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Shadowmoon Acolyte (Normal) - Mind Blast - on Current");



-- Correct some more CallForHelp for shattered halls npcs
UPDATE creature_template SET CallForHelp = '6' WHERE entry IN (16699, 16704, 17083);
-- Same for Heroic
UPDATE creature_template SET CallForHelp = '6' WHERE entry IN (20590, 20567, 20594);


-- Shattered Hand Legionnaire Aura of Discipline handled via sd2 script
DELETE FROM creature_template_addon WHERE entry = 16700;
