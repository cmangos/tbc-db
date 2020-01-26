-- Remove passive Aura with CastTime for Umbrafen Oracle 18077 & Umbrafen Seer 18079 (dont have any special standstate or emote, hence removing all)
-- 2020-01-26 21:49:54 Creature (GUID: 63933) has spell 34871 defined in `auras` field in `creature_addon, but spell has cast time. Use it in AI instead.
-- 2020-01-26 21:49:54 Creature (GUID: 63934) has spell 34871 defined in `auras` field in `creature_addon, but spell has cast time. Use it in AI instead.
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (18077,18079));

