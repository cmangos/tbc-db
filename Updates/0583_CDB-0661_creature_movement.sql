-- Remove corrupted creature_addon for Ironforge Guard 5595
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 5595);

