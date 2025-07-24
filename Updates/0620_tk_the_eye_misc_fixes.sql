-- -----------
-- Tempest Keep : The Eye
-- Misc Changes
-- -----------

-- SELECT MinLevel, MaxLevel, UnitClass, HealthMultiplier, DamageMultiplier, SpeedWalk, SpeedRun FROM creature_template WHERE entry = ;
-- [4] WalkSpeed: 4
-- [4] RunSpeed: 10
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20031;

-- Delete old unused DBscripts
-- Table `dbscripts_on_creature_movement` contain unused script, id 10124.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10125.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10126.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10127.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10128.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10129.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10130.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10131.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10132.
-- Table `dbscripts_on_creature_movement` contain unused script, id 10133.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (10124, 10125, 10126, 10127, 10128, 10129, 10130, 10131, 10132, 10133);