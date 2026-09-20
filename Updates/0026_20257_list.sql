-- Ethereal Priest 20257 (Heroic)
-- https://github.com/cmangos/tbc-db/commit/13b1403e2984a17c41ca0e9b32634880469f0ef6#diff-1269abbc2169910a02d58aadbfb4ccf3e7ad2c5513f53f9e418d2dda2714a746L137
DELETE FROM `creature_spell_list` WHERE `Id` = 2025701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2025701, 1, 22883, 0, -1, 206, 0, 100, 0, 2000, 12000, 6000, 18000, 'Ethereal Priest - Heal - Missing 25% including self'),
(2025701, 2, 35944, 0, -1, 5, 0, 100, 0, 6000, 22000, 6000, 22000, 'Ethereal Priest - Power Word: Shield - friendly missing buff'),
(2025701, 3, 37669, 0, -1, 2, 0, 100, 0, 4000, 17000, 11000, 25000, 'Ethereal Priest - Holy Nova - self');

