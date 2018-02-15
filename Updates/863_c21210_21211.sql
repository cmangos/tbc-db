-- Invis Deathforge Caster / Invis Deathforge Target 21210/21211 -- Spells cast on these creatures are not visible for players if creatures have CREATURE_EXTRA_FLAG_INVISIBLE UNIT_FLAG Data from Sniff, extraflag not needed, model and unitflag do the job
UPDATE `creature_template` SET `UnitFlags` = 33555200, `ExtraFlags` = `ExtraFlags`&~128 WHERE `entry` IN (21210,21211);

