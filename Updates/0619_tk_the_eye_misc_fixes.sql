-- -----------
-- Tempest Keep : The Eye
-- Misc Changes
--
-- All those changes are double checked with SniffedDB and tbc/wotlk classic sniffs
-- -----------

-- Solarium Priest
-- SniffedDB base_attack_time  1500 (2000 cmangos)
-- [0] UNIT_FIELD_BASEATTACKTIME: 1500
-- SniffedDB bounding_radius = 0,766 
-- SniffedDB combat_reach = 3
-- [0] UNIT_FIELD_BOUNDINGRADIUS: 0.766
-- [0] UNIT_FIELD_COMBATREACH: 3
UPDATE creature_template SET MeleeBaseAttackTime = 1500 WHERE entry = 18806;
-- SniffedDB bounding_radius = 0,766 (2 cmangos)
-- SniffedDB combat_reach = 3 (0 cmangos)
UPDATE creature_model_info SET bounding_radius = 0.766, combat_reach = 2 WHERE modelid IN (19050, 19051, 19052);

-- Solarium Agent 
-- SniffedDB Level 60-70 (cmangos only 69)
-- [0] UNIT_FIELD_LEVEL: 70
UPDATE creature_template SET MaxLevel = 70 WHERE entry = 18925;
-- SniffedDB bounding_radius = 0.47875 (2 cmangos)
-- SniffedDB combat_reach = 1.875 (0 cmangos)
-- [0] UNIT_FIELD_BOUNDINGRADIUS: 0.47875
-- [0] UNIT_FIELD_COMBATREACH: 1.875
UPDATE creature_model_info SET bounding_radius = 0.47875, combat_reach = 1.875 WHERE modelid IN (19048, 19049);

-- Kael'thas Sunstrider (19622)
-- SniffedDB SpeedWalk 1.2
-- SniffedDB SpeedRun 1.42857
-- WalkSpeed: 3
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = 3/2.5, SpeedRun = 10/7 WHERE entry = 19622;


-- Bloodwarder Legionnaire
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.6128
-- UNIT_FIELD_COMBATREACH: 2.4
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20031;
UPDATE creature_model_info SET bounding_radius = 0.6128, combat_reach = 2.4 WHERE modelid IN (19386, 19387);

-- Bloodwarder Vindicator 20032
-- WalkSpeed: 2.5
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.68939996
-- UNIT_FIELD_COMBATREACH: 2.6999998
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 10/7 WHERE entry = 20032;
UPDATE creature_model_info SET bounding_radius = 0.68939996, combat_reach = 2.6999998 WHERE modelid IN (21000, 19388);

-- Astromancer 20033
-- WalkSpeed: 2.5
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.6128
-- UNIT_FIELD_COMBATREACH: 2.4
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 10/7 WHERE entry = 20033;
UPDATE creature_model_info SET bounding_radius = 0.6128, combat_reach = 2.4 WHERE modelid IN (19390, 19391);

-- Star Scryer 20034
-- WalkSpeed: 2.5
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.68939996
-- UNIT_FIELD_COMBATREACH: 2.6999998
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 10/7 WHERE entry = 20034;
UPDATE creature_model_info SET bounding_radius = 0.68939996, combat_reach = 2.6999998 WHERE modelid IN (19392, 19393);


-- Bloodwarder Marshal 20035
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.766
-- UNIT_FIELD_COMBATREACH: 3
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20035;
UPDATE creature_model_info SET bounding_radius = 0.766, combat_reach = 3 WHERE modelid IN (19397, 20978);

-- Bloodwarder Squire 20036
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.57449996
-- UNIT_FIELD_COMBATREACH: 2.25
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20036;
UPDATE creature_model_info SET bounding_radius = 0.57449996, combat_reach = 2.25 WHERE modelid IN (19394, 21001);

-- Tempest Falconer
-- WalkSpeed: 4
-- UNIT_FIELD_BOUNDINGRADIUS: 0.766
-- UNIT_FIELD_COMBATREACH: 3
UPDATE creature_template SET SpeedWalk = 4/2.5 WHERE entry = 20037;
UPDATE creature_model_info SET bounding_radius = 0.766, combat_reach = 3 WHERE modelid IN (19398, 19399);


-- Phoenix-Hawk Hatchling 20038
-- WalkSpeed: 4
-- RunSpeed: 12
-- UNIT_FIELD_BOUNDINGRADIUS: 0.3
-- UNIT_FIELD_COMBATREACH: 1.5
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 12/7 WHERE entry = 20038;
UPDATE creature_model_info SET bounding_radius = 0.3, combat_reach = 1.5 WHERE modelid = 19298;


