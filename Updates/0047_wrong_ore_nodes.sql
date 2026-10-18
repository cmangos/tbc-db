-- Two Tin Vein spawns are parser mistakes (wrong map assignment / duplicate):
-- https://github.com/cmangos/tbc-db/pull/1313#issuecomment-5980455092
--   guid 146676 is actually an Eastern Kingdoms spawn parsed onto map 1
--   guid 147133 is a copy of spawn 700005 from map 70
-- Delete both from gameobject and from their Tin Vein spawn groups.
DELETE FROM `spawn_group_spawn` WHERE `Guid` IN (146676, 147133);
DELETE FROM `gameobject` WHERE `guid` IN (146676, 147133);

