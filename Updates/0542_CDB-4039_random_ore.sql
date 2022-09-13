DELETE FROM `pool_gameobject` WHERE `guid` IN (79840,79841,79875,79876);
DELETE FROM `gameobject` WHERE `guid` IN (79840,79841,79875,79876);
DELETE FROM `pool_pool` WHERE `pool_id` IN (6955,6962);
DELETE FROM `pool_template` WHERE `entry` IN (6955,6962);