-- Phoenix-Hawk 20039
-- WalkSpeed: 2.5
-- RunSpeed: 12
-- UNIT_FIELD_BASEATTACKTIME: 2000
-- UNIT_FIELD_BOUNDINGRADIUS: 0.75
-- UNIT_FIELD_COMBATREACH: 3.75
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 12/7, MeleeBaseAttackTime = 2000 WHERE entry = 20039;
UPDATE creature_model_info SET bounding_radius = 0.75, combat_reach = 3.75 WHERE modelid = 19299;

-- Crystalcore Devastator 20040
-- WalkSpeed: 4
-- RunSpeed: 12
-- UNIT_FIELD_BOUNDINGRADIUS: 1.5
-- UNIT_FIELD_COMBATREACH: 9
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 12/7 WHERE entry = 20040;
UPDATE creature_model_info SET bounding_radius = 1.5, combat_reach = 9 WHERE modelid = 19410;

-- Crystalcore Sentinel 20041
-- RunSpeed: 12
-- UNIT_FIELD_BOUNDINGRADIUS: 1.25
-- UNIT_FIELD_COMBATREACH: 7.5
UPDATE creature_template SET SpeedRun = 12/7 WHERE entry = 20041;
UPDATE creature_model_info SET bounding_radius = 1.25, combat_reach = 7.5 WHERE modelid = 19300;

-- Tempest-Smith 20042
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.57449996
-- UNIT_FIELD_COMBATREACH: 2.25
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20042;
UPDATE creature_model_info SET bounding_radius = 0.57449996, combat_reach = 2.25 WHERE modelid = 19412;

-- Apprentice Star Scryer 20043
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.57449996
-- UNIT_FIELD_COMBATREACH: 2.25
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20043;
UPDATE creature_model_info SET bounding_radius = 0.57449996, combat_reach = 2.25 WHERE modelid IN (19470, 19471);

-- Novice Astromancer 20044
-- UNIT_FIELD_BOUNDINGRADIUS: 0.57449996
-- UNIT_FIELD_COMBATREACH: 2.25
UPDATE creature_model_info SET bounding_radius = 0.57449996, combat_reach = 2.25 WHERE modelid IN (19472, 19473);

-- Nether Scryer 20045
-- [1] WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.766
-- UNIT_FIELD_COMBATREACH: 3
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20045;
UPDATE creature_model_info SET bounding_radius = 0.766, combat_reach = 3 WHERE modelid IN (19474, 19475);

-- Astromancer Lord 20046
-- WalkSpeed: 4
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.766
-- UNIT_FIELD_COMBATREACH: 3
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20046;
UPDATE creature_model_info SET bounding_radius = 0.766, combat_reach = 3 WHERE modelid IN (19423, 19424);

-- Crimson Hand Battle Mage 20047
-- WalkSpeed: 4
-- RunSpeed: 12
-- UNIT_FIELD_BOUNDINGRADIUS: 0.57449996
-- UNIT_FIELD_COMBATREACH: 2.25
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 12/7 WHERE entry = 20047;
UPDATE creature_model_info SET bounding_radius = 0.57449996, combat_reach = 2.25 WHERE modelid IN (19499, 19500);

-- Crimson Hand Centurion 20048
-- WalkSpeed: 4
-- RunSpeed: 12
-- UNIT_FIELD_BOUNDINGRADIUS: 0.68939996
-- UNIT_FIELD_COMBATREACH: 2.6999998
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 12/7 WHERE entry = 20048;
UPDATE creature_model_info SET bounding_radius = 0.68939996, combat_reach = 2.6999998 WHERE modelid IN (19505, 19506);

-- Crimson Hand Blood Knight 20049
-- [3] WalkSpeed: 4
-- [3] RunSpeed: 12
-- [3] UNIT_FIELD_BOUNDINGRADIUS: 0.68939996
-- [3] UNIT_FIELD_COMBATREACH: 2.6999998
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 12/7 WHERE entry = 20049;
UPDATE creature_model_info SET bounding_radius = 0.68939996, combat_reach = 2.6999998 WHERE modelid IN (19503, 19504);

-- Crimson Hand Inquisitor 20050
-- WalkSpeed: 4
-- RunSpeed: 12
-- UNIT_FIELD_BOUNDINGRADIUS: 0.766
-- UNIT_FIELD_COMBATREACH: 3
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 12/7 WHERE entry = 20050;
UPDATE creature_model_info SET bounding_radius = 0.766, combat_reach = 3 WHERE modelid IN (19507, 19508);

-- Crystalcore Mechanic 20052
-- WalkSpeed: 2.36110997200012207
-- RunSpeed: 10
-- UNIT_FIELD_BOUNDINGRADIUS: 0.75
-- UNIT_FIELD_COMBATREACH: 1.5
UPDATE creature_template SET SpeedWalk = 2.36110997200012207/2.5, SpeedRun = 10/7 WHERE entry = 20052;
UPDATE creature_model_info SET bounding_radius = 0.75, combat_reach = 1.5 WHERE modelid = 19254;


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