INSERT INTO spell_script_target VALUES
('46707', '1', '25653', '0');

UPDATE creature_model_info SET bounding_radius=3,combat_reach=4.5 WHERE modelid IN(6686);

-- Gauntlet Imp Trigger 25848
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 25848;

