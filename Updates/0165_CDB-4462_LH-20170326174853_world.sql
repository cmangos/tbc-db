-- Non-corporeal Undead and Mechanical creatures are now susceptible to bleed effects.
-- http://wowwiki.wikia.com/wiki/Patch_2.4.0

-- Generally, undead are also immune against sleep effects. - Trugge Research, valid for tbc+ too
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|512 WHERE `CreatureType` = 6; -- CREATURE_TYPE_UNDEAD + MECHANIC_SLEEP

-- Reapply Generic Immunity against Fear and Horror for Undeads.
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|(16+8388608) WHERE `CreatureType` = 6; -- CREATURE_TYPE_UNDEAD + MECHANIC_FEAR + MECHANIC_HORROR

DELETE FROM `creature_template_addon` WHERE `entry` = 6388; -- Zanzil Skeleton standing ontop Skeleton Mount

-- tbc+ (2.4.3) too, not just classic.
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~16384 WHERE `CreatureType` = 9; -- CREATURE_TYPE_MECHANICAL + NO MECHANIC_BLEED Immunity
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|16384 WHERE `entry` IN ( -- CREATURE_TYPE_UNDEAD - Non-corporeal + MECHANIC_BLEED, special cases.
16194, -- Unholy Axe
16215, -- Unholy Staff
16216 -- Unholy Swords
);

