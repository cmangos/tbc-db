-- Quests should be actively offered regardless of player level
-- ccsdb_tbc questlevel = -1
UPDATE `quest_template` SET `QuestLevel` = -1 WHERE `entry` IN (
1506, -- Gan'rul's Summons
1638, -- A Warrior's Training
1640, -- Beat Bartleby
1718, -- The Islander
1795, -- The Binding
7563, -- Rage of Blood
8360, -- Dancing for Marzipan
8367, -- For Great Honor
10106, -- Hellfire Fortifications
10110, -- Hellfire Fortifications
10950, -- Auchindoun and the Ring of Observance
10952, -- A Trip to the Dark Portal
10954, -- Jheel is at Aeris Landing!
10956, -- The Seat of the Naaru
10962, -- Time to Visit the Caverns
10963, -- Time to Visit the Caverns
10966, -- Back to the Orphanage
11294, -- Bark for the Thunderbrews!
11335, -- Call to Arms: Arathi Basin
11336, -- Call to Arms: Alterac Valley
11337, -- Call to Arms: Eye of the Storm
11338, -- Call to Arms: Warsong Gulch
11339, -- Call to Arms: Arathi Basin
11340, -- Call to Arms: Alterac Valley
11341, -- Call to Arms: Eye of the Storm
11342, -- Call to Arms: Warsong Gulch
11407, -- Bark for Drohn's Distillery!
11975, -- Now, When I Grow Up...
12155, -- missing quest
12421); -- missing quest

