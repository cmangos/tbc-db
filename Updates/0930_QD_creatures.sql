-- Confirm more creatures for https://github.com/cmangos/tbc-db/commit/590d16ab22c3368f299f5253b727d1a2303f04cb

-- Update 0898_IsleofQueldanas with more accurate data
UPDATE `creature` SET `position_x` = 12816.97, `position_y` = -7004.863, `position_z` = 18.67621, `orientation` = 2.303835 WHERE `guid` = 5300782 AND `id` = 25036; -- Caregiver Inaara
UPDATE `creature` SET `position_x` = 12811.66, `position_y` = -6984.268, `position_z` = 18.75718, `orientation` = 2.86234 WHERE `guid` = 5300451 AND `id` = 24994; -- Shattered Sun Sentry
UPDATE `creature` SET `position_x` = 12798.21, `position_y` = -6996.149, `position_z` = 18.74898, `orientation` = 1.780236 WHERE `guid` = 5300448 AND `id` = 24994; -- Shattered Sun Sentry
UPDATE `creature` SET `position_x` = 12822.23, `position_y` = -6967.091, `position_z` = 14.08921, `orientation` = 2.460914 WHERE `guid` = 5300427 AND `id` = 24980; -- Crystal Ward

-- Add missing creatures from lather QD Stage
DELETE FROM `creature` WHERE `guid` BETWEEN 5301201 AND 5301214;
INSERT INTO creature (guid,  id,  map,  spawnMask,  modelid,  equipment_id,  position_x,  position_y,  position_z,  orientation,  spawntimesecsmin,  spawntimesecsmax,  spawndist,  curhealth,  curmana,  MovementType) VALUES
(5301201, 24928, 530, 1, 0, 0, 12798.96, -6996.477, 18.72862, 1.500983, 300, 300, 0, 0, 0, 0), -- Sunwell Daily Bunny x 1.00
(5301202, 24928, 530, 1, 0, 0, 12811.76, -6984.681, 18.74667, 2.6529, 300, 300, 0, 0, 0, 0), -- Sunwell Daily Bunny x 1.00
(5301203, 24928, 530, 1, 0, 0, 12861.77, -6938.605, 4.39595, 2.740167, 300, 300, 0, 0, 0, 0), -- Sunwell Daily Bunny x 1.00

(5301204, 24994, 530, 1, 0, 0, 12765.55, -7042.824, 8.455967, 5.166865, 300, 300, 0, 0, 0, 2), -- Shattered Sun Sentry 

(5301205, 25047, 530, 1, 0, 0, 12746.47, -7104.355, 7.607389, 0.5759587, 300, 300, 0, 0, 0, 0), -- Wretched Hungerer
(5301206, 25047, 530, 1, 0, 0, 12851.1, -6987.204, 4.984005, 2.530727, 300, 300, 0, 0, 0, 0), -- Wretched Hungerer
(5301207, 25047, 530, 1, 0, 0, 12797.31, -6936.276, 12.11478, 5.340707, 300, 300, 0, 0, 0, 0), -- Wretched Hungerer
(5301208, 25047, 530, 1, 0, 0, 12909.92, -6943.091, 3.683337, 1.025969, 300, 300, 0, 0, 0, 0), -- Wretched Hungerer
(5301209, 25047, 530, 1, 0, 0, 12870.83, -6927.211, 4.202149, 6.073746, 300, 300, 0, 0, 0, 0), -- Wretched Hungerer

(5301210, 25115, 530, 1, 22753, 0, 12791.64, -6983.641, 18.77993, 2.286381, 300, 300, 0, 0, 0, 0), -- Shattered Sun Warrior
(5301211, 25115, 530, 1, 22753, 0, 12799.01, -6976.719, 18.77993, 2.268928, 300, 300, 0, 0, 0, 0), -- Shattered Sun Warrior

(5301212, 17213, 530, 1, 0, 0, 12838.24, -7010.044, 71.48843, 4.982322, 7200, 7200, 0, 0, 0, 2), -- Pathing for Broom
(5301213, 17213, 530, 1, 0, 0, 12797.72, -6881.226, 34.76371, 2.257939, 7200, 7200, 0, 0, 0, 2), -- Pathing for Broom
(5301214, 17213, 530, 1, 0, 0, 12779.06, -6880.201, 13.37919, 0.6653841, 7200, 7200, 0, 0, 0, 0); -- Pathing for Broom

-- Add Pathing for Shattered Sun Sentry 24994 -- incomplete
SET @GUID := 5301204;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID, 1, 12765.55, -7042.824, 8.455967, 100, 0, 0),
(@GUID, 2, 12758.91, -7017.739, 9.999121, 100, 0, 0);

-- Add Pathing for Broom 17213
SET @GUID := 5301212;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`= @GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID, 1, 12834.52, -7024.587, 71.51917, 100, 0, 0),
(@GUID, 2, 12825, -7024.413, 71.54849, 100, 0, 0),
(@GUID, 3, 12817.54, -7018.499, 71.55405, 100, 0, 0),
(@GUID, 4, 12816.68, -7010.056, 71.55146, 100, 0, 0),
(@GUID, 5, 12825.86, -7004.23, 71.54, 100, 0, 0), -- guessed
(@GUID, 6, 12838.24, -7010.044, 71.48843, 100, 0, 0); -- guessed via spawn
-- 0x203AE0424010CF4000003200010A8292 .go xyz 12834.52 -7024.587 71.51917

-- Add Pathing for Broom 17213 -- incomplete
SET @GUID := 5301213;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`= @GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID, 1, 12797.72, -6881.226, 34.76371, 100, 0, 0),
(@GUID, 2, 12783.29, -6895.95, 33.11, 100, 0, 0), -- guessed via spawn#
(@GUID, 3, 12776.95, -6880.32, 40.15, 100, 0, 0), -- guessed
(@GUID, 4, 12779.70, -6866.37, 40.29, 100, 0, 0), -- guessed via spawn
(@GUID, 5, 12790.83, -6864.739, 40.29502, 100, 0, 0),
(@GUID, 6, 12797.58, -6868.006, 40.29502, 100, 0, 0),
(@GUID, 7, 12790.83, -6864.739, 40.29502, 100, 0, 0),
(@GUID, 8, 12779.70, -6866.37, 40.29, 100, 0, 0), -- guessed via spawn
(@GUID, 9, 12787.28, -6874.226, 39.72917, 100, 0, 0);
-- 0x203AE0424010CF4000003200000A8292 .go xyz 12787.28 -6874.226 39.72917

-- Readd static modelid
UPDATE `creature` SET `modelid` = 22862 WHERE `id` = 18562; -- Purple Ground Rune

