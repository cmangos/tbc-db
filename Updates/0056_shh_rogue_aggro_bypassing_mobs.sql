-- Add CREATURE_EXTRA_FLAG_NO_CALL_ASSIST for Shattered Hand Assassin 17695,20580
-- https://github.com/cmangos/tbc-db/commit/f782663e0d586f7e6e14b8b54beb5f6c36b91bb0#commitcomment-191990478
-- prevents them to be called into combat by other mobs, extraflag naming and description seems off
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2048 WHERE `entry` IN (17695,20580);

