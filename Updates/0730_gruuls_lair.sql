-- Gruul's lair trash 
-- spell_list for Lair Brute
DELETE FROM creature_spell_list WHERE Id = '1938901';
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1938901, 1, 24193, 0, 100, 0, 100, 0, 15000, 20000, 25000, 35000, "Lair Brute - Cast Charge - Random Player"), -- Attack - random player!
(1938901, 2, 39171, 0, 1, 0, 100, 0, 6000, 12000, 8000, 12000, "Lair Brute - Mortal Strike - Current"), 
(1938901, 3, 39174, 0, 1, 0, 100, 0, 4000, 8000, 6000, 11000, "Lair Brute - Cleave - Current");

-- spell_list for Gronn-Priest
DELETE FROM creature_spell_list WHERE Id = '2135001';
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2135001, 1, 22884, 0, 103, 0, 100, 0, 8000, 16000, 15000, 25000, "Gronn-Priest - Psychic Scream - AoE"), 
(2135001, 2, 36679, 0, 201, 0, 100, 0, 5000, 10000, 10000, 20000, "Gronn-Priest - Renew - Missing 50% including self"); -- Support - Missing 50% including self!
-- (2135001, 3, 36678, 0, ???, 0, 100, 0, 10000, 10000, 20000, 30000, "Gronn-Priest - Heal - on missing 50% including self"); -- only self 50% 10sec init timer, can currently not be done in spelllists, keeping EAI!
-- ??? needs to be hardcoded, not possible to form such a targeting rule currently.

DELETE FROM creature_spell_list_entry WHERE Id IN (1938901, 2135001);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1938901, "Gruuls\'Lair - Lair Brute", 0, 0),
(1938901, "Gruuls\'Lair - Gronn Priest", 0, 0);

UPDATE creature_template SET SpellList = '1938901', `Detection` = 20 WHERE entry = '19389'; -- 18
UPDATE creature_template SET SpellList = '2135001', `Detection` = 20 WHERE entry = '21350'; -- 18

 -- https://youtu.be/ximDGCXUjP4?t=607
UPDATE `creature_template` SET `Detection` = 45 WHERE `entry` = 19044; -- 45~(+3bounding) - raw ~48

-- https://youtu.be/ximDGCXUjP4?t=39
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` = 18831; -- 25~(+3bounding) High King Maulgar - raw ~28
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` IN (18832,18834,18835,18836);

