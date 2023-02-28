-- Shattered Halls rework
-- Convert creature_spell_list
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
-- Shattered Hand Brawler
(1659301, 1, 36033, 0, 102, 0, 100, 0, 4000, 8000, 12000, 15000, "Shattered Hand Brawler - Kick on rnd casting"),

-- Shattered Hand Sentry
-- can also charge mid fight not only on aggro
-- https://youtu.be/co4q9FEmLaE?t=189
(1650701, 1, 31553, 0, 1, 0, 100, 0, 0, 5, 13000, 16000, "Shattered Hand Sentry (Normal) - Hamstring"),
(1650701, 2, 22911, 0, 102, 0, 100, 0, 5000, 10000, 10000, 30000, "Shattered Hand Sentry (Normal) - Charge"),
(2059301, 1, 31553, 0, 1, 0, 100, 0, 0, 5, 13000, 16000, "Shattered Hand Sentry (Heroic) - Hamstring"),
(2059301, 2, 37511, 0, 102, 0, 100, 0, 5000, 10000, 10000, 30000, "Shattered Hand Sentry (Heroic) - Charge"),
-- Shattered Hand Heathen
(1742001, 1, 30474, 0, 1, 0, 100, 0, 6000, 13000, 12000, 16000, "Shattered Hand Heathen (Normal) - Bloodthirst"),
(2058701, 1, 35949, 0, 1, 0, 100, 0, 6000, 13000, 12000, 16000, "Shattered Hand Heathen (Heroic) - Bloodthirst");

-- Shattered Hand Brawler
UPDATE `creature_template` SET SpellList=1659301 WHERE entry = 16593;
UPDATE `creature_template` SET SpellList=1659301 WHERE entry = 20582;

-- Shattered Hand Sentry
UPDATE `creature_template` SET SpellList=1650701 WHERE entry = 16507;
UPDATE `creature_template` SET SpellList=2059301 WHERE entry = 20593;

-- Shattered Hand heathen
UPDATE `creature_template` SET SpellList=1742001 WHERE entry = 17420;
UPDATE `creature_template` SET SpellList=2058701 WHERE entry = 20587;

REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1659301, "Shattered Halls - Shattered Hand Brawler", 0, 0),
(1650701, "Shattered Halls - Shattered Hand Sentry (Normal)", 0, 0),
(1742001, "Shattered Halls - Shattered Hand Heathen (Normal)", 0, 0),
(2058701, "Shattered Halls - Shattered Hand Heathen (Heroic)", 0, 0),
(2059301, "Shattered Halls - Shattered Hand Sentry (Heroic)", 0, 0);