-- -----------
-- Tempest Keep : The Eye
-- Misc Changes
-- -----------

-- Bloodwarder Legionnaire
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.6128
-- UNIT_FIELD_COMBATREACH: 2.4
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20031;
UPDATE creature_model_info SET bounding_radius = 2.4, combat_reach = 0.6128 WHERE modelid IN (19386, 19387);

-- Bloodwarder Vindicator 20032
-- WalkSpeed: 2.5
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.68939996
-- UNIT_FIELD_COMBATREACH: 2.6999998
-- UNIT_FIELD_DISPLAYID: 21000
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 10/7 WHERE entry = 20032;
UPDATE creature_model_info SET bounding_radius = 2.6999998, combat_reach = 0.68939996 WHERE modelid IN (21000, 19388);

-- Astromancer 20033
-- WalkSpeed: 2.5
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.6128
-- UNIT_FIELD_COMBATREACH: 2.4
-- UNIT_FIELD_DISPLAYID: 19391
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 10/7 WHERE entry = 20033;
UPDATE creature_model_info SET bounding_radius = 2.4, combat_reach = 0.6128 WHERE modelid IN (19390, 19391);

-- Star Scryer 20034
-- WalkSpeed: 2.5
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.68939996
-- UNIT_FIELD_COMBATREACH: 2.6999998
-- UNIT_FIELD_DISPLAYID: 19392
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 10/7 WHERE entry = 20034;
UPDATE creature_model_info SET bounding_radius = 2.6999998, combat_reach = 0.68939996 WHERE modelid IN (19392, 19393);

-- Bloodwarder Marshal 20035
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.766
-- UNIT_FIELD_COMBATREACH: 3
-- UNIT_FIELD_DISPLAYID: 19397
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20035;
UPDATE creature_model_info SET bounding_radius = 0.766, combat_reach = 3 WHERE modelid IN (19397, 20978);

-- Bloodwarder Squire 20036
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.57449996
-- UNIT_FIELD_COMBATREACH: 2.25
--UNIT_FIELD_DISPLAYID: 21001
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20035;
UPDATE creature_model_info SET bounding_radius = 0.57449996, combat_reach = 2.25 WHERE modelid IN (19394, 21001);

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