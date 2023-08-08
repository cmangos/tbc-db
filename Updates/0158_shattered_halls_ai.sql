-- Shattered Halls creature_event_ai into creature_spell_list
-- Shattered Hand Sentry - 16507
DELETE FROM creature_spell_list WHERE Id IN (1650701, 2059301);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1650701, 1, 31553, 0, 1, 0, 100, 0, 5000, 20000, 6000, 20000, "Shattered Hand Sentry (Normal) - Hamstring - on Current"),
(1650701, 2, 22911, 0, 102, 0, 100, 0, 6000, 10000, 10000, 30000, "Shattered Hand Sentry (Normal) - Charge - on random Castin"),
-- Heroic
(2059301, 1, 31553, 0, 1, 0, 100, 0, 5000, 20000, 6000, 20000, "Shattered Hand Sentry (Heroic) - Hamstring - on Current"),
(2059301, 2, 37511, 0, 102, 0, 100, 0, 6000, 10000, 10000, 30000, "Shattered Hand Sentry (Heroic) - Charge - on random Castin");


DELETE FROM creature_spell_list_entry WHERE Id IN (1650701, 2059301);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1650701, "Shattered Halls - Shattered Hand Sentry - Normal", 0, 0),
(2059301, "Shattered Halls - Shattered Hand Sentry - Heroic", 0, 0);

-- Shattered Hand Sentry
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
(1652301, "Shattered Halls - Shattered Hand Sentry - Normal", 0, 0),
(2059101, "Shattered Halls - Shattered Hand Sentry - Heroic", 0, 0);

-- Shattered Hand Sentry
UPDATE `creature_template` SET SpellList=1652301 WHERE entry = 16523;
UPDATE `creature_template` SET SpellList=2059101 WHERE entry = 20591;
