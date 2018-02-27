-- Hai'shulud 22038
UPDATE creature_template SET `SpeedWalk` = (10.0 / 2.5), `SpeedRun` = (20.0 / 7.0) WHERE `entry` = 22038;
UPDATE `creature_model_info` SET `bounding_radius` = 2.29167, `combat_reach` = 16.875 WHERE `modelid` = 20746;
