-- Altar of Sha'tar -- Shadowmoon Valley
-- Altar of Sha'tar Vindicator -- waypoints
UPDATE `creature` SET `MovementType` = 2, `spawndist` = 0 WHERE `guid` = 76801;
DELETE FROM `creature_movement` WHERE `id` = 76801;
INSERT INTO `creature_movement` (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(76801,1,-3048.58,811.772,-10.4179,0,0,0,0,0,0,0,0,0,1.2004,0,0),
(76801,2,-3048.34,818.511,-10.4845,0,0,0,0,0,0,0,0,0,1.15013,0,0),
(76801,3,-3045.79,823.876,-10.5028,0,0,0,0,0,0,0,0,0,0.711097,0,0),
(76801,4,-3037.01,827.66,-10.4129,0,0,0,0,0,0,0,0,0,0.727591,0,0),
(76801,5,-3012.69,855.806,-10.4971,0,0,0,0,0,0,0,0,0,0.518675,0,0),
(76801,6,-3007.02,859.512,-9.04558,0,0,0,0,0,0,0,0,0,0.32154,0,0),
(76801,7,-2993.32,863.408,-8.71289,0,0,0,0,0,0,0,0,0,0.00188247,0,0),
(76801,8,-2987.23,863.706,-8.63931,4000,0,0,0,0,0,0,0,0,6.24737,0,0),
(76801,9,-2996.22,863.37,-8.7418,0,0,0,0,0,0,0,0,0,3.33747,0,0),
(76801,10,-3006.27,859.969,-8.90674,0,0,0,0,0,0,0,0,0,3.68619,0,0),
(76801,11,-3013.39,856.758,-10.493,0,0,0,0,0,0,0,0,0,3.82206,0,0),
(76801,12,-3038.15,827.185,-10.4295,0,0,0,0,0,0,0,0,0,3.69247,0,0),
(76801,13,-3044.78,824.265,-10.5029,0,0,0,0,0,0,0,0,0,3.8645,0,0),
(76801,14,-3048.3,818.94,-10.4888,0,0,0,0,0,0,0,0,0,4.46995,0,0),
(76801,15,-3048.79,811.524,-10.4148,0,0,0,0,0,0,0,0,0,4.38905,0,0),
(76801,16,-3061.71,790.621,-10.1069,0,0,0,0,0,0,0,0,0,3.82907,0,0),
(76801,17,-3067.3,787.768,-10.1496,0,0,0,0,0,0,0,0,0,3.28793,0,0),
(76801,18,-3074.11,788.496,-8.57641,0,0,0,0,0,0,0,0,0,3.0154,0,0),
(76801,19,-3067.02,787.852,-10.1493,0,0,0,0,0,0,0,0,0,0.259434,0,0),
(76801,20,-3063,789.95,-10.116,0,0,0,0,0,0,0,0,0,0.829602,0,0),
(76801,21,-3058.71,794.269,-10.1038,0,0,0,0,0,0,0,0,0,0.88458,0,0);
-- Aldor Gryphon Guard
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` = 22077;
UPDATE `creature` SET `position_x` = -3048.706299, `position_y` = 799.290039, `position_z` = 44.591446, `orientation` = 0.852570 WHERE `guid` = 86779;
UPDATE `creature` SET `position_x` = -2993.764160, `position_y` = 874.644897, `position_z` = 60.877647, `orientation` = 4.146492 WHERE `guid` = 86780;

-- duplicates removed -- Altar of Sha'tar Vindicator
DELETE FROM `creature` WHERE `guid` IN (76795,76796,76799);
DELETE FROM `creature_addon` WHERE `guid` IN (76795,76796,76799);
DELETE FROM `creature_movement` WHERE `id` IN (76795,76796,76799);
DELETE FROM `game_event_creature` WHERE `guid` IN (76795,76796,76799);
DELETE FROM `game_event_creature_data` WHERE `guid` IN (76795,76796,76799);
DELETE FROM `creature_battleground` WHERE `guid` IN (76795,76796,76799);
DELETE FROM `creature_linking` WHERE `guid` IN (76795,76796,76799) OR `master_guid` IN (76795,76796,76799);

