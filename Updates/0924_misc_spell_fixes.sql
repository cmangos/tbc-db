-- Correct spell_affect for Remorseless Attacks - Remorseless 14143
-- Critical strike chance for your next Sinister Strike, Backstab, Mutilate, Ambush, Hemorrhage, or Ghostly strike increased by $s1%.
UPDATE `spell_affect` SET `SpellFamilyMask` =
8388610 + -- Sinister Strike SpellFamilyFlags
8388612 + -- Backstab SpellFamilyFlags
8589934592 + -- Mutilate SpellFamilyFlags (MH)
17179869184 + -- Mutilate SpellFamilyFlags (OH)
8389120 + -- Ambush SpellFamilyFlags
41943040 + -- Hemorrhage SpellFamilyFlags
1140850688 -- Ghostly Strike SpellFamilyFlags
WHERE `entry` = 14143; -- 25870467590 befor (2,4,512,33554432,67108864,8589934592,17179869184) -- 26977763846

-- Correct spell_proc_event for Scarab of the Infinite Cycle 28190 - it procced on all postives casts, like buffing stamina etc

-- Triggers: Spell 33953 listed in `spell_proc_event` has exactly same proc flags as in spell.dbc, field value redundant
-- PROC_FLAG_DONE_SPELL_MAGIC_DMG_CLASS_POS 16384 currently does not include hot applications

-- Your direct healing and heal over time spells have a chance to increase your spell haste rating by 320 for 6 secs.
-- https://www.wowhead.com/item=28190/scarab-of-the-infinite-cycle&bonus=4095#comments:id=91417
-- Hot Application should also Procc it (Renew, Lifebloom and Rejuvenation maybe even Gift of the Naaru), not the periodic healing, currently not fixable but druid doesnt care about this trinket too much anyway (pve)
UPDATE `spell_proc_event` SET `procFlags` = 16384, `procex` = 0 WHERE `entry` = 33953; -- 0 65536

-- Add more missing spell_script_target for Raise Dead 34019
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(34019, 2, 16873),
(34019, 2, 16907),
(34019, 2, 19424);

-- Align Band of the Eternal Champion Procc with other Exalted Rings (35077,35083,35086)
UPDATE `spell_proc_event` SET `ppmRate` = 0 WHERE `entry` = 35080; -- all have ppm 0, CD 60secs

