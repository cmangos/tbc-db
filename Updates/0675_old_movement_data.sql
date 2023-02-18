-- Remove old unused movement data that was not deleted
-- Assign some movement data which currently is not.

-- old path in steamvault (c.5450093)
DELETE FROM `creature_movement` WHERE `id` = 1550;

-- old path for (c.7215) - creature_linking
DELETE FROM `creature_movement` WHERE `id` = 7215; -- anger fortress

-- wrong movement TYPE
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 18434; -- stonewatch keep

-- old path for (c.30634,30639,30643) - creature_linking
DELETE FROM `creature_movement` WHERE `id` IN (30634,30639,30643); -- theramore

-- old path for (c.57944,57952,57967,57968) - creature_linking
DELETE FROM `creature_movement` WHERE `id` IN (57944,57952,57967,57968); -- tbc+

-- old path for (c.65501) - creature_linking
DELETE FROM `creature_movement` WHERE `id` = 65501; -- tbc+

-- old path for (c.65508) - creature_linking
DELETE FROM `creature_movement` WHERE `id` = 65508; -- tbc+

-- old path for (c.65508) - creature_linking
DELETE FROM `creature_movement` WHERE `id` = 68373; -- tbc+

-- guid missmatch (wareffort)
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 155001;
UPDATE `creature_movement` SET `id` = 155001 WHERE `id` = 155002;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 155005;
UPDATE `creature_movement` SET `id` = 155005 WHERE `id` = 155006;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 155019;
UPDATE `creature_movement` SET `id` = 155019 WHERE `id` = 155020;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 155022;
UPDATE `creature_movement` SET `id` = 155022 WHERE `id` = 155023;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 155026;
UPDATE `creature_movement` SET `id` = 155026 WHERE `id` = 155027;

