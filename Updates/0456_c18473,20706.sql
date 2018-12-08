-- Add CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY for Talon King Ikiss 18473,20706
-- "In 2.0.7 he became immune to curse of tongues." - https://wow.gamepedia.com/index.php?title=Talon_King_Ikiss&oldid=571797
-- Talon King Ikiss AoE spell cant be interrupted anymore. - http://wowwiki.wikia.com/wiki/Patch_2.0.7
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4194304 WHERE `entry` = 18473;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4194304 WHERE `entry` = 20706;

