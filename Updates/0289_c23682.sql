-- Add some Immunities for Headless Horseman 23682 - boss_headless_horseman
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4194304, `MechanicImmuneMask` = `MechanicImmuneMask`|1+8+256+512+131072+4194304+33554432+536870912 WHERE `entry` = 23682;

-- Add some Immunities for Head of the Horseman 23775 - boss_head_of_horseman
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4194304, `MechanicImmuneMask` = `MechanicImmuneMask`|1+4+8+256+512+131072+33554432+536870912 WHERE `entry` = 23775;

