-- Add CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY 0x000400000 for Doomwalker 17711 & Doom Lord Kazzak 18728
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4194304 WHERE `entry` IN (17711,18728);

