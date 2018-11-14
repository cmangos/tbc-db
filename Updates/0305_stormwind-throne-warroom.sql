-- Update Stormwind Throne & War Room spawns with sniff data
-- complements https://github.com/cmangos/classic-db/commit/8da0e5fd75792e07f9e896ef8f4607ab53a436b7 
UPDATE `creature` SET `position_x` = -8439.695, `position_y` = 331.0124, `position_z` = 122.7626, `orientation` = 2.234021 WHERE `id` = 1747;
UPDATE `creature` SET `position_x` = -8439.995, `position_y` = 329.5103, `position_z` = 122.5793, `orientation` = 2.321288 WHERE `id` = 1748;
UPDATE `creature` SET `position_x` = -8437.958, `position_y` = 331.0329, `position_z` = 122.7626, `orientation` = 2.268928 WHERE `id` = 1749;
UPDATE `creature` SET `position_x` = -8442.994, `position_y` = 325.5052, `position_z` = 122.2459, `orientation` = 1.937315 WHERE `id` = 17103;
UPDATE `creature` SET `position_x` = -8402.174, `position_y` = 265.2536, `position_z` = 120.9689, `orientation` = 1.832596 WHERE `id` = 20381;
UPDATE `creature` SET `position_x` = -8405.732, `position_y` = 266.3933, `position_z` = 120.9689, `orientation` = 0.9075712 WHERE `id` = 15351 AND `guid` = 14740;
UPDATE `creature` SET `position_x` = -8394.894, `position_y` = 265.2821, `position_z` = 120.9689, `orientation` = 2.007129 WHERE `id` = 14981;
UPDATE `creature` SET `position_x` = -8435.294, `position_y` = 323.4314, `position_z` = 121.8293, `orientation` = 1.762783 WHERE `id` = 16075 AND `guid` = 106324;
UPDATE `creature` SET `position_x` = -8401.099, `position_y` = 276.6943, `position_z` = 121.0689, `orientation` = 0.6632251 WHERE `id` = 1751;
UPDATE `creature` SET `position_x` = -8423.427, `position_y` = 335.5058, `position_z` = 121.0689, `orientation` = 3.403392 WHERE `id` = 1756 AND `guid` = 51984;
UPDATE `creature` SET `position_x` = -8455.999, `position_y` = 326.1513, `position_z` = 121.0689, `orientation` = 0.296706 WHERE `id` = 1756 AND `guid` = 10513;
UPDATE `creature` SET `position_x` = -8447.894, `position_y` = 315.8847, `position_z` = 121.0689, `orientation` = 1.082104 WHERE `id` = 1756 AND `guid` = 10515;
UPDATE `creature` SET `position_x` = -8424.717, `position_y` = 322.6403, `position_z` = 121.0689, `orientation` = 2.617994 WHERE `id` = 1756 AND `guid` = 10519;
UPDATE `creature` SET `position_x` = -8444.232, `position_y` = 346.9766, `position_z` = 121.0689, `orientation` = 4.991642 WHERE `id` = 1756 AND `guid` = 10516;
UPDATE `creature` SET `position_x` = -8434.849, `position_y` = 314.4219, `position_z` = 121.0689, `orientation` = 1.850049 WHERE `id` = 1756 AND `guid` = 10517;
UPDATE `creature` SET `position_x` = -8454.351, `position_y` = 339.0192, `position_z` = 121.0689, `orientation` = 5.794493 WHERE `id` = 1756 AND `guid` = 10514;
UPDATE `creature` SET `position_x` = -8431.497, `position_y` = 345.5301, `position_z` = 121.0689, `orientation` = 4.18879 WHERE `id` = 1756 AND `guid` = 10518;
UPDATE `creature` SET `position_x` = -8385.575, `position_y` = 272.4132, `position_z` = 120.9689, `orientation` = 2.408554 WHERE `id` = 7410;
UPDATE `creature` SET `position_x` = -8390.239, `position_y` = 268.7862, `position_z` = 120.9689, `orientation` = 2.216568 WHERE `id` = 15008;
UPDATE `creature` SET `position_x` = -8385.146, `position_y` = 277.5636, `position_z` = 120.9689, `orientation` = 2.96706 WHERE `id` = 19911;
UPDATE `creature` SET `position_x` = -8394.828, `position_y` = 281.6902, `position_z` = 121.0689, `orientation` = 3.822271 WHERE `id` = 1750;

-- not found
DELETE FROM `creature` WHERE `guid` IN (10521,10522);

