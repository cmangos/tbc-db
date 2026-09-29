-- extend holiday end time so that they happen
Update game_event_time set end_time = "2050-12-30 23:00:00" where entry IN (
1, -- Midsummer Fire Festival
2, -- Feast of Winter Veil - Main Event
3, -- Stranglethorn Fishing Extravaganza - Announce
4, -- Stranglethorn Fishing Extravaganza
5, -- Stranglethorn Fishing Extravaganza - Turn-in
6, -- New Year's Eve
8, -- Love is in the Air
10, -- Children's Week
11, -- Harvest Festival
16, -- Gurubashi Arena Booty Run
18, -- Call to Arms: Alterac Valley!
19, -- Call to Arms: Warsong Gulch!
20, -- Call to Arms: Arathi Basin!
21, -- Call to Arms: Eye of the Storm!
26, -- Brewfest
27, -- Night Time
29, -- Zul'Gurub - Edge of Madness (Gri'lek)
30, -- Zul'Gurub - Edge of Madness (Hazza'rah)
31, -- Zul'Gurub - Edge of Madness (Renataki)
32, -- Zul'Gurub - Edge of Madness (Wushoolay)
44, -- Pirate's Day
56, -- Arena PvP Season 4
57, -- World's End Tavern - Perry Gatner Announce
58, -- World's End Tavern - Perry Gatner Standup Comedy
59, -- World's End Tavern - L70ETC Concert Announce
60, -- World's End Tavern - L70ETC Concert
61, -- Grim Guzzler - L70ETC Pre-Concert
62, -- Grim Guzzler - L70ETC Concert
86, -- Brewfest: Dark Iron Attack
87, -- Brewfest: Keg tapping
85, -- Spirit of Competition
400, -- DayTime 7AM to 8PM
401, -- DayTime 7AM to 12AM
1024 -- Hourly Bells
);
-- (deactivated by default)
-- 22 AQ War Effort
-- 33 Arena Tournament
-- 53 Arena PvP Season 1
-- 54 Arena PvP Season 2
-- 55 Arena PvP Season 3
-- 63 L70ETC Concert - Terrokar Forest (Blizzcon Event)

