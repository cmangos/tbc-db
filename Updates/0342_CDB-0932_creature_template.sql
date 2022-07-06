-- Fixed stats of NPC 2887 (Prismatic Exile) in Arathi Highlands
-- They will now be able to cast their spells
UPDATE `creature_template` SET MinLevel = 43, MaxLevel = 43, `HealthMultiplier` = 1.2, `MinLevelHealth` = 1648, `MaxLevelHealth` = 1648, `MinLevelMana` = 1432, `MaxLevelMana` = 1432 WHERE `Entry` = 2887;

