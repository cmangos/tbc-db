-- https://wowpedia.fandom.com/wiki/DungeonEncounterID
UPDATE `conditions` SET `value1` = 78202 WHERE `condition_entry` = 12000;

-- INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
-- (5680001, 'Malacrass', 0, 0, 12000, 0); -- spawns after custom worldstate after all 4 bosses are dead - "WorldState Condition"