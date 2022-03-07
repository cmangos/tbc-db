-- My conclusion is we should set it to flat 15:00:00 as everything else is just confusing for people.
-- https://wowwiki-archive.fandom.com/wiki/Gurubashi_Arena
-- Time of Occurrence
-- While the Gurubashi Arena is a PvA area at all times, the Arena Treasure Chest that contains rewards for the victors spawns every 3 hours from 12 am, Pacific Standard Time.[citation needed] The times that the chest spawns daily are:
-- 12 am
-- 3 am
-- 6 am
-- 9 am
-- 12 pm
-- 3 pm
-- 6 pm
-- 9 pm

-- When the chest is about to be spawned at the aforementioned times, the NPC Short John Mithril will yell out to a zone-wide message to alert thrill-seekers:
-- Arrr, Me Hearties! I be havin' some extra Treasure that I be givin' away at the Gurubashi Arena! All ye need do to collect it is open the chest I leave on the arena floor!

-- Daylight savings time
-- Because of the fact that the Gurubashi Arena Booty Run is set every 3 hours instead of at certain times (the server does not check the time, it simply counts out 3 hours)
-- during Daylight savings time, the chest will not spawn at the normal time, but either 1 hour later or 1 hour earlier than usual, until the following Tuesday when maintenance is performed and servers are restarted. 

-- https://github.com/cmangos/classic-db/commit/9c7bcb6d87368d8ca0f309a142f925f38285d254
UPDATE `game_event_time` SET `start_time`='2007-08-04 15:00:00' WHERE `entry`=16; -- 2007-08-04 14:58:23 befor

