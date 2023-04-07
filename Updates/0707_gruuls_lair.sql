-- Gruul's lair trash 
-- spell_list for Lair Brute
DELETE FROM creature_spell_list WHERE Id = '1938901';
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1938901, 1, 24193, 0, 102, 0, 100, 0, 15000, 18000, 27000, 33000, "Lair Brute - Cast Charge - on random player casting"), 
(1938901, 2, 39171, 0, 1, 0, 100, 0, 5000, 10000, 8000, 12000, "Lair Brute - Mortal Strike - on current"), 
(1938901, 3, 39174, 0, 1, 0, 100, 0, 3000, 8000, 6000, 11000, "Lair Brute - Cleave - on current");

-- spell_list for Gronn-Priest
DELETE FROM creature_spell_list WHERE Id = '2135001';
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2135001, 1, 22884, 0, 103, 0, 100, 0, 5000, 15000, 12000, 19000, "Gronn-Priest - Psychic Scream - on AoE"), 
(2135001, 2, 36679, 0, 202, 0, 100, 0, 0, 5000, 15000, 18000, "Gronn-Priest - Renew - on missing 90% including self"),
(2135001, 3, 36678, 0, 201, 0, 100, 0, 0, 2000, 22000, 28000, "Gronn-Priest - Heal - on missing 50% including self");

DELETE FROM creature_spell_list_entry WHERE Id IN (1938901, 2135001);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1938901, "Gruuls\'Lair - Lair Brute", 0, 0),
(1938901, "Gruuls\'Lair - Gronn Priest", 0, 0);

UPDATE creature_template SET SpellList = '1938901' WHERE entry = '19389';
UPDATE creature_template SET SpellList = '2135001' WHERE entry = '21350';