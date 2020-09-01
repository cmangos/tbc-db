-- Correct Aggro Range for Hyjal Summit Defender Npcs
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` IN (
3794, -- Druid of the Talon
3795, -- Druid of the Claw
17772, -- Lady Jaina Proudmoore
17852, -- Thrall
17854, -- Dire Wolf
17919, -- Alliance Footman
17920, -- Alliance Knight
17921, -- Alliance Rifleman
17922, -- Alliance Sorceress
17928, -- Alliance Priest
17931, -- Alliance Peasant
17932, -- Horde Grunt
17933, -- Tauren Warrior
17934, -- Horde Headhunter
17935, -- Horde Witch Doctor
17936, -- Horde Shaman
17937, -- Horde Peon
17943, -- Night Elf Archer
17944, -- Dryad
17945, -- Night Elf Huntress
17948, -- Tyrande Whisperwind
18487 -- Night Elf Ancient Protector
);

