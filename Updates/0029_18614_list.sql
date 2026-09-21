-- Seductress 18614 (Heroic) & Shadowmoon Adept 18615 (Heroic)
-- https://github.com/cmangos/tbc-db/commit/d409d234a7a#diff-2547c6cbee1e2d5b143f05351d8f7a4dc302b5120334ce32d405aaf4101bbc94R13-R103
UPDATE `creature_template` SET `SpellList` = 1861401 WHERE `entry` = 18614; -- 0
UPDATE `creature_template` SET `SpellList` = 1861501 WHERE `entry` = 18615;
DELETE FROM `creature_spell_list` WHERE `Id` = 1861401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1861401, 1, 32202, 0, -1, 1, 0, 100, 0, 0, 10000, 9000, 20000, 'Seductress - Lash of Pain - on current'),
(1861401, 2, 31865, 0, -1, 101, 0, 100, 0, 4000, 16000, 11000, 23000, 'Seductress - Seduction - on random not tank');

