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

-- Correct spell_proc_event for Scarab of the Infinite Cycle 28190 - will be fixed by spellscript "spell_spell_haste_healer_trinket"

-- Add more missing spell_script_target for Raise Dead 34019
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(34019, 2, 16873),
(34019, 2, 16907),
(34019, 2, 19424);

-- Align Band of the Eternal Champion Procc with other Exalted Rings (35077,35083,35086)
UPDATE `spell_proc_event` SET `ppmRate` = 0 WHERE `entry` = 35080; -- all have ppm 0, CD 60secs

