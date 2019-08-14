-- Remove Battle-Tiger <Adam Eternum's Pet> 20395 from Call to Arms: Arathi Basin! Game Event
-- https://wow.gamepedia.com/Battle-Tiger - Patch 4.0.3a (2010-11-23): Now only appears during the Call to Arms: Arathi Basin.
-- https://www.wowhead.com/npc=20395/battle-tiger#comments - nothing about disappearing randomly
DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 20395);

