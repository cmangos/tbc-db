-- Mechanar updates
-- Sunseeker Netherbinder, Bloodwarder Physician, Bloodwarder Centurion, Tempest-Forge Patroller, Bloodwarder Slayer, Sunseeker Engineer
-- All have Walkspeed 2.5 (/2.5 = 1) in sniffs
-- [25] WalkSpeed: 2.5
UPDATE creature_template SET SpeedWalk= '1' WHERE Entry IN (20059, 21541, 20990, 21523, 19510, 21522, 19166, 21543, 19167, 21524, 20988, 21540);

-- Mechanar Driller
-- Mechanar Crusher
-- [1] UpdateType: CreateObject1
-- [1] Object Guid: Full: 0x20458045401340000026B70000170CBF Creature/0 R4448/S9911 Map: 554 Entry: 19712 Low: 1510591
-- [1] WalkSpeed: 2,36110997200012207 (/.24 = 0,9444439888
UPDATE creature_template SET SpeedWalk= '0.9444' WHERE Entry IN (19712, 21528, 19231, 21527);