-- Shattered Halls rework
-- Convert creature_spell_list

DELETE FROM creature_spell_list WHERE Id IN (1650701, 2059301, 1659301, 1659401, 2057601, 1742001, 2058701, 1769401, 2057701);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
-- Shattered Hand Sentry
-- can also charge mid fight not only on aggro
-- https://youtu.be/co4q9FEmLaE?t=189
(1650701, 1, 31553, 0, 1, 0, 100, 0, 0, 5, 13000, 16000, "Shattered Hand Sentry (Normal) - Hamstring"),
(1650701, 2, 22911, 0, 102, 0, 100, 0, 5000, 10000, 10000, 30000, "Shattered Hand Sentry (Normal) - Charge"),
(2059301, 1, 31553, 0, 1, 0, 100, 0, 0, 5, 13000, 16000, "Shattered Hand Sentry (Heroic) - Hamstring"),
(2059301, 2, 37511, 0, 102, 0, 100, 0, 5000, 10000, 10000, 30000, "Shattered Hand Sentry (Heroic) - Charge"),
-- Shattered Hand Brawler
(1659301, 1, 36033, 0, 102, 0, 100, 0, 4000, 8000, 12000, 15000, "Shattered Hand Brawler - Kick on rnd casting"),
-- Shadowmoon Acolyte
-- normal
(1659401, 0, 35944, 0, 202, 0, 100, 0, 6400, 14000, 30000, 35000, "Shadowmoon Acolyte (Normal) - Power Word: Shield Friendly Missing 90% including self"),
(1659401, 1, 15585, 0, 201, 0, 100, 0, 6000, 10000, 12000, 15000, "Shadowmoon Acolyte (Normal) - Prayer of Healing Friendly Missing 50% including self"),
(1659401, 2, 31516, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Shadowmoon Acolyte (Normal) - Mind Blast on Current"),
-- heroic
(2057601, 0, 36052, 0, 202, 0, 100, 0, 6400, 14000, 30000, 35000, "Shadowmoon Acolyte (Heroic) - Power Word: Shield Friendly Missing 90% including self"),
(2057601, 1, 35943, 0, 201, 0, 100, 0, 6000, 10000, 12000, 15000, "Shadowmoon Acolyte (Heroic) - Prayer of Healing Friendly Missing 50% including self"),
(2057601, 2, 15587, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Shadowmoon Acolyte (Heroic) - Mind Blast on Current"),
-- Shadowmoon Darkcaster
(1769401, 0, 12542, 0, 101, 0, 100, 0, 4000, 8000, 13000, 18000, "Shadowmoon Darkcaster (Normal) - Fear on RND not Tank"),
(1769401, 1, 11990, 0, 100, 0, 100, 0, 2000, 6000, 14000, 16000, "Shadowmoon Darkcaster (Normal) - Rain of Fire on RND"),
(1769401, 2, 12471, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Shadowmoon Darkcaster (Normal) - Shadow Bolt on Current"),
(2057701, 0, 12542, 0, 101, 0, 100, 0, 4000, 8000, 13000, 18000, "Shadowmoon Darkcaster (Normal) - Fear on RND not Tank"),
(2057701, 1, 33508, 0, 100, 0, 100, 0, 2000, 6000, 14000, 16000, "Shadowmoon Darkcaster (Normal) - Rain of Fire on RND"),
(2057701, 2, 15232, 2, 1, 0, 100, 0, 0, 0, 0, 0, "Shadowmoon Darkcaster (Heroic) - Shadow Bolt on Current"),
-- Shattered Hand Heathen
(1742001, 1, 30474, 0, 1, 0, 100, 0, 6000, 13000, 12000, 16000, "Shattered Hand Heathen (Normal) - Bloodthirst"),
(2058701, 1, 35949, 0, 1, 0, 100, 0, 6000, 13000, 12000, 16000, "Shattered Hand Heathen (Heroic) - Bloodthirst");

-- Shattered Hand Sentry
UPDATE `creature_template` SET SpellList=1650701 WHERE entry = 16507;
UPDATE `creature_template` SET SpellList=2059301 WHERE entry = 20593;

-- Shattered Hand Brawler
UPDATE `creature_template` SET SpellList=1659301 WHERE entry = 16593;
UPDATE `creature_template` SET SpellList=1659301 WHERE entry = 20582;

-- Shadowmoon Acolyte
UPDATE `creature_template` SET SpellList=1659401 WHERE entry = 16594;
UPDATE `creature_template` SET SpellList=2057601 WHERE entry = 20576;

-- Shadowmoon Darkcaster
UPDATE `creature_template` SET SpellList=1769401 WHERE entry = 17694;
UPDATE `creature_template` SET SpellList=2057701 WHERE entry = 20577;

-- Shattered Hand heathen
UPDATE `creature_template` SET SpellList=1742001 WHERE entry = 17420;
UPDATE `creature_template` SET SpellList=2058701 WHERE entry = 20587;

DELETE FROM creature_spell_list_entry WHERE Id IN (1650701, 2059301, 1659301, 1659401, 2057601, 1742001, 2058701, 1769401, 2057701);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1650701, "Shattered Halls - Shattered Hand Sentry (Normal)", 0, 0),
(2059301, "Shattered Halls - Shattered Hand Sentry (Heroic)", 0, 0),
(1659301, "Shattered Halls - Shattered Hand Brawler", 0, 0),
(1659401, "Shattered Halls - Shadowmoon Acolyte (Normal)", 0, 0),
(2057601, "Shattered Halls - Shadowmoon Acolyte (Heroic)", 0, 0),
(1769401, "Shattered Halls - Shadowmoon Darkcaster (Normal)", 0, 0),
(2057701, "Shattered Halls - Shadowmoon Darkcaster (Heroic)", 0, 0),
(1742001, "Shattered Halls - Shattered Hand Heathen (Normal)", 0, 0),
(2058701, "Shattered Halls - Shattered Hand Heathen (Heroic)", 0, 0);