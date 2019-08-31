-- Add CREATURE_EXTRA_FLAG_POISON_IMMUNITY to Curator 15691 & Void Reaver
-- Most if not all Elementals & Mechanical Units are immune to Poisons
UPDATE `creature_template` SET `ExtraFlags`  = `ExtraFlags`|0x01000000 WHERE `entry` IN (15691,19516);

