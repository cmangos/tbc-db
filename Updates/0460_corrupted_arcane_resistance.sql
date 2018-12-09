-- Remove PetSpellDataId located in ResitanceArcane Column
UPDATE `creature_template` SET `ResistanceArcane` = 0 WHERE `entry` IN (
15649, -- Feral Dragonhawk Hatchling
15650, -- Crazed Dragonhawk
17034, -- Female Kaliri Hatchling
17035, -- Kaliri Matriarch
17039, -- Male Kaliri Hatchling
17053, -- Kaliri Swooper
19027, -- Stabled Kurenai Lion
19030 -- Stabled Kurenai Panther
);

