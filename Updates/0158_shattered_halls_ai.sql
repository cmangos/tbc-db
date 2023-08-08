-- Shattered Halls creature_event_ai into creature_spell_list
-- Shattered Hand Sentry - 16507
DELETE FROM creature_spell_list WHERE Id IN (1650701, 2059301);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1650701, 1, 31553, 0, 1, 0, 100, 0, 5000, 20000, 6000, 20000, "Shattered Hand Sentry (Normal) - Hamstring - on Current"),
(1650701, 2, 22911, 0, 102, 0, 100, 0, 6000, 10000, 10000, 30000, "Shattered Hand Sentry (Normal) - Charge - on random Casting"),
-- Heroic
(2059301, 1, 31553, 0, 1, 0, 100, 0, 5000, 20000, 6000, 20000, "Shattered Hand Sentry (Heroic) - Hamstring - on Current"),
(2059301, 2, 37511, 0, 102, 0, 100, 0, 6000, 10000, 10000, 30000, "Shattered Hand Sentry (Heroic) - Charge - on random Casting");


DELETE FROM creature_spell_list_entry WHERE Id IN (1650701, 2059301);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1650701, "Shattered Halls - Shattered Hand Sentry - Normal", 0, 0),
(2059301, "Shattered Halls - Shattered Hand Sentry - Heroic", 0, 0);

UPDATE `creature_template` SET SpellList=1650701 WHERE entry = 16507;
UPDATE `creature_template` SET SpellList=2059301 WHERE entry = 20593;

-- Shattered Hand Savage - 16523
DELETE FROM creature_spell_list WHERE Id IN (1652301, 2059101);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1652301, 1, 30470, 0, 2, 0, 100, 0, 3000, 16000, 21000, 35000, "Shattered Hand Savage (Normal) - Slice and Dice - on Self"),
-- Heroic
(2059101, 1, 30470, 0, 2, 0, 100, 0, 3000, 16000, 21000, 35000, "Shattered Hand Savage (Heroic) - Slice and Dice - on Self");


DELETE FROM creature_spell_list_entry WHERE Id IN (1652301, 2059101);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1652301, "Shattered Halls - Shattered Hand Savage - Normal", 0, 0),
(2059101, "Shattered Halls - Shattered Hand Savage - Heroic", 0, 0);

UPDATE `creature_template` SET SpellList=1652301 WHERE entry = 16523;
UPDATE `creature_template` SET SpellList=2059101 WHERE entry = 20591;


-- Shattered Hand Brawler - 16593
DELETE FROM creature_spell_list WHERE Id IN (1659301, 2058201);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1659301, 1, 36020, 0, 120, 0, 100, 0, 16000, 25000, 16000, 25000, "Shattered Hand Brawler (Normal) - Curse of Shattered Hand - ATTACKING_TARGET_TOPAGGRO - SELECT_FLAG_NOT_AURA"),
(1659301, 2, 36033, 0, 102, 0, 100, 0, 2500, 15000, 6000, 20000, "Shattered Hand Brawler (Normal) - Kick - on random Casting"),
-- Heroic
(2058201, 1, 36020, 0, 120, 0, 100, 0, 16000, 25000, 16000, 25000, "Shattered Hand Brawler (Heroic) - Curse of Shattered Hand - ATTACKING_TARGET_TOPAGGRO - SELECT_FLAG_NOT_AURA"),
(2058201, 2, 36033, 0, 102, 0, 100, 0, 2500, 15000, 6000, 20000, "Shattered Hand Brawler (Heroic) - Kick - on random Casting");


DELETE FROM creature_spell_list_entry WHERE Id IN (1659301, 2058201);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1659301, "Shattered Halls - Shattered Hand Brawler - Normal", 0, 0),
(2058201, "Shattered Halls - Shattered Hand Brawler - Heroic", 0, 0);

UPDATE `creature_template` SET SpellList=1659301 WHERE entry = 16593;
UPDATE `creature_template` SET SpellList=2058201 WHERE entry = 20582;


-- Shadowmoon Acolyte 16594
DELETE FROM creature_spell_list WHERE Id IN (1659401, 2057601);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1659401, 1, 15585, 0, 201, 0, 100, 0, 16000, 25000, 16000, 25000, "Shadowmoon Acolyte (Normal) - Prayer of Healing - Missing 50% including self"),
(1659401, 2, 35944, 0, 202, 0, 100, 0, 10000, 20000, 11000, 26000, "Shadowmoon Acolyte (Normal) - Power Word: Shield - Missing 90% including self"),
(1659401, 3, 31516, 2, 1, 0, 100, 0, 2500, 5000, 2500, 5000, "Shadowmoon Acolyte (Normal) - Mind Blast - on Current"),
-- heroic
(2057601, 1, 35943, 0, 201, 0, 100, 0, 16000, 25000, 16000, 25000, "Shadowmoon Acolyte (Normal) - Prayer of Healing - Missing 50% including self"),
(2057601, 2, 36052, 0, 202, 0, 100, 0, 10000, 20000, 11000, 26000, "Shadowmoon Acolyte (Normal) - Power Word: Shield - Missing 90% including self"),
(2057601, 3, 15587, 2, 1, 0, 100, 0, 2500, 5000, 2500, 5000, "Shadowmoon Acolyte (Normal) - Mind Blast - on Current");

DELETE FROM creature_spell_list_entry WHERE Id IN (1659401, 2057601);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1659401, "Shattered Halls - Shadowmoon Acolyte - Normal", 0, 80),
(2057601, "Shattered Halls - Shadowmoon Acolyte - Heroic", 0, 80);

UPDATE `creature_template` SET SpellList=1659401 WHERE entry = 16594;
UPDATE `creature_template` SET SpellList=2057601 WHERE entry = 20576;

