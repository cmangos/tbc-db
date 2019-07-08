-- Stage Light shouldnt move
UPDATE `creature_template` 
SET `MovementType` = 0 
WHERE `Entry` = 19525;

-- Update cyclone flags and values based on sniff
UPDATE `creature_template` 
SET `MovementType` = 2,
`Faction` = 634,
`SpeedWalk` = 1,
`SpeedRun` = 3
WHERE `Entry` = 18412;


