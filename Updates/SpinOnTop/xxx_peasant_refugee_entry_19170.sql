-- All Peasant Refugees should not have Bloody Cleavers. 
-- Most likely the only one who should have it is the one at the soup kitchen (http://www.wowhead.com/npc=19170/peasant-refugee#comments)
UPDATE creature_template SET EquipmentTemplateId=0 WHERE entry=19170; -- Old: 55271
UPDATE creature SET equipment_id=55271 WHERE guid=68578;

-- Missing spawn
DELETE FROM `creature` WHERE `guid`=68583 AND `id`=19170;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `curhealth`, `MovementType`) VALUES 
('68583', '19170', '530', '-2074.216', '5316.652', '-37.32356', '4.228063', '300', '300', '7200', '1');

UPDATE `creature_template_addon` SET `emote`=0 WHERE entry=19170;
DELETE FROM `creature_addon` WHERE `guid` IN(68577,68578,68579,68580,68581,68584,68585);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(68577, 0, 0, 1, 16, 69, 0, NULL),
(68578, 0, 0, 1, 16, 69, 0, NULL);


-- Pathing for  Entry: 19170 'UDB FORMAT' 
UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid`=68584;
DELETE FROM `creature_movement` WHERE `id`=68584;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(68584,1,-2072.991,5283.551,-37.32356,0,0,0),
(68584,2,-2080.027,5298.799,-37.32355,0,0,0),
(68584,3,-2077.768,5323.051,-37.32356,0,0,0),
(68584,4,-2087.385,5326.358,-34.98595,0,0,0),
(68584,5,-2077.768,5323.051,-37.32356,0,0,0),
(68584,6,-2080.027,5298.799,-37.32355,0,0,0),
(68584,7,-2072.991,5283.551,-37.32356,0,0,0),
(68584,8,-2058.317,5268.787,-38.46506,0,0,0),
(68584,9,-2046.708,5257.053,-39.7482,0,0,0),
(68584,10,-2035.579,5240.765,-42.10738,0,0,0),
(68584,11,-2028.907,5218.79,-39.25506,0,0,0),
(68584,12,-2022.138,5207.945,-35.69619,0,0,0),
(68584,13,-2028.725,5218.19,-38.78204,0,0,0),
(68584,14,-2035.579,5240.765,-42.10738,0,0,0),
(68584,15,-2046.708,5257.053,-39.7482,0,0,0),
(68584,16,-2058.317,5268.787,-38.46506,0,0,0);

-- Pathing for  Entry: 19170 'UDB FORMAT' 
UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid`=68585;
DELETE FROM `creature_movement` WHERE `id`=68585;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(68585,1,-2050.592,5322.334,-40.88732,0,0,0),
(68585,2,-2060.579,5341.971,-41.31344,0,0,0),
(68585,3,-2062.226,5342.294,-40.85262,34000,0,100),
(68585,4,-2048.914,5316.468,-40.07982,0,0,0),
(68585,5,-2045.166,5305.524,-39.47564,0,0,0),
(68585,6,-2037.887,5286.919,-38.46542,0,0,0),
(68585,7,-2039.516,5279.421,-38.94726,33000,0,100),
(68585,8,-2039.528,5303.738,-39.81683,0,0,0),
(68585,9,-2048.365,5316.685,-40.18297,0,0,0),
(68585,10,-2049.547,5316.248,-39.96569,28000,0,100),
(68585,11,-2037.74,5294.831,-38.71366,0,0,0),
(68585,12,-2036.81,5285.057,-38.73196,0,0,0),
(68585,13,-2039.781,5279.237,-38.93132,33000,0,100),
(68585,14,-2038.868,5293.317,-38.61542,0,0,0),
(68585,15,-2045.668,5307.952,-39.6055,0,0,0);
