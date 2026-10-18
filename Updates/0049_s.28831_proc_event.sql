-- Add spell_proc_event for s.28831 Plagueheart Raiment 2Set
-- https://www.wowhead.com/classic/item-set=529/plagueheart-raiment
-- https://github.com/cmangos/issues/issues/3941#issuecomment-2999968984
-- https://www.wowhead.com/spell=28831/vampirism#comments:id=257809:reply=41886
DELETE FROM `spell_proc_event` WHERE `entry` = 28831;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `CustomChance`) VALUES
(28831, 5, 1, 1, 1, 10);

