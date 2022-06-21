-- No Exp Fix is TBC+ only, AI Fix valid for classic too
-- https://github.com/cmangos/tbc-db/commit/c22f72ad8d48754155e8fb3ded4b8b5bdc2a3355
-- not sure what brought me to the conclusion this was a good idea...
-- https://tbc.wowhead.com/npc=6550/mana-surge#comments:id=5249410
-- https://youtu.be/EH19pe3l3lM?t=44
-- https://youtu.be/6uzfLCdKxu0?t=81
-- I was trying to do this I'm 42 and I keep dying when there's 6 mobs.
-- I notice you have another person casting blizzard is that necessary and what spells do you think are best if solo just flame strike, cone, and arcane explosion?
-- This is also hard on pvp server other factions always ganking when they see what I'm doing

-- CREATURE_EXTRA_FLAG_NO_XP_AT_KILL + CREATURE_EXTRA_FLAG_NO_CALL_ASSIST (might be valid for classic too)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|64+2048 WHERE `entry` = 6550; -- https://tbc.wowhead.com/quest=1957/mana-surges#comments:id=5249409

-- very easy quest, they are not linked togethet so just pull them 1 by 1
-- pyroblast, fireball and fireblast=dead
-- https://tbc.wowhead.com/quest=1957/mana-surges#comments:id=255401

