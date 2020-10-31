-- selin
DELETE FROM creature_template_addon WHERE entry IN(24723,25562);
UPDATE creature_template SET UnitFlags=32832,SpeedWalk=2.22222/2.5,SpeedRun=10/7,MechanicImmuneMask=MechanicImmuneMask&~(33554432) WHERE entry IN(24723,25562);

DELETE FROM spell_script_target WHERE entry IN(44329);
INSERT INTO spell_script_target VALUES
(44329,1,24722,0);


-- delrissa
UPDATE creature_model_info SET bounding_radius=0.3 WHERE modelid IN(22598);
UPDATE creature_model_info SET bounding_radius=1.054312 WHERE modelid IN(2007);
UPDATE creature_template SET SpeedRun=7/7,SpeedWalk=2.5/2.5 WHERE entry IN(24559,24555);


-- kaelthas
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~(33554432) WHERE entry IN(24664,24857);
UPDATE spell_target_position SET target_orientation=4.79965 WHERE Id IN(44218);

-- trash

-- Brightscale Wyrm 24761,25545
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 25545;

